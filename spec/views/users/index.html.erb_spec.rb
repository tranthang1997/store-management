require "rails_helper"

describe "users/index" do
  let(:users) do [
      User.create!(name: "slicer", email: "a@gmail.com", password: "foobar"),
      User.create!(name: "dicer", email: "b@gmail.com", password: "foobar")
  ]
  end

  it "renders the HTML template" do
    render

    expect(rendered).to match /HTML/
  end

  it "display the all users" do
    assign(:users, Kaminari.paginate_array(users).page(1).per(2))

    render

    expect(rendered).to include "slicer"
    expect(rendered).to include "dicer"
  end
end

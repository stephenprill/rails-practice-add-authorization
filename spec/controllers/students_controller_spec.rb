require 'rails_helper'

describe StudentsController do
  describe "#index" do
    it "redirects visitor to the login page" do
      get :index
      expect(response).to redirect_to(login_path)
    end

    it "render index when logged-in student tries to visit" do
      student = Student.create!(
        name: "Rick",
        email: "Rick@aol.com",
        password: "iamrick"
      )
      session[:student_id] = student.id
      get :index
      expect(response).to render_template("index")
    end



  end
end

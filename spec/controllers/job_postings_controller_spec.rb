require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe JobPostingsController do

  # This should return the minimal set of attributes required to create a valid
  # JobPosting. As you add validations to JobPosting, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    { "title" => "some title",
      "description" => "Some description"}
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # JobPostingsController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all job_postings as @job_postings" do
      job_posting = JobPosting.create! valid_attributes
      get :index, {}, valid_session
      assigns(:job_postings).should eq([job_posting])
    end
  end

  describe "GET show" do
    it "assigns the requested job_posting as @job_posting" do
      job_posting = JobPosting.create! valid_attributes
      get :show, {:id => job_posting.to_param}, valid_session
      assigns(:job_posting).should eq(job_posting)
    end
  end

  describe "GET new" do
    it "assigns a new job_posting as @job_posting" do
      get :new, {}, valid_session
      assigns(:job_posting).should be_a_new(JobPosting)
    end
  end

  describe "GET edit" do
    it "assigns the requested job_posting as @job_posting" do
      job_posting = JobPosting.create! valid_attributes
      get :edit, {:id => job_posting.to_param}, valid_session
      assigns(:job_posting).should eq(job_posting)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new JobPosting" do
        expect {
          post :create, {:job_posting => valid_attributes}, valid_session
        }.to change(JobPosting, :count).by(1)
      end

      it "assigns a newly created job_posting as @job_posting" do
        post :create, {:job_posting => valid_attributes}, valid_session
        assigns(:job_posting).should be_a(JobPosting)
        assigns(:job_posting).should be_persisted
      end

      it "redirects to the created job_posting" do
        post :create, {:job_posting => valid_attributes}, valid_session
        response.should redirect_to(JobPosting.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved job_posting as @job_posting" do
        # Trigger the behavior that occurs when invalid params are submitted
        JobPosting.any_instance.stub(:save).and_return(false)
        post :create, {:job_posting => { "user" => "invalid value" }}, valid_session
        assigns(:job_posting).should be_a_new(JobPosting)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        JobPosting.any_instance.stub(:save).and_return(false)
        post :create, {:job_posting => { "user" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested job_posting" do
        job_posting = JobPosting.create! valid_attributes
        # Assuming there are no other job_postings in the database, this
        # specifies that the JobPosting created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        JobPosting.any_instance.should_receive(:update_attributes).with({ "user" => "" })
        put :update, {:id => job_posting.to_param, :job_posting => { "user" => "" }}, valid_session
      end

      it "assigns the requested job_posting as @job_posting" do
        job_posting = JobPosting.create! valid_attributes
        put :update, {:id => job_posting.to_param, :job_posting => valid_attributes}, valid_session
        assigns(:job_posting).should eq(job_posting)
      end

      it "redirects to the job_posting" do
        job_posting = JobPosting.create! valid_attributes
        put :update, {:id => job_posting.to_param, :job_posting => valid_attributes}, valid_session
        response.should redirect_to(job_posting)
      end
    end

    describe "with invalid params" do
      it "assigns the job_posting as @job_posting" do
        job_posting = JobPosting.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        JobPosting.any_instance.stub(:save).and_return(false)
        put :update, {:id => job_posting.to_param, :job_posting => { "user" => "invalid value" }}, valid_session
        assigns(:job_posting).should eq(job_posting)
      end

      it "re-renders the 'edit' template" do
        job_posting = JobPosting.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        JobPosting.any_instance.stub(:save).and_return(false)
        put :update, {:id => job_posting.to_param, :job_posting => { "user" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested job_posting" do
      job_posting = JobPosting.create! valid_attributes
      expect {
        delete :destroy, {:id => job_posting.to_param}, valid_session
      }.to change(JobPosting, :count).by(-1)
    end

    it "redirects to the job_postings list" do
      job_posting = JobPosting.create! valid_attributes
      delete :destroy, {:id => job_posting.to_param}, valid_session
      response.should redirect_to(job_postings_url)
    end
  end

end

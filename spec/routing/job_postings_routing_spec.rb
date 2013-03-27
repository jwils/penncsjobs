require "spec_helper"

describe JobPostingsController do
  describe "routing" do

    it "routes to #index" do
      get("/job_postings").should route_to("job_postings#index")
    end

    it "routes to #new" do
      get("/job_postings/new").should route_to("job_postings#new")
    end

    it "routes to #show" do
      get("/job_postings/1").should route_to("job_postings#show", :id => "1")
    end

    it "routes to #edit" do
      get("/job_postings/1/edit").should route_to("job_postings#edit", :id => "1")
    end

    it "routes to #create" do
      post("/job_postings").should route_to("job_postings#create")
    end

    it "routes to #update" do
      put("/job_postings/1").should route_to("job_postings#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/job_postings/1").should route_to("job_postings#destroy", :id => "1")
    end

  end
end

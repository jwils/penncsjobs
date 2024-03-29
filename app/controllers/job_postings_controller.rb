class JobPostingsController < ApplicationController
  # GET /job_postings
  # GET /job_postings.json
  def index
    @job_postings = JobPosting.page(params[:page])

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @job_postings }
    end
  end

  # GET /job_postings/1
  # GET /job_postings/1.json
  def show
    @job_posting = JobPosting.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @job_posting }
    end
  end

  # GET /job_postings/new
  # GET /job_postings/new.json
  def new
    @job_posting = JobPosting.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @job_posting }
    end
  end

  # GET /job_postings/1/edit
  def edit
    @job_posting = JobPosting.find(params[:id])
  end

  # POST /job_postings
  # POST /job_postings.json
  def create
    @company = Company.find_or_create_by_name(params[:job_posting][:company])
    params[:job_posting].delete(:company)
    @job_posting = JobPosting.new(params[:job_posting])
    @job_posting.company = @company

    respond_to do |format|
      if @job_posting.save
        if @company.description.nil?
          format.html { redirect_to edit_company_path(@company), notice: "This company doesn't currently have a description. Add one if you'd like."}
          format.json { render json: @job_posting, status: :created, location: @job_posting }
        else
          format.html { redirect_to @job_posting, notice: 'Job posting was successfully created.' }
          format.json { render json: @job_posting, status: :created, location: @job_posting }
        end
      else
        format.html { render action: "new" }
        format.json { render json: @job_posting.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /job_postings/1
  # PUT /job_postings/1.json
  def update
    @job_posting = JobPosting.find(params[:id])

    respond_to do |format|
      if @job_posting.update_attributes(params[:job_posting])
        format.html { redirect_to @job_posting, notice: 'Job posting was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @job_posting.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /job_postings/1
  # DELETE /job_postings/1.json
  def destroy
    @job_posting = JobPosting.find(params[:id])
    @job_posting.destroy

    respond_to do |format|
      format.html { redirect_to job_postings_url }
      format.json { head :no_content }
    end
  end
end

require_dependency "jober_engine/application_controller"

module JoberEngine
  class JobsController < ApplicationController
    before_action :set_job, only: [:show, :edit, :update, :destroy]

    def index
      @jobs = JoberEngine.job_class.all
    end

    def show
    end

    def new
      @job = JoberEngine.job_class.new
    end

    def edit
    end

    def create
      @job = JoberEngine.job_class.new(job_params)

      if @job.save
        redirect_to @job, notice: 'Job was successfully created.'
      else
        render :new
      end
    end

    def update
      if @job.update(job_params)
        redirect_to @job, notice: 'Job was successfully updated.'
      else
        render :edit
      end
    end

    def destroy
      @job.destroy
      redirect_to jobs_url, notice: 'Job was successfully destroyed.'
    end

    private

    def set_job
      @job = JoberEngine.job_class.find(params[:id])
    end

    def job_params
      params.require(:job).permit(
        :priority, :attempts, :handler, :last_error, :run_at, :locked_at,
        :failed_at, :locked_by, :queue
      )
    end
  end
end

class PodsController < ApplicationController
  def index
    pods = Pod.order("created_at DESC")
    render json: { status: "SUCCESS", message: "Loaded pods", data: pods }, status: :ok
  end

  def show
    pod = Pod.find(params[:id])
    render json: { status: "SUCCESS", message: "Loaded pod", data: pod }, status: :ok
  end

  def create
    pod = Pod.new(pod_params)

    if pod.save
      render json: { status: "SUCCESS", message: "Saved pod", data: pod }, status: :ok
    else
      render json: { status: "ERROR", message: "pod not saved", data: pod.errors }, status: :unprocessable_entity
    end
  end

  def update
    pod = Pod.find(params[:id])
    if pod.update_attributes(pod_params)
      render json: { status: "SUCCESS", message: "Updated pod", data: pod }, status: :ok
    else
      render json: { status: "ERROR", message: "pod not updated", data: pod.errors }, status: :unprocessable_entity
    end
  end

  def destroy
    pod = Pod.find(params[:id])
    pod.destroy
    render json: { status: "SUCCESS", message: "Deleted pod", data: pod }, status: :ok
  end

  private

  def pod_params
    params.permit(:name, :lead, :active)
  end
end

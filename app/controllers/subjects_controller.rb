class SubjectsController < ApplicationController
  def create
    subject = Subject.new(permit_params)
    if subject.save
      render json: { data: subject, message: "Subject dumped successfully"}, status: :created
    else
      render json: { error: subject.errors.full_messages }, status: :unprocessable_entity
    end
  end

  private

  def permit_params
    params.require(:subject).permit(:name, :age, :blood_group)
  end
end

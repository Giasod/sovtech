class UsersController < ApplicationController
  def approve_task(task)
    TaskApprove.call(task)
  end
end
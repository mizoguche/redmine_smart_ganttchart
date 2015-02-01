class GanttchartController < ApplicationController
  def move
    moved_days = params[:moved_days].to_i
    p User.current
    issue = Issue.find(params[:id])
    issue.start_date = issue.start_date.advance(days: moved_days)
    issue.due_date = issue.due_date.advance(days: moved_days)
    issue.save!
    render nothing: true
  end
end

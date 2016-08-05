class GanttchartController < ApplicationController
  def move
    moved_s = params[:moved_s].to_i
    moved_e = params[:moved_e].to_i
    p User.current
    issue = Issue.find(params[:id])
    issue.start_date = issue.start_date.advance(days: moved_s)
    issue.due_date = issue.due_date.advance(days: moved_e)
    issue.save!
    render nothing: true
  end
end

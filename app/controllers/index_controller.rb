class IndexController < ApplicationController
  def index
    if params.key? :title
      @codebugs = Codebug.where(" title like '%#{params[:title]}%'").order(created_at: :desc).paginate(page:params[:page],per_page:10)
    else
      @codebugs = Codebug.order(created_at: :desc).paginate(page:params[:page],per_page:10)
    end
    i = 0
    @typename = Array.new
    @codebugs.each do |f|
      if !f.bugtype_id.nil?
        @bugtype = Bugtype.find(f.bugtype_id)
        @typename[i] = @bugtype.typename
      else
        @typename[i] = ""
      end
      i = i + 1
    end
  end

  #显示问题，不显示编辑功能
  def show
      @codebug = Codebug.find(params[:id])
      render "show"
  end
end
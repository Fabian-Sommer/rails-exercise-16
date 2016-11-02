class PapersController < ApplicationController
  def index
	@papers = Paper.all
  end
  def show
	@paper = Paper.find(params[:id])
  end
  def new
	@paper = Paper.new
  end
  def edit
	@paper = Paper.find(params[:id])
  end
  def create
	@paper = Paper.new(paper_params)
	if @paper.save
		params[:authors][:author_id].each do |id|
			@author = Author.find(id)
			unless @paper.authors.include?(@author)
				@paper.authors << @author
			end
		end
		redirect_to papers_path
	else
		render 'new'
	end
  end
  def update
	@paper = Paper.find(params[:id])
	if @paper.update(paper_params)
		params[:authors][:author_id].each do |ide|
			@author = Author.find(ide)
			unless @paper.authors.include?(@author)
				@paper.authors << @author
			end
		end
		redirect_to @paper
	else
		render 'edit'
  end
  end
  def destroy
	@paper = Paper.find(params[:id])
	@paper.destroy

	redirect_to papers_path
  end
  

  private
  def paper_params
    params.require(:paper).permit(:name, :venue, :year)
  end
end

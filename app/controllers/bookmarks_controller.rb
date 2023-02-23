class BookmarksController < ApplicationController
  def new
    @bookmark = Bookmark.new
  end

  def create
    @bookmark = Bookmark.new(bookmark_params)
    @bookmark.save
    redirect_to bookmark_path(@bookmark)
  end

  def destroy
    @bookmark = Bookmark.find(params[:id])
    @bookmark.destroy
    @task.destroy
    redirect_to bookmarks_path, status: :see_other
  end

  private

  def bookmark_params
    params.require(:bookmark).permit(:comment, :movie_id, :list_id)
  end
end

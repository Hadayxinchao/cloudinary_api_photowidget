class PhotoController < ApplicationController
  def index
    @posts = Post.all.order(created_at: :DESC)
  end

  def store
    @value = Cloudinary::Uploader.upload(params[:image]) unless params[:image] == ""
    if @value
      @post = Post.new({link: @value['secure_url'], caption: params[:caption], asset: @value['public_id']+'.jpg'}) 
      if @post.save
        redirect_to root_path, notice: "Upload Image Successfully"
      else
        redirect_to root_path, notice: "Upload Fail"
      end
    end
    
  end
end

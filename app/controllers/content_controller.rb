class ContentController < ApplicationController

def index
	if params[:tag].present? and params[:tag] != "Entire"

      filter_tag = Tag.find_by(:name => params[:tag])
        
    @this_tag = Tag.find_by(:name => params[:tag])
    @content_list = @this_tag.contents  
    @content_list = @content_list.order('name asc')
      @section = params[:tag]
    else
      @content_list = Content.all.order('name asc')
      @section = "Entire"

  	end

  if params[:type].present?
    @content_list = @content_list.where(:content_type => params[:type].to_i)
  else
    @content_list = @content_list.where(:content_type => 1)
  end

	
end	

def show
	 @content = Content.find_by(:id => params[:content_id])
     # @reviews = Review.where(:item_id => @content.id).order('created_at desc')
end

def destroy
	content = Content.find_by(:id => params[:content_id])
    content.destroy
    redirect_to "/content", notice: "That stuff is toast!"
end

def new
end

def create
 	content = Content.new
    content.name = params["name"]
    content.desc = params["desc"]
    
    if !params["image_url"].empty?
	    content.image_url = params["image_url"]
	end
	if !params["article_url"].empty?
    	content.source_url = params["article_url"]
	end
    content.content_type = params["content_type"]
    content.save

    tt = Tagging.new
    tt.content_id = content.id
    s = params["tag"]
    tag = Tag.find_by(id: s.to_i)
    tt.tag_id = tag.id
    tt.save
    redirect_to "/content"

end

def edit
	 @content = Content.find_by(:id => params[:content_id])
end

def update
	   content = Content.find_by(:id => params[:content_id])
   
    content.name = params["name"]
    content.desc = params["desc"]
    puts content.desc
    
    if !params["image_url"].empty?
    	content.image_url = params["image_url"]
	end

	if !params["article_url"].empty?
    	content.source_url = params["article_url"]
    end
    
    content.content_type = params["content_type"]
    
    #FIX TAGGING 
    if content.tags.first.name != params["tag"]
     puts "I AM IN"
     puts "OLD TAG"+ content.tags.first.name
     puts "NEW TAG"+ params["tag"]
      tagging = content.taggings.first

      t = Tag.find_by(:id => params["tag"])
      tagging.tag_id = t.id
      tagging.save
    end
    content.save

    redirect_to "/content"
end

end
class ForumLinksController < ApplicationController
  # GET /forum_links
  # GET /forum_links.json
  def index
    @forum_links = ForumLink.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @forum_links }
    end
  end

  # GET /forum_links/1
  # GET /forum_links/1.json
  def show
    @forum_link = ForumLink.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @forum_link }
    end
  end

  # GET /forum_links/new
  # GET /forum_links/new.json
  def new
    @forum_link = ForumLink.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @forum_link }
    end
  end

  # GET /forum_links/1/edit
  def edit
    @forum_link = ForumLink.find(params[:id])
  end

  # POST /forum_links
  # POST /forum_links.json
  def create
    @forum_link = ForumLink.new(params[:forum_link])

    respond_to do |format|
      if @forum_link.save
        format.html { redirect_to @forum_link, notice: 'Forum link was successfully created.' }
        format.json { render json: @forum_link, status: :created, location: @forum_link }
      else
        format.html { render action: "new" }
        format.json { render json: @forum_link.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /forum_links/1
  # PUT /forum_links/1.json
  def update
    @forum_link = ForumLink.find(params[:id])

    respond_to do |format|
      if @forum_link.update_attributes(params[:forum_link])
        format.html { redirect_to @forum_link, notice: 'Forum link was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @forum_link.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /forum_links/1
  # DELETE /forum_links/1.json
  def destroy
    @forum_link = ForumLink.find(params[:id])
    @forum_link.destroy

    respond_to do |format|
      format.html { redirect_to forum_links_url }
      format.json { head :no_content }
    end
  end
end

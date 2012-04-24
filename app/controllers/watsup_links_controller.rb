class WatsupLinksController < ApplicationController
  # GET /watsup_links
  # GET /watsup_links.json
  def index
    @watsup_links = WatsupLink.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @watsup_links }
    end
  end

  # GET /watsup_links/1
  # GET /watsup_links/1.json
  def show
    @watsup_link = WatsupLink.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @watsup_link }
    end
  end

  # GET /watsup_links/new
  # GET /watsup_links/new.json
  def new
    @watsup_link = WatsupLink.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @watsup_link }
    end
  end

  # GET /watsup_links/1/edit
  def edit
    @watsup_link = WatsupLink.find(params[:id])
  end

  # POST /watsup_links
  # POST /watsup_links.json
  def create
    @watsup_link = WatsupLink.new(params[:watsup_link])

    respond_to do |format|
      if @watsup_link.save
        format.html { redirect_to @watsup_link, notice: 'Watsup link was successfully created.' }
        format.json { render json: @watsup_link, status: :created, location: @watsup_link }
      else
        format.html { render action: "new" }
        format.json { render json: @watsup_link.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /watsup_links/1
  # PUT /watsup_links/1.json
  def update
    @watsup_link = WatsupLink.find(params[:id])

    respond_to do |format|
      if @watsup_link.update_attributes(params[:watsup_link])
        format.html { redirect_to @watsup_link, notice: 'Watsup link was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @watsup_link.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /watsup_links/1
  # DELETE /watsup_links/1.json
  def destroy
    @watsup_link = WatsupLink.find(params[:id])
    @watsup_link.destroy

    respond_to do |format|
      format.html { redirect_to watsup_links_url }
      format.json { head :no_content }
    end
  end
end

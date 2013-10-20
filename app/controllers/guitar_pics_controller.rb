class GuitarPicsController < ApplicationController
  # GET /guitar_pics
  # GET /guitar_pics.xml
  def index
    @guitar_pics = GuitarPic.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @guitar_pics }
    end
  end

  def publiclist
    
    @guitarpics = GuitarPic.paginate :page => params[:page], :per_page => 4


    respond_to do |format|
      format.html # index.html.erb
    end
  end
  
  # GET /guitar_pics/1
  # GET /guitar_pics/1.xml
  def show
    @guitar_pic = GuitarPic.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @guitar_pic }
    end
  end

  # GET /guitar_pics/new
  # GET /guitar_pics/new.xml
  def new
    @guitar_pic = GuitarPic.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @guitar_pic }
    end
  end

  # GET /guitar_pics/1/edit
  def edit
    @guitar_pic = GuitarPic.find(params[:id])
  end

  # POST /guitar_pics
  # POST /guitar_pics.xml
  def create
    @guitar_pic = GuitarPic.new(params[:guitar_pic])

    respond_to do |format|
      if @guitar_pic.save
        flash[:notice] = 'GuitarPic was successfully created.'
        format.html { redirect_to(@guitar_pic) }
        format.xml  { render :xml => @guitar_pic, :status => :created, :location => @guitar_pic }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @guitar_pic.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /guitar_pics/1
  # PUT /guitar_pics/1.xml
  def update
    @guitar_pic = GuitarPic.find(params[:id])

    respond_to do |format|
      if @guitar_pic.update_attributes(params[:guitar_pic])
        flash[:notice] = 'GuitarPic was successfully updated.'
        format.html { redirect_to(@guitar_pic) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @guitar_pic.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /guitar_pics/1
  # DELETE /guitar_pics/1.xml
  def destroy
    @guitar_pic = GuitarPic.find(params[:id])
    @guitar_pic.destroy

    respond_to do |format|
      format.html { redirect_to(guitar_pics_url) }
      format.xml  { head :ok }
    end
  end
end

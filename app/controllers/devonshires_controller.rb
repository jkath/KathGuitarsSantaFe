class DevonshiresController < ApplicationController
  before_filter :login_required, :except => ['publiclist']
  
  # GET /devonshires
  # GET /devonshires.xml
  def index
    @devonshires = Devonshire.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @devonshires }
    end
  end

  def publiclist
    
    @devonshires = Devonshire.paginate :page => params[:page], :per_page => 4


    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @devonshires }
    end
  end

  # GET /devonshires/1
  # GET /devonshires/1.xml
  def show
    @devonshire = Devonshire.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @devonshire }
    end
  end

  # GET /devonshires/new
  # GET /devonshires/new.xml
  def new
    @devonshire = Devonshire.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @devonshire }
    end
  end

  # GET /devonshires/1/edit
  def edit
    @devonshire = Devonshire.find(params[:id])
  end

  # POST /devonshires
  # POST /devonshires.xml
  def create
    @devonshire = Devonshire.new(params[:devonshire])

    respond_to do |format|
      if @devonshire.save
        flash[:notice] = 'Devonshire was successfully created.'
        format.html { redirect_to :action => 'index' }
      else
        format.html { render :action => "new" }
      end
    end
  end

  # PUT /devonshires/1
  # PUT /devonshires/1.xml
  def update
    @devonshire = Devonshire.find(params[:id])

    respond_to do |format|
      if @devonshire.update_attributes(params[:devonshire])
        flash[:notice] = 'Devonshire was successfully updated.'
        format.html { redirect_to :action => 'index' }
      else
        format.html { render :action => "edit" }
      end
    end
  end

  # DELETE /devonshires/1
  # DELETE /devonshires/1.xml
  def destroy
    @devonshire = Devonshire.find(params[:id])
    @devonshire.destroy

    respond_to do |format|
      format.html { redirect_to(devonshires_url) }
      format.xml  { head :ok }
    end
  end
end

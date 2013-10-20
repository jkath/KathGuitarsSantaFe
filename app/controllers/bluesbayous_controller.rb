class BluesbayousController < ApplicationController
  # GET /bluesbayous
  # GET /bluesbayous.xml
  def index
    @bluesbayous = Bluesbayou.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @bluesbayous }
    end
  end

  # GET /bluesbayous/1
  # GET /bluesbayous/1.xml
  def show
    #@bluesbayou = Bluesbayou.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @bluesbayou }
    end
  end

  # GET /bluesbayous/new
  # GET /bluesbayous/new.xml
  def new
    @bluesbayou = Bluesbayou.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @bluesbayou }
    end
  end

  # GET /bluesbayous/1/edit
  def edit
    @bluesbayou = Bluesbayou.find(params[:id])
  end

  # POST /bluesbayous
  # POST /bluesbayous.xml
  def create
    @bluesbayou = Bluesbayou.new(params[:bluesbayou])

    respond_to do |format|
      if @bluesbayou.save
        flash[:notice] = 'Bluesbayou was successfully created.'
        format.html { redirect_to(@bluesbayou) }
        format.xml  { render :xml => @bluesbayou, :status => :created, :location => @bluesbayou }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @bluesbayou.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /bluesbayous/1
  # PUT /bluesbayous/1.xml
  def update
    @bluesbayou = Bluesbayou.find(params[:id])

    respond_to do |format|
      if @bluesbayou.update_attributes(params[:bluesbayou])
        flash[:notice] = 'Bluesbayou was successfully updated.'
        format.html { redirect_to(@bluesbayou) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @bluesbayou.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /bluesbayous/1
  # DELETE /bluesbayous/1.xml
  def destroy
    @bluesbayou = Bluesbayou.find(params[:id])
    @bluesbayou.destroy

    respond_to do |format|
      format.html { redirect_to(bluesbayous_url) }
      format.xml  { head :ok }
    end
  end
end

class ProjectPicsController < ApplicationController
  # GET /project_pics
  # GET /project_pics.xml
  
  layout 'nomenu'
  
  def index
    
    session[:project_id] = params[:project_id]
    @project_pics = ProjectPic.find :all, :conditions => ["project_id = ?", session[:project_id]]
    
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @project_pics }
    end
  end

  def publiclist
    
    @projectpics = ProjectPic.paginate :page => params[:page], :per_page => 4


    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @devonshires }
    end
  end

  # GET /project_pics/1
  # GET /project_pics/1.xml
  def show
    @project_pic = ProjectPic.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @project_pic }
    end
  end

  # GET /project_pics/new
  # GET /project_pics/new.xml
  def new
    @project_pic = ProjectPic.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @project_pic }
    end
  end

  # GET /project_pics/1/edit
  def edit
    @project_pic = ProjectPic.find(params[:id])
  end

  # POST /project_pics
  # POST /project_pics.xml
  def create
    @project_pic = ProjectPic.new(params[:project_pic])

    respond_to do |format|
      if @project_pic.save
        flash[:notice] = 'ProjectPic was successfully created.'
        format.html { redirect_to :controller => 'projects', :action => "show", :id => @project_pic.project_id }
        format.xml  { render :xml => @project_pic, :status => :created, :location => @project_pic }
      else
        format.html { render :controller => 'projects', :action => "show", :id => @project_pic.project_id }
        format.xml  { render :xml => @project_pic.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /project_pics/1
  # PUT /project_pics/1.xml
  def update
    @project_pic = ProjectPic.find(params[:id])

    respond_to do |format|
      if @project_pic.update_attributes(params[:project_pic])
        flash[:notice] = 'ProjectPic was successfully updated.'
        format.html { redirect_to :controller => 'projects', :action => "show", :id => @project_pic.project_id }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @project_pic.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /project_pics/1
  # DELETE /project_pics/1.xml
  def destroy
    @project_pic = ProjectPic.find(params[:id])
    @project_pic.destroy

    respond_to do |format|
      format.html { redirect_to :controller => 'projects', :action => "show", :id => @project_pic.project_id }
      format.xml  { head :ok }
    end
  end
end

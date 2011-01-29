class AllocationsController < ApplicationController
  # GET /allocations
  # GET /allocations.xml
  def index
    @allocations = Allocation.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @allocations }
    end
  end

  # GET /allocations/1
  # GET /allocations/1.xml
  def show
    @allocation = Allocation.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @allocation }
    end
  end

  # GET /allocations/new
  # GET /allocations/new.xml
  def new
    @allocation = Allocation.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @allocation }
    end
  end

  # GET /allocations/1/edit
  def edit
    @allocation = Allocation.find(params[:id])
  end

  # POST /allocations
  # POST /allocations.xml
  def create
    @allocation = Allocation.new(params[:allocation])

    respond_to do |format|
      if @allocation.save
        format.html { redirect_to(@allocation, :notice => 'Allocation was successfully created.') }
        format.xml  { render :xml => @allocation, :status => :created, :location => @allocation }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @allocation.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /allocations/1
  # PUT /allocations/1.xml
  def update
    @allocation = Allocation.find(params[:id])

    respond_to do |format|
      if @allocation.update_attributes(params[:allocation])
        format.html { redirect_to(@allocation, :notice => 'Allocation was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @allocation.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /allocations/1
  # DELETE /allocations/1.xml
  def destroy
    @allocation = Allocation.find(params[:id])
    @allocation.destroy

    respond_to do |format|
      format.html { redirect_to(allocations_url) }
      format.xml  { head :ok }
    end
  end
end

class VlansController < ApplicationController
  # GET /vlans
  # GET /vlans.xml
  def index
    @vlans = Vlan.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @vlans }
    end
  end

  # GET /vlans/1
  # GET /vlans/1.xml
  def show
    @vlan = Vlan.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @vlan }
    end
  end

  # GET /vlans/new
  # GET /vlans/new.xml
  def new
    @vlan = Vlan.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @vlan }
    end
  end

  # GET /vlans/1/edit
  def edit
    @vlan = Vlan.find(params[:id])
  end

  # POST /vlans
  # POST /vlans.xml
  def create
    @vlan = Vlan.new(params[:vlan])

    respond_to do |format|
      if @vlan.save
        format.html { redirect_to(@vlan, :notice => 'Vlan was successfully created.') }
        format.xml  { render :xml => @vlan, :status => :created, :location => @vlan }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @vlan.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /vlans/1
  # PUT /vlans/1.xml
  def update
    @vlan = Vlan.find(params[:id])

    respond_to do |format|
      if @vlan.update_attributes(params[:vlan])
        format.html { redirect_to(@vlan, :notice => 'Vlan was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @vlan.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /vlans/1
  # DELETE /vlans/1.xml
  def destroy
    @vlan = Vlan.find(params[:id])
    @vlan.destroy

    respond_to do |format|
      format.html { redirect_to(vlans_url) }
      format.xml  { head :ok }
    end
  end
end

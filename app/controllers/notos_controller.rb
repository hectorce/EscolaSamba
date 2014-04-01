class NotosController < ApplicationController
  # GET /notos
  # GET /notos.json
  def index
    @notos = Noto.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @notos }
    end
  end

  # GET /notos/1
  # GET /notos/1.json
  def show
    @noto = Noto.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @noto }
    end
  end

  # GET /notos/new
  # GET /notos/new.json
  def new
    @noto = Noto.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @noto }
    end
  end

  # GET /notos/1/edit
  def edit
    @noto = Noto.find(params[:id])
  end

  # POST /notos
  # POST /notos.json
  def create
    @noto = Noto.new(params[:noto])

    respond_to do |format|
      if @noto.save
        format.html { redirect_to @noto, :notice => 'Noto was successfully created.' }
        format.json { render :json => @noto, :status => :created, :location => @noto }
      else
        format.html { render :action => "new" }
        format.json { render :json => @noto.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /notos/1
  # PUT /notos/1.json
  def update
    @noto = Noto.find(params[:id])

    respond_to do |format|
      if @noto.update_attributes(params[:noto])
        format.html { redirect_to @noto, :notice => 'Noto was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @noto.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /notos/1
  # DELETE /notos/1.json
  def destroy
    @noto = Noto.find(params[:id])
    @noto.destroy

    respond_to do |format|
      format.html { redirect_to notos_url }
      format.json { head :no_content }
    end
  end
end

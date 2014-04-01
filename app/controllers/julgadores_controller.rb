class JulgadoresController < ApplicationController
  # GET /julgadores
  # GET /julgadores.json
  def index
    @julgadores = Julgadore.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @julgadores }
    end
  end

  # GET /julgadores/1
  # GET /julgadores/1.json
  def show
    @julgadore = Julgadore.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @julgadore }
    end
  end

  # GET /julgadores/new
  # GET /julgadores/new.json
  def new
    @julgadore = Julgadore.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @julgadore }
    end
  end

  # GET /julgadores/1/edit
  def edit
    @julgadore = Julgadore.find(params[:id])
  end

  # POST /julgadores
  # POST /julgadores.json
  def create
    @julgadore = Julgadore.new(params[:julgadore])

    respond_to do |format|
      if @julgadore.save
        format.html { redirect_to @julgadore, :notice => 'Julgadore was successfully created.' }
        format.json { render :json => @julgadore, :status => :created, :location => @julgadore }
      else
        format.html { render :action => "new" }
        format.json { render :json => @julgadore.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /julgadores/1
  # PUT /julgadores/1.json
  def update
    @julgadore = Julgadore.find(params[:id])

    respond_to do |format|
      if @julgadore.update_attributes(params[:julgadore])
        format.html { redirect_to @julgadore, :notice => 'Julgadore was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @julgadore.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /julgadores/1
  # DELETE /julgadores/1.json
  def destroy
    @julgadore = Julgadore.find(params[:id])
    @julgadore.destroy

    respond_to do |format|
      format.html { redirect_to julgadores_url }
      format.json { head :no_content }
    end
  end
end

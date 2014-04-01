class QuesitosController < ApplicationController
  # GET /quesitos
  # GET /quesitos.json
  def index
    @quesitos = Quesito.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @quesitos }
    end
  end

  # GET /quesitos/1
  # GET /quesitos/1.json
  def show
    @quesito = Quesito.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @quesito }
    end
  end

  # GET /quesitos/new
  # GET /quesitos/new.json
  def new
    @quesito = Quesito.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @quesito }
    end
  end

  # GET /quesitos/1/edit
  def edit
    @quesito = Quesito.find(params[:id])
  end

  # POST /quesitos
  # POST /quesitos.json
  def create
    @quesito = Quesito.new(params[:quesito])

    respond_to do |format|
      if @quesito.save
        format.html { redirect_to @quesito, :notice => 'Quesito was successfully created.' }
        format.json { render :json => @quesito, :status => :created, :location => @quesito }
      else
        format.html { render :action => "new" }
        format.json { render :json => @quesito.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /quesitos/1
  # PUT /quesitos/1.json
  def update
    @quesito = Quesito.find(params[:id])

    respond_to do |format|
      if @quesito.update_attributes(params[:quesito])
        format.html { redirect_to @quesito, :notice => 'Quesito was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @quesito.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /quesitos/1
  # DELETE /quesitos/1.json
  def destroy
    @quesito = Quesito.find(params[:id])
    @quesito.destroy

    respond_to do |format|
      format.html { redirect_to quesitos_url }
      format.json { head :no_content }
    end
  end
end

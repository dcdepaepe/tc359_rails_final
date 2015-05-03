class BandCollectionsController < ApplicationController
  before_action :set_band_collection, only: [:show, :edit, :update, :destroy]
  before_action :only_allow_signed_in_users, except: [:index, :show]

  # GET /band_collections
  # GET /band_collections.json
  def index
    @band_collections = BandCollection.all
  end

  # GET /band_collections/1
  # GET /band_collections/1.json
  def show
  end

  # GET /band_collections/new
  def new
    @band_collection = BandCollection.new
  end

  # GET /band_collections/1/edit
  def edit
  end

  # POST /band_collections
  # POST /band_collections.json
  def create
    @band_collection = BandCollection.new(band_collection_params)

    respond_to do |format|
      if @band_collection.save
        format.html { redirect_to @band_collection, notice: 'Band collection was successfully created.' }
        format.json { render :show, status: :created, location: @band_collection }
      else
        format.html { render :new }
        format.json { render json: @band_collection.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /band_collections/1
  # PATCH/PUT /band_collections/1.json
  def update
    respond_to do |format|
      if @band_collection.update(band_collection_params)
        format.html { redirect_to @band_collection, notice: 'Band collection was successfully updated.' }
        format.json { render :show, status: :ok, location: @band_collection }
      else
        format.html { render :edit }
        format.json { render json: @band_collection.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /band_collections/1
  # DELETE /band_collections/1.json
  def destroy
    @band_collection.destroy
    respond_to do |format|
      format.html { redirect_to band_collections_url, notice: 'Band collection was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_band_collection
      @band_collection = BandCollection.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def band_collection_params
      params.require(:band_collection).permit(:band_name, :number_of_albums, :seen_in_concert)
    end
end

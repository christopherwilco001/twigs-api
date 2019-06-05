class TwigsController < OpenReadController
  before_action :set_twig, only: [:show, :update, :destroy]

  # GET /twigs
  def index
    @twigs = current_user.twigs.all

    render json: @twigs
  end

  # GET /twigs/1
  def show
    render json: @twig
  end

  # POST /twigs
  def create
    @twig = current_user.twigs.build(twig_params)

    if @twig.save
      render json: @twig, status: :created, location: @twig
    else
      render json: @twig.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /twigs/1
  def update
    if @twig.update(twig_params)
      render json: @twig
    else
      render json: @twig.errors, status: :unprocessable_entity
    end
  end

  # DELETE /twigs/1
  def destroy
    @twig.destroy
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_twig
    @twig = current_user.twigs.find(params[:user_id])
  end

  # Only allow a trusted parameter "white list" through.
  def twig_params
    params.require(:twig).permit(:name, :flex, :shoots, :pattern)
  end
end

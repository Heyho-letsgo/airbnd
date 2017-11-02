class ReservationsController < Application Controller


  def create
  @reservation = current_user.reservations.create(reservation_params)       
  redirect_to @reservation.room, notice: " Votre réservation a été acceptée ! " 
 
  end


private

  def reservation_params
    params.require(:reservation).permit(:start_date, :end_date, :price, :total, :room_id, :user_id)
  end



end

class RoomsController < ApplicationController
    
    
    #Avant action appelle set_room, juste pour les appels de show,edit, update set
    before_action:set_room, only:[:show, :edit, :update]
    before_action:authenticate_user!, except:[:show]
    
    
    def index # a pour fonction de récupérer toutes les annonces d'un utilisateur.
        @rooms = current_user.rooms
    end
    
    def new # prepare et ouvre le formulaire rooms/new
        @room = current_user.rooms.build
    end
    
    def create
 
      @room = current_user.rooms.build(room_params)
 
      if @room.save
 
            redirect_to @room, notice:"Votre annonce a été ajouté avec succès" 
 
      else
 
           render :new
 
      end
      
    end
 
 
    
    def show
        
    end
    
    def edit
        
    end
    
    def update
        if
            @room.update(room_params)
            redirect_to @room, notice:"Votre annonce a été modifiée avec 
            succès :-)"
        else
            render:edit
        end
    end


private

    def set_room
        @room = Room.find(params[:id])
    end
    
    def room_params
       params.require(:room).permit(:home_type, :room_type, :accommodate,
       :bed_room, :bath_room, :listing_name, :sumary, :adress, :is_wifi, 
       :is_tv, :is_closet, :is_shampoo, :is_breakfast, :is_heating, 
       :is_air, :is_kitchen ,:price, :is_active)
      
    end
end




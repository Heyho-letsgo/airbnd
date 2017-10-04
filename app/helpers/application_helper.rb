module ApplicationHelper


    def avatar_url(user)
            user.avatar.url
    end
    
    
    def origine_lien
        
     url = request.original_url
           
     if url.include? "c9" 
        "C9"
     else 
        "Heroku"
     end
     
     end
end

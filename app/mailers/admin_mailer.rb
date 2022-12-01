class AdminMailer < ApplicationMailer
    default from: 'no-reply@sammycat.fr'

    def order_admin_email(admin)
        #on récupère l'instance admin pour ensuite pouvoir la passer à la view en @admin
        @admin = admin
        
        #on définit une variable @url qu'on utilisera dans la view d’e-mail
        @url  = 'https://sammy-cat.fly.dev/' 

        # c'est cet appel à mail() qui permet d'envoyer l’e-mail en définissant destinataire et sujet.
        mail(to: @admin, subject: "Un utilisateur a passé commande!") 
    end
end
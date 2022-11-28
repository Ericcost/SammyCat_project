class UserMailer < ApplicationMailer
    default from: 'no-reply@sammycat.fr'

    def order_email(user)
    #on récupère l'instance user pour ensuite pouvoir la passer à la view en @user
    @user = user 

    #on définit une variable @url qu'on utilisera dans la view d’e-mail
    @url  = 'https://sammy-cat.fly.dev/' 

    # c'est cet appel à mail() qui permet d'envoyer l’e-mail en définissant destinataire et sujet.
    mail(to: @user, subject: "Merci d'avoir commandé chez nous !") 
    end
end

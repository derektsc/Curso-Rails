module ApplicationHelper
    def date_br(date_us)
        date_us.strftime("%d/%m/%Y")
    end
    
    def name_application
        "Crypto Wallet App" 
    end
    
    def ambiente_rails
        if Rails.env.development?
            "desenvolvimento"
        elsif Rails.env.production?
            "produção"
        else
            "Teste"
        end
    end

end

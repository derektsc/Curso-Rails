module ApplicationHelper
    def date_br(date_us)
        date_us.strftime("%d/%m/%Y")
    end
    
    def name_application
        "Crypto Wallet App" 
    end
end

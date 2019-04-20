class Prospeccao #classe de cadastro

    include HTTParty

    base_uri ENVIRONMENT["server"]
    format :json
    headers 'Content-Type' => 'application/json'
          

#=====================================================================================================
   # Cadastrar prospecção
#=====================================================================================================

    def cadastrar_prospeccao(body)
        #binding.pry
    self.class.post('/prospeccao', :body => body.to_json)
        
    end

end


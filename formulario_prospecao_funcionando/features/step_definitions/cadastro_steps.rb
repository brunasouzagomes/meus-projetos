Dado("que quero cadastrar uma prospecção") do

end

Quando("preencho todos os campos obrigatórios") do
  preenche = Cadastro.preencher_campos
  #binding.pry
  @response = Prospeccao.new.cadastrar_prospeccao(preenche)                                                                               
end
  
Então("exibe mensagem de prospecção salva com sucesso.") do
  puts @response.body 
  expect(@response.code).to eq 200
   
end


 
  
  
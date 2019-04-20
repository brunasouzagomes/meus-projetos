class Cadastro
    
    def self.preencher_campos
        endpoint = File.read('fixtures/templates/salvar.json')
        campos = JSON.parse(endpoint)
        campos['cnpj'] = Faker::CNPJ.numeric
        campos['codigoCnae'] = Faker::Number.number(10)
        campos['dadosTecnicos']['integradora'] = "teste3"
        campos['dadosTecnicos']['participaDeQuaisMarketplace'] = "teste2"
        campos['dadosTecnicos']['plataformaErp'] = "testes"
        #binding.pry
        campos['dadosTecnicos']['principalDepartamento']['id'] =  Faker::Number.number(1)
        campos['dadosTecnicos']['principalDepartamento']['nome'] = "Eletronicos"
        campos['site'] = Faker::Internet.url
        campos['dataFundacao'] = "2018-09-20"
        campos['endereco']['bairro'] = "São Caetano do Sul"
        campos['endereco']['cep'] = Faker::Address.postcode
        campos['endereco']['cidade'] = Faker::Address.city
        campos['endereco']['complemento'] = Faker::Address.secondary_address
        campos['endereco']['estado'] = Faker::Address.state
        campos['endereco']['logradouro'] = Faker::Address.street_name
        campos['endereco']['numero'] = Faker::Address.building_number
        campos['endereco']['pais'] = Faker::Address.time_zone
        campos['financeiro']['aceiteContrato'] = "true"
        campos['financeiro']['dadosBancarios']['agencia'] = Faker::Bank.account_number(5)
        campos['financeiro']['dadosBancarios']['banco'] = "BANCO ABC BRASIL S.A."
        campos['financeiro']['dadosBancarios']['conta'] = Faker::Bank.account_number
        campos['financeiro']['dadosBancarios']['digitoAgencia'] = Faker::Bank.account_number(2)
        campos['financeiro']['dadosBancarios']['digitoConta'] = Faker::Bank.account_number(2)
        campos['financeiro']['faturamentoAnual']['ate'] = "10000"
        campos['financeiro']['faturamentoAnual']['de'] = "1000"
        campos['naturezaJuridica']['codigo'] = Faker::Number.number(1)
        campos['naturezaJuridica']['nome'] = Faker::Company.name
        campos['nomeFantasia'] = Faker::Name.name
        campos['nomeResponsavelLegal'] = "teste"
        campos['emailContato'] = "qatcs01@gmail.com"
        campos['nomeContato'] = Faker::Name.name
        campos['telefoneCelularContato'] = Faker::PhoneNumber.cell_phone
        campos['telefoneFixoContato'] = Faker::PhoneNumber.phone_number
        campos['tipoContato'] = "COMERCIAL"
        campos['razaoSocial'] = Faker::Company.name
    
#Os #campos de Responsavel legal só são obrigatórios quando o sócio for PJ.        
        campos['responsavelLegal']['data'] = ""
        ##campos['responsavelLegal']['documento'] = ""
        ##campos['responsavelLegal']['nome'] = ""
        ##campos['responsavelLegal']['participacao'] = ""
        #campos['responsavelLegal']['tipo'] = "F"
        campos['cidadeNascimento'] = Faker::Address.city
        campos['data'] = "23-04-1996"
        campos['documento'] = Faker::CPF.numeric
        campos['estadoNascimento'] = Faker::Address.state
        campos['inscricaoEstadual'] = Faker::Number.number(13)
        campos['nacionalidade'] = "teste"
        campos['nome'] = Faker::Name.name
        campos['nomeMae'] = Faker::Name.name
        campos['participacao'] = Faker::Number.decimal(1, 2)
        campos['tipo']= "F"

        campos  
    end
end
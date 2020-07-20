require 'pry'

# class Startup
#     attr_accessor :name, :domain, :contract
#     attr_reader :founder
#     @@all = []
#     def initialize(name, founder, domain)
#         @name = name
#         @founder = founder
#         @domain = domain
#         @@all <<  self
#     end
#     def pivot(domain, name)
#         self.domain = domain
#         self.name = name
#     end
#     def self.all
#         @@all
#     end
#     def self.find_by_founder(founder)
#         self.all.find {|index| index.founder == founder}
#     end
#     def self.domains
#         array = []
#         self.all.select {|index| array << index.domain}   #Refactor
#         array
#     end
#     def sign_contract(vc_name, investment, type)
#         contract = FundingRound.new(self.name, vc_name)
#         contract.investment = investment
#         contract.type = type
#         @contract = contract
#     end
# end







class Startup
    attr_reader :founder, :domain 
    attr_accessor :name

@@all = []

    def initialize(name, founder, domain)
        @name = name
        @founder = founder
        @domain = domain

        @@all << self
    end

    def pivot(name, domain)
        @domain = domain
        @name = name
    end

    def self.all
        @@all
    end

    def self.find_by_founder(founders_name)
        self.all.find {|startup| startup.founder == founders_name}
    end

    def self.domains(domain)
        # binding.pry
        self.all.find_all { |startup| startup.domain == domain }
    end

    def sign_contract(vc,type_investment,amount_investment)
        contract = FundingRound.new(self.name, vc)
        contract.investment = amount_investment
        contract.type = type_investment
        @contract = contract
        # binding.pry
    end

    def num_funding_rounds
        num_of_rounds = FundingRound.all.size
        @num_of_rounds = num_of_rounds
    end
    
    # private
    # def domain=(domain)
    #     @domain = domain
    # end

    # def name=(name)
    #     @name = name
    # end

end

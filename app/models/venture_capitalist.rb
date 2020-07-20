require 'pry'

# class VentureCapitalist
#     attr_accessor :vc_name, :total_worth, :contract
#         @@all = []

#         def initialize(vc_name, total_worth)
#             @vc_name = vc_name
#             @total_worth = total_worth
#             @@all << self
#         end
#         def self.all
#             @@all
#         end
#         def self.tres_commas_club
#             array = []
#             self.all.each do |i|
#                 if i.total_worth > 1000000000
#                     array << i.vc_name
#                 end
#             end
#             array
#         end
#     end











class VentureCapitalist

    attr_reader :name, :total_worth

@@all = []

    def initialize(name, total_worth)
        @name = name
        @total_worth = total_worth
        
        @@all << self
    end

    def self.all
        @@all
    end

    def self.tres_commas_club
        self.all.find_all do |vc|
            if vc.total_worth > 1000000000
                vc
            end
        end
    end

end

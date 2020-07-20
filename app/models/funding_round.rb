require 'pry'

# class FundingRound
#     attr_reader :startup_name, :vc_name
#     attr_accessor :type, :investment
#     @@all = []

#     def initialize(startup_name, vc_name)
#         @startup_name = startup_name
#         @vc_name = vc_name 
#         @@all << self
#     end
#     def type
#         @type
#     end
#     def investment
#         if @investment > 0
#             @investment.to_f
#         else
#             return false
#         end
#     end
#     def self.all
#         @@all
#     end
# end













class FundingRound
    attr_reader :startup_name, :vc_name
    attr_accessor :type, :investment

@@all = []

    def initialize(startup_name, vc_name)
        @startup_name = startup_name
        @vc_name = vc_name
        @@all << self
    end

    def type
        @type
    end

    def self.all
        @@all
    end

    def investment
        if @investment > 0
            @investment.to_f
        else
            false
        end
    end


end

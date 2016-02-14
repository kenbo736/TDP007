#!/usr/bin/ruby
#-*- coding:utf-8 -*-

@bilmarke = {"BMW" => 5, "Citroen" => 4, "Fiat" => 3, "Ford" => 4,
"Mercedes" => 5, "Nissan" => 4, "Opel" => 4, "Volvo" => 5}

@postnummer = {"58937" => 9, "58726" => 5, "58647" => 3}

@korkort = {1..0 => 3, 2..3 => 4, 4..15 => 4.5, 16..99 => 5}

@kon = {"M" => 1, "F" => 1}

@alder = {18..20 => 2.5, 21..23 => 3, 24..26 => 3.5, 27..29 => 4, 30..39 => 4.5,
40..64 => 5, 65..70 => 4, 71..99 => 3}

#add additional rules here
def rules()
  if (@gender=="M" && @yearsDriven<3)
    @points =  @points*0.9
  end

  if (@postNumber.start_with?("58") && @carType=="Volvo")
    @points =  @points*1.2
  end
end

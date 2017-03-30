require "pry"

def nyc_pigeon_organizer(data)
  # write your code here!
names = []
statsArray = []
newHash = {}


    data.each do |stats, substats|
        statsArray.push(stats)
        substats.each do |type, value|
            names.push(value)
            names = names.flatten.uniq
            # newHash[value] = type
        end
    end

    names.each do |name|
        newHash[name] = {}
        statsArray.each do |thing|
            if newHash[name] == {}
                newHash[name] = {thing => []}
            else
                # binding.pry
                newHash[name][thing] = []
            end
            # binding.pry

        end
    end

    names.each do |name|
        data.each do |x|
            x[1].each do |k, v|
                level = x[0].to_sym
                if v.include? name
                    newHash[name][level] << k.to_s
                end

            end
        end
    end

newHash

end

# nyc_pigeon_organizer(data)

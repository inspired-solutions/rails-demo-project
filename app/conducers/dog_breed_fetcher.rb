class DogBreedFetcher
  attr_reader :breed

  def initialize(name=nil)
    @name = name
    @breed = Breed.find_or_initialize_by(name: name)
  end

  def fetch
    # return @breed if @breed.pic_url.present?

    @breed.pic_url = fetch_info(@name)["message"]
    @breed.save && @breed
  end

  def self.fetch(name=nil)
    name ||= "random"
    DogBreedFetcher.new(name).fetch
  end

private
  def fetch_info(name)
    begin
      array_names = name.split(' ')
      if array_names.size == 1
        JSON.parse(RestClient.get("https://dog.ceo/api/breed/#{array_names[0]}/images/random").body)
      else
        JSON.parse(RestClient.get("https://dog.ceo/api/breed/#{array_names[0]}/#{array_names[1]}/images/random").body)
      end
    rescue Object => e
      default_body
    end
  end

  def default_body
    {
      "status"  => "success",
      "message" => "https://images.dog.ceo/breeds/cattledog-australian/IMG_2432.jpg"
    }
  end
end

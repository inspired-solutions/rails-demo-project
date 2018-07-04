module BreedsHelper

  def get_breeds
    begin
      JSON.parse(RestClient.get("https://dog.ceo/api/breeds/list/all").body)
    rescue Object => e
      {
          :status => 'False',
          :message => {
          }
      }
    end
  end
end

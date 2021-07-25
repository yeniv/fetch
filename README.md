No dog? No worries. Find one that needs walking anywhere in the world with Fetch.

During the Le Wagon bootcamp, I worked in a team of 4 to build a web app from scratch with the same functionality as Airbnb. We concepted, designed, and coded Fetch in a week.

Fetch connects dogless dog-lovers with dogs who need a walk. Win-win!

Owners add their dog to the website, along with a photo which is uploaded to Cloudinary using Carrierwave.

The exact latitude-longitude of the owner's location is calculated using the Ruby Geocoder Gem and a marker is placed on a Mapbox map in Javascript.

Walkers can search for dogs anywhere in world by using the world map or entering their location, which begins an active record search.

When a dog card is clicked, a Javascript event listener triggers a Mapbox flyto method which moves the map to the dog's location and opens a popup to request a walk. Once a walker find a dog they'd like to walk, they make a request by proposing a date, pickup and drop off times, and a personalised message.

Owners and walkers can view all their requests on their profile page and manage their dogs (if any). But only owners have the power to accept or deny requests.

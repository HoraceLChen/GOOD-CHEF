# Good Chef

## Overview

Good Chef is a Ruby on Rails application designed to connect users with private chefs for unique culinary experiences. Developed as a collaborative project by a team of four, it incorporates robust features such as user authentication, image uploads, and geolocation mapping.

## Table of Contents

- [Quick Start](#quick-start)
- [Features](#features)
- [Built With](#built-with)
- [Lessons Learned](#lessons-learned)
- [Team Members](#team-members)
- [License](#license)
- [Contact](#contact)

## Quick Start

1. Clone this repository: `git clone https://github.com/yourusername/good-chef.git`
2. Change into the directory: `cd good-chef`
3. Install dependencies: `bundle install`

### Environment Variables
Create a `.env` file and populate it with the following:

```bash
CLOUDINARY_URL=your_own_cloudinary_url_key
MAPBOX_API_KEY=your_mapbox_api_key

## Features

- **User Authentication**: Leveraging Devise for secure and robust authentication.
- **Image Uploads**: Implemented via Cloudinary.
- **Search Functionality**: Utilizes PostgreSQL's full-text search.
- **Geocoding and Maps**: Features Geocoder and Mapbox for an immersive user experience.
- **Booking & Reviews**: Seamlessly integrated with AJAX.

## Built With

- **Rails 7**: Backend / Front-end
- **StimulusJS**: Front-end JavaScript framework
- **Heroku**: Deployment
- **PostgreSQL**: Database
- **Bootstrap**: Styling
- **Figma**: Prototyping

## Lessons Learned

- Third-party service integration (Cloudinary, Mapbox).
- Advanced ActiveRecord querying.
- AJAX for dynamic content.
- StimulusJS for client-side logic.

## Team Members

- [Aliia Gismatullina](https://www.linkedin.com/in/aliiagismatullina/)
- [Horace Chen](https://www.linkedin.com/in/horace-chen/)
- [Kaishu Kawano](https://jp.linkedin.com/in/kaishu-kawano/)
- [Vincent Tee](https://www.linkedin.com/in/vincent-tee-aus/)

## License

MIT License. See [LICENSE.md](LICENSE.md) for details.

## Contact

- GitHub: [Good Chef GitHub Repo](https://github.com/yourusername/good-chef)
- LinkedIn: [Vincent Tee's LinkedIn](https://www.linkedin.com/in/vincent-tee-aus/)

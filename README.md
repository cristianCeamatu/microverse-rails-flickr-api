![Hireable](https://img.shields.io/badge/Hireable-yes-success) ![](https://img.shields.io/badge/-Microverse%20projects-blueviolet)

# Rails app that uses the Flickr API to receive the latest uploaded photos from all users or search for a specific user

> In this project, we built app that uses the Flickr API, the index page will return the most recent uploaded photos on Flickr or the search results by ID (photo limit is maximum 15).

## App functionality
* Guests can check latest 15 photos added on Flickr
* Users can search for photos of users

## This web app is live, you can check it here: [Live demo](https://rails-flickr-api.herokuapp.com/)

## Screenshot of the app.
![image](.github/app-screenshot.png)

## Built With
* Ruby
* Rails

## Prerequisities

To get this project up and running locally, you must have ruby and postgres installed on your computer.

## Getting Started

**To get this project set up on your local machine, follow these simple steps:**

**Step 1**<br>
Navigate through the local folder where you want to clone the repository and run<br>
`https://github.com/cristianCeamatu/microverse-rails-flickr-api`. It will clone the repo to your local folder.<br>
or with https<br>
`https://github.com/cristianCeamatu/microverse-rails-flickr-api.git`.<br>
**Step 2**<br>
Run `cd microverse-rails-flickr-api`<br>
**Step 3**<br>
Run `bundle install` to install the gems from the `Gemfile`.<br>
**Step 4**<br>
Run `yarn install` to install the npm packages from the `package.json` file.<br>
**Step 5**<br>
Visit [Flickr API](https://www.flickr.com/services/api/) and sign up to get an API Key and a Secret.<br>
**Step 6**<br>
Run `bundle exec figaro install`, this will create a file called `application.yml` in the `config` folder.<br>
**Step 7**<br>
Open  `config/application.yml` and add your credenatials for your postgres account like  this:<br>
`FLICKRAW_API_KEY: "exampleKey"` <br>
`FLICKRAW_SHARED_SECRET: "secret"`<br>
**Step 8**<br>
Run `rails s` to start the rails server.<br>
**Step 9**<br>
You can visit the app at `http://localhost:3000`. Enjoy!<br>

## Tests

1. Open Terminal

2. Migrate the test database:

    `rails db:migrate RAILS_ENV=test`

2. Run the tests with the command:

    `rspec`

## Authors

👤 **Cristian Viorel Ceamatu**

- Github: [@cristianCeamatu](https://github.com/cristianCeamatu)
- Twitter: [@CeamatuV](https://twitter.com/CeamatuV)
- Linkedin: [Ceamatu Cristian](https://www.linkedin.com/in/ceamatu-cristian/)

## 🤝 Contributing

Our favourite contributions are those that help us improve the project, whether with a contribution, an issue, or a feature request!

## Show your support

If you've read this far....give us a ⭐️!

## 📝 License

This project is licensed by Microverse and the Odin Project
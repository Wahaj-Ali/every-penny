<a name="readme-top"></a>

# 📗 Table of Contents

- [📗 Table of Contents](#-table-of-contents)
- [📖 \[Every Penny\] ](#-every-penny-)
  - [🛠 Built With ](#-built-with-)
    - [Tech Stack ](#tech-stack-)
    - [Key Features ](#key-features-)
  - [🚀 Live Demo ](#-live-demo-)
  - [🚀 Video Project Presentation ](#-video-project-presentation-)
  - [Getting Started](#getting-started)
    - [Prerequisites](#prerequisites)
    - [Setup](#setup)
    - [Install](#install)
    - [Database creation](#database-creation)
    - [Usage](#usage)
    - [Run tests](#run-tests)
    - [or :](#or-)
  - [👥 Authors ](#-authors-)
  - [🔭 Future Features ](#-future-features-)
  - [🤝 Contributing ](#-contributing-)
  - [⭐️ Show your support ](#️-show-your-support-)
  - [🙏 Acknowledgments ](#-acknowledgments-)
  - [📝 License ](#-license-)

<!-- PROJECT DESCRIPTION -->

# 📖 [Every Penny] <a name="about-project"></a>

**This project is created as part of the rails capstone at Microverse. This app is a mobile web application where a user manage its budget: have a list of transactions associated with a category, so that the user can see how much money it spent and on what.**
  <ul>
    <li>View Recipes for the logged in user </li>
    <li>logged in user can delete their recipes</li>
    <li>Logge in user can add new recipes</li>   
    <li>Logged in user can make the recipe public or private</li> 
    <li>Public recipes can be viewd by any user</li> 
  </ul>

## 🛠 Built With <a name="built-with"></a>

### Tech Stack <a name="tech-stack"></a>

<details>
  <summary>Server</summary>
  <ul>
    <li><a href="https://rubyonrails.org/">Ruby on rails</a></li>
  </ul>
</details>

<details>
<summary>Database</summary>
  <ul>
    <li><a href="https://www.postgresql.org/">PostgreSQL</a></li>
  </ul>
</details>

<!-- Features -->

### Key Features <a name="key-features"></a>

- **Add new categories**
- **Delete categories**
- **Add new transactions for each category**
- **Authentication using Devise gem**
- **Authorization using Cancancan gem**
- **Splash screen showing the name of the App and options to log in/sign up**
<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 🚀 Live Demo <a name="live-demo"></a>

- <a href="https://budget-app-eydq.onrender.com" target="_blank">Live Demo Link</a>

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 🚀 Video Project Presentation <a name="live-demo"></a>

- <a href="https://www.loom.com/share/c9731690e7044d419e01962d1f4b598a" target="_blank">-Video Project Presentation Link</a>

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## Getting Started

To get a local copy up and running follow these simple example steps.

### Prerequisites

> You need the following tools be installed in your computer:

> - [Rails](https://guides.rubyonrails.org/)
> - [Git](https://www.linode.com/docs/guides/how-to-install-git-on-linux-mac-and-windows/)
> - [Ruby](https://github.com/microverseinc/curriculum-ruby/blob/main/simple-ruby/articles/ruby_installation_instructions.md)
> - IDE
> - PostgreSQL

### Setup

Clone this repository to your desired folder:

```sh
  cd my-prefered-folder
  
  git clone https://github.com/Wahaj-Ali/every-penny.git
```

### Install

Install this project with:

```sh
  cd every-penny
  
  bundle install
```

### Database creation

Next, use this command to create the databases:
```
rails db:create
rails db:migrate
```

### Usage

To run the project, execute the following command:

```sh
  rails server or rails s
```

### Run tests

To run tests, run the following command:

before you run the tests

```
rails db:seed RAILS_ENV=test
```

```sh
  rspec spec/
```

### or :
```
rspec spec/models
rspec spec/views
```

<!-- AUTHORS -->

## 👥 Authors <a name="authors"></a>

👤 **Wahaj Ali**

- GitHub: [@Wahaj-Ali](https://github.com/Wahaj-Ali)
- LinkedIn: [@wahaj-ali96](https://www.linkedin.com/in/wahaj-ali96/)


<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- FUTURE FEATURES -->

## 🔭 Future Features <a name="future-features"></a>

- [ ] **Sidebar menu for the mobile version**
- [ ] **Some UX improvements: include transitions and/or animations, etc.**

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- CONTRIBUTING -->

## 🤝 Contributing <a name="contributing"></a>

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](https://github.com/Wahaj-Ali/every-penny/issues).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- SUPPORT -->

## ⭐️ Show your support <a name="support"></a>

If you like this project please give a⭐️ and share with your friends.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- ACKNOWLEDGEMENTS -->

## 🙏 Acknowledgments <a name="acknowledgements"></a>

- Thanks to the Microverse team for the great curriculum.
- Hat tip to anyone whose code was used
- I would like to thank "Gregoire Vella" for the [Amazing Design Template](https://www.behance.net/gallery/19759151/Snapscan-iOs-design-and-branding?tracking_source=).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- LICENSE -->

## 📝 License <a name="license"></a>

This project is [MIT](https://github.com/Wahaj-Ali/every-penny/blob/dev/LICENSE) licensed.

<p align="right">(<a href="#readme-top">back to top</a>)</p>


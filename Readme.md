![](https://img.shields.io/badge/Microverse-blueviolet)


# Project requirements
Projects list
You will be building your "OOP school library" app. Here is the list of projects that will guide you through the steps described above. You will find details about each of the project requirements in the upcoming program activities. In some of the projects, you will be working collaboratively by using pair programming.

## Project 1: add Person, Student, and Teacher classes.

- Create class Person with the following:
  - Instance vars: @id, @name, and @age.
  - Constructor with name, age, and parent_permission as parameter. name and parent_permission are optional and have default values of "Unknown" and true.
  - Getters for @id, @name, and @age.
  - Setters for @name and @age.
  - Private method is_of_age? that returns true if @age is greater or equal to 18 and false otherwise.
  - Public method can_use_services? that returns true if person is of age or if they have permission from parents.
- Create class Student with the following:
  - Inherits from Person.
  - Constructor extends parent's constructor by adding @classroom and a parameter for it.
  - Method play_hooky that returns "¯\(ツ)/¯".
- Create class Teacher with the following:
  - Inherits from Person.
  - Constructor extends parent's constructor by adding @specialization and a parameter for it.
  - Override can_use_services? so it always returns true.
  - Each class should be saved in a separate file.

## Project 2: use the "Decorator" design pattern.
## Project 4: add basic UI.
## Project 5: refactor your code.
## Project 6: preserve data.
## Project 7: unit tests.


## Getting Started

To get a local copy up and running follow these simple example steps.

### Prerequisites
- Ruby
### Setup

### Install

### Usage

### Run tests


## Authors

👤 **Author1**

- GitHub: [@t-bello7](https://github.com/t-bello7)
- Twitter: [@__tbello](https://twitter.com/__tbello)
- LinkedIn: [Bello Oluwatomisin](https://linkedin.com/in/tbello7)

## 🤝 Contributing

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](../../issues/).

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments

- Hat tip to anyone whose code was used
- Inspiration
- etc

## 📝 License

This project is [MIT](./LICENSE) licensed.

_NOTE: we recommend using the [MIT license](https://choosealicense.com/licenses/mit/) - you can set it up quickly by [using templates available on GitHub](https://docs.github.com/en/communities/setting-up-your-project-for-healthy-contributions/adding-a-license-to-a-repository). You can also use [any other license](https://choosealicense.com/licenses/) if you wish._

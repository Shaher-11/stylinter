![](https://img.shields.io/badge/stylinter-blueviolet)

# stylinter

> Ruby program that detects style issues within the CSS file, and provides detailed feedback on how to fix them. 
> The user can also edit their CSS file as they please.

![screenshot](./linter-search.gif)


## Built With

- Ruby
- Lots of love :heart:

## Tested with 
- RSpec
  
## Getting Started

**Prerequisites**

Before running the program, you need to make sure Ruby is installed on your computer,
to check that run ``ruby -v`` on the terminal.

### Installation
In order to run the linter on your local machine, please run the following commands on your terminal:

>1. run  `git clone https://github.com/Shaher-11/stylinter.git`
>2. run  `cd stylinter/bin`
>3. run  `ruby main.rb`
>4. Enjoy the linting!

### Testing

To test the code run the following commands on your terminal:

>1. run `gem install rspec`
>2. run `rspec` in the root directory

## Project Description: 

Detailed feedback will be given to the user upon executing the program to check whether their CSS file adopts proper style conventions on the following:


### ***Extra Semicolons***
*- There should be no extra semicolons in the file.*

> **Bad code:**
```
.top-nav {
  padding: 2rem;;
}
```

> **Good code:**

```
.top-nav {
  padding: 2rem;
}
```

### ***Stray single quotes***
*- Stray single quotes should be removed .*

> **Bad code:**
```
.base-nav {
  margin: 1rem;'
}
```

> **Good code:**

```
.base-nav {
  margin: 1rem;
}
```

### ***Tailing Spaces***
*- There should be no tailing spaces*

> **Bad code:**
```
footer {
  font-weight: 12px;
} 

```

> **Good code:**

```
footer {
  font-weight: 12px;
}
```

### ***Stray double quotes***
*- Stray double quotes should be removed .*

> **Bad code:**
```
.base-footer {
  padding: 1rem;"
}
```

> **Good code:**

```
.base-footer {
  padding: 1rem;
}
```

### ***Braces On Same Line***
*- Each brace should be on a new line.*

> **Bad code:**
```
section {font-size: 1rem;}

```

> **Good code:**

```
section {
font-size: 1rem;
}

```

### ***Bracket instead of brace***
*- Bracket used instead of brace*

> **Bad code:**
```
section {font-size: 2rem;
]

```

> **Good code:**

```
section {
font-size: 2rem;
}

```

### ***Comma Spaces***
*- There should be a space after the comma.*

> **Bad code:**
```
p {
  transform: translate(1px,1px);
}
```

> **Good code:**

```
p {
  transform: translate(1px, 1px);
}
```


### ***Font Weight***
*- The Font weight should be a numeric value.*

> **Bad code:**
```
nav {
  font-weight: bold;
}
```

> **Good code:**

```
nav {
  font-weight: 2rem;
}
```

### ***Long line***
*- The line should not be too long.*

> **Bad code:**
```
.fruits {
  background-image: url("https://s7.postimg.cc/u8an7ndqz/frui\dargtymadly/lardyumrdyuus/largushrdt/mardtyyladyg/nardtsl/ts.jpg");
}
```

> **Good code:**

```
.fruits {
  background-image: url("https://s7.postimg.cc/u8an7ndqz/frui\
  dargtymadly/lardyumrdyuus/largushrdt/mardtyyladyg/nardtsl/ts.jpg");
}
```

### ***Leading Zero***
*- There should be a zero before each decimal point.*

> **Bad code:**
```
span {
  line-height: .5rem;
}
```

> **Good code:**

```
span {
  line-height: 0.5rem;
}
```

### ***Placing Decimals***
*- There should be maximum tow decimals placed.*

> **Bad code:**
```
.container {
  margin: 2.0000rem;
}
```

> **Good code:**

```
.container {
  margin: 2.00rem;
}
```

### ***Capital letters***
*- There should not capital letters.*

> **Bad code:**
```
.top-footer {
  color: #FFF;
}
```

> **Good code:**

```
.top-footer {
  color: #fff;
}
```
### ***Comments***
*- # should be used for single line comments.*

> **Bad code:**
```
/* this is a 
comment */ 
```

> **Good code:**

```
 /* This is a better comment */
```

## Author

👤 **Shaher Shamroukh**
 
[<code><img height="26" src="https://cdn.iconscout.com/icon/free/png-256/github-153-675523.png"></code>](https://github.com/Shaher-11)
[<code><img height="26" src="https://upload.wikimedia.org/wikipedia/sco/thumb/9/9f/Twitter_bird_logo_2012.svg/1200px-Twitter_bird_logo_2012.svg.png"></code>](https://twitter.com/ShaherShamroukh/)
[<code><img height="26" src="https://upload.wikimedia.org/wikipedia/commons/thumb/c/c9/Linkedin.svg/1200px-Linkedin.svg.png"></code>](https://www.linkedin.com/in/shaher-shamroukh/)
 <a href="mailto:shahershamroukh@gmail.com?subject=Hey Shaher!"><img height="26" src="https://cdn.worldvectorlogo.com/logos/official-gmail-icon-2020-.svg"></a>
 
## 🤝 Contributing

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](issues/).

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments

- Microverse
- [Stylelint](https://stylelint.io/user-guide/rules/list#stylistic-issues) for some inspiration.

## 📝 License

This project is [MIT](lic.url) licensed.

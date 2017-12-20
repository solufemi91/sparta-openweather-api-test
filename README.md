# sparta-openweather-api-test

## The brief

 The objective was to build a program that could peform various services against an API.

### What I struggled with

I struggled to get random city names to be generated within my test files. An error message which I did not understand kept occurring.

Another issue was that none of my service files in the multiple directory worked. Once again, I did not understand the error message that I was getting , despite checking it on google.


### What went well

I managed to write successful tests for all of my single entry services


### Improvements

After reviewing the work I did together with my trainer i found out how to get the random city names to be generated. I created another folder in the lib folder named random. In this file i included two classes, one for the json file and the other for the yaml. Both classes parsed the files into a Ruby format. The main reason why I can now get random entries in my test files is because both the yaml and the json files are positioned in the root file. This happens to be the same location where the rspec is executed from.

### To execute tests

Its essential that particular gems are installled in your system.

```gem install json```,
```gem install yaml```,
```gem install httparty```

To execute the tests, run the following command in the terminal from the root directory: ```rspec```

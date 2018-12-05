# Database Server

The test: "Before your interview, write a program that runs a server that is accessible on http://localhost:4000/. When your server receives a request on http://localhost:4000/set?somekey=somevalue it should store the passed key and value in memory. When it receives a request on http://localhost:4000/get?key=somekey it should return the value stored at somekey.

During your [mock] interview, you will pair on saving the data to a file.

Create a new git repository and write code to fulfill the brief to the best of your ability. Store the data in memory, not in a database, but bear in mind that you will later need to add a database to this code."

### User Stories:

```
As a developer
So I can serve http requests
I have to set up a Server that listens on localhost:4000
```
```
As a server
So I can receive a query string of a key value pair in set?somekey=somevalue
I will store the query in memory.
```
```
As a server
So I can serve the request in a get?key=somekey format
It should return the value stored in somekey
```
```
As a developer
So I can reatain the search queries
I want to be able to save the data in a file
```

## My Approach
* Always TDD - I did add some more tests in later just to triple check that my program was working the way it should; but all the work was test driven
* I started by thinking about MVC and how I wanted the pages to interact, as well as thinking about data storage - I decided to take the key and value out from the query string and make them into parameters that would be stored in an empty hash
* I opted to use Ruby for this test as Sinatra is something I am familiar with and was confident I could use well

## How to use

#### Set up
```
$ git clone git@github.com:chloeverity/database-server.git
$ cd database-server
$ bundle install
```
#### Use
```
$ ruby app.rb
```
Open browser to http://localhost:4000/

#### Storing data:

* Visit http://localhost:4000/set?mykey=myvalue

#### Getting data:

* Visit http://localhost:4000/get?key=mykey

## How to run tests
```
$ rspec
```

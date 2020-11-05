---
layout: wiki
title: "Inversion of Control: An Python Example"
---


# Inversion of Control

This is a summary of the [Martin Fowler's article](https://martinfowler.com/articles/injection.html) about “Inversion of Control”, with the main example ported from Java to Python.

## A Naive Example

```
class Movie:
    def __init__(self, title, director):
        self.title = title
        self.director = director
    def __str__(self):
        return '%s, %s'%(self.title, self.director)
 
class DummyMovieFinder:
    def __init__(self, filename):
        print 'Loading movies from: %s'%(filename)
        self.movies = (
            Movie("Once Upon a Time in the West", "Sergio Leone"),
            Movie("Dances With Wolves", "Kevin Costner")
        )
 
    def find_all(self):
        return self.movies
 
class MovieLister:
    def __init__(self):
        self.finder = DummyMovieFinder("western_library.txt")
 
    def moviesDirectedBy(self, director):
        return [movie for movie in self.finder.find_all() if movie.director == director]
 
if __name__ == '__main__':
    lister = MovieLister()
    movies = lister.moviesDirectedBy("Sergio Leone")
    print '\n'.join(map(str, movies))
```

The MovieLister class is dependent on both the MovieFinder interface and upon the implementation. We would prefer it if it were only dependent on the interface, but then how do we make an instance to work with?

The problem is how can I make that link so that my lister class is ignorant of the implementation class, but can still talk to an instance to do its work.

Expanding this into a real system, we might have dozens of such services and components. In each case we can abstract our use of these components by talking to them through an interface (and using an adapter if the component isn't designed with an interface in mind). But if we wish to deploy this system in different ways, we need to use plugins to handle the interaction with these services so we can use different implementations in different deployments.

So the core problem is how do we assemble these plugins into an application? This is one of the main problems that this new breed of lightweight containers face, and universally they all do it using Inversion of Control.

## Dependency Injection

```
class MovieLister:
    def __init__(self, finder):
        self.finder = finder
 
    def moviesDirectedBy(self, director):
        return [movie for movie in self.finder.find_all() if movie.director == director]
 
class Assembler:
    def __init__(self):
        finder = DummyMovieFinder("western_library.txt")
        self.lister = MovieLister(finder)
 
if __name__ == '__main__':
    a = Assembler()
    movies = a.lister.moviesDirectedBy("Sergio Leone")
    print '\n'.join(map(str, movies))
```
The assembler manage the information about which “MovieFinder” implementation should be injected in the “MovieLister” and which filename should be injected in the “MovieFinder”.

## Container

The centralization of all the dependencies in a single “Assembler” give the basis for the creation of a “Container”.

Usually, a container has the ability to load from a configuration file all the information about the wiring between the different components of a system.

In the case of this naive example:

The class implementing the “MovieFinder” interface to be injected in the “MovieLister”, (in our example “DummyMovieFinder”)
The filename to be used to instantiate the “DummyMovieFinder”

```
import types
 
class Container:
    def __init__(self, system_data):
        for component_name, component_class, component_args in system_data:
            if type(component_class) == types.ClassType:
                args = [self.__dict__[arg] for arg in component_args]
                self.__dict__[component_name] = component_class(*args)
            else:
                self.__dict__[component_name] = component_class
 
if __name__ == '__main__':
    SYSTEM_DATA = (
        ('filename', 'western_library.txt', None),
        ('finder', DummyMovieFinder, ('filename', )),
        ('lister', MovieLister, ('finder', )),
    )
 
    c = Container(SYSTEM_DATA)
    movies = c.lister.moviesDirectedBy("Sergio Leone")
    print '\n'.join(map(str, movies))
```

Now we have a general purpose container with no dependencies to its components.

# Google Test/Mock CMake template

Basic template for C++ development using Google [Test](http://code.google.com/p/googletest/)/[Mock](http://code.google.com/p/googlemock/) and [CMake](http://www.cmake.org/). It was initially created for a [C++ Testing Hacklab](https://speakerdeck.com/davidag/how-i-do-c-plus-plus-testing) on March 2013.

## Usage

1. Google Mock (download, uncompress and compile)
2. Add the path of your Google Mock installation to a environment variable named `GMOCK_HOME` (e.g. add to your `.bashrc` this line: `export GMOCK_HOME="$HOME/gmock-1.7.0"`)
3. Clone this repository with `git clone git://github.com/davidag/gtestmock-cmake-template.git myproject`

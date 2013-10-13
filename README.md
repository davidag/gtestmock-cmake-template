# Google Test/Mock CMake Template

Template for C++ &amp; Google [Test](http://code.google.com/p/googletest/)/[Mock](http://code.google.com/p/googlemock/) development using [CMake](http://www.cmake.org/). It was initially created for a [C++ Testing Hacklab](http://www.davidalfonso.es/testing-lab-con-agile-aragon/) _(in Spanish)_ I conducted on March 2013.

## Usage

1. Google Mock (download, uncompress and compile)
2. Add the path of your Google Mock installation to a environment variable named `GMOCK_HOME` (e.g. add to your `.bashrc` this line: `export GMOCK_HOME="$HOME/gmock-1.7.0"`)
3. Clone this repository with `git clone git://github.com/davidag/gtestmock-cmake-template.git myproject` (and probably delete .git folder)

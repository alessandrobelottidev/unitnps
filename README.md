# Probability and Statistics Helper Library (Unitn 2024)
This is a library I'm developing while studying unitnps at university.
Its purpose is to easily re-use common functions to solve the daily exercises we get assigned in the course.

This library will not be kept up-to-date by me after the course ends, but any PRs are certainly welcomed!
I will still make sure to review them.

## How to use the library
First you will need to build the source, then you'll simply need to include the library in your environment.

### Building the source
```sh
> git clone url_of_this_repo
> cd unitnps
> R
> devtools::build()
> devtools::install()
```

### Simply use the library in an R session
Now that the package is installed you can simply use this package:
```sh
> R
> unitnps::is_algebra(x, y)
```

You can even load the namespace and use the functions directly:
```sh
> R
> library(unitnps)
> is_algebra(x, y)
```

### Use the package in an R script
Write your script eg.:
```R
library(unitnps)

# Example use of a package function
print(is_algebra(universe, sets))
```

Run your script:
``` bash
> R
> source("path/to/file/name_of_file.R")
```

## How to contribute in the development
### Setting up your environment
To start developing in R you must have:
- R compiler
- (Preferred) Rstudio

After you have them installed run the following to get the devtools:
```sh
> R
> install.packages("devtools")
```

Then clone this library and make your modifications.

### Generating the documentation
```sh
> cd unitnps
> R
> devtools::document()
```

### Build package on your system
```sh
> cd unitnps
> R
> devtools::build()
```

### Install package on your system
```sh
> cd unitnps
> R
> devtools::install()
```
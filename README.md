

# Gradescope Java+Maven Autograder Example

This repo was adapted in the following way:

* The java-mvn subdirectory of Gradescope's examples were used as a starting point

* Then, since the src subdir of that repo is only a symlink, the actual files were copied in
* Then, since the original did not follow the usual mvn convention of separating regular and test code,
   the test code was moved from `src/main/java` to `src/test/java`
* Then, the `pom.xml` file was modified so that it would match the actual package name
   of the `RunTests` class (which was incorrect in the original)
* The `pom.xml` file was also modified to use the `test` classpath
* The `run_autograder` script was modified to pull from a repo using the technique in [link-gs-zip-with-repo] and to copy the student submission into that directory.



# BELOW THIS LINE, ORIGINAL README.md CONTENTS


# Gradescope Java+Maven Autograder Example

This example shows how to set up an autograder on Gradescope for a
Java project using Maven. For the full Java example, see
[here](../java). This document only describes the differences needed
for Maven.

## Maven

Maven is a build tool. It provides dependency resolution (only needed
for JUnit and exec plugin in this project) and a way to compile and
execute code (using exec plugin). It may be useful if you don't want
to have to package your dependencies (though that might be a better
idea for repeatability reasons), want better handling of complex
build scenarios, or if you're already using Maven.


## Generating a Maven project

Maven projects are defined by a pom.xml file. This file and the
project structure were generated using the command

`mvn archetype:generate -DgroupId=com.gradescope.intlist -DartifactId=intlist -DarchetypeArtifactId=maven-archetype-quickstart -DinteractiveMode=false`

# Files

## [setup.sh](setup.sh)

Sets up JDK 8 and maven. There's a workaround for a ca-certificates
issue to make sure you can install things from Maven.

## [run_autograder](run_autograder)

mvn compile is a built in maven goal to compile the project. -q makes
it quiet (i.e. not spam a bunch of debugging output).

mvn exec:java is a goal from the exec plugin for maven. It lets you
specify a main class to execute (see pom.xml). This lets you avoid
having to figure out the proper java command to run and classpath
arguments and the like.

## [pom.xml](pom.xml)

This is a maven project file. Briefly, it describes the project, its
dependencies/plugins, Java compiler version, and main class.


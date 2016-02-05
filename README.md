# Java 8 Small Docker Image

This is a small (~112 mb), Alpine Linux based Docker image that contains the Java 1.8 JVM. It's useful for executing Java programs, but it *doesn't* contain the JDK, so you can't use it to compile Java code. 

It's based in the iron/java image, but this one was having some SSL issue due to a package not executing scripts so this images is basically the same one but with the scripts for SSL executed.

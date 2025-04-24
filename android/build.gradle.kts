// build.gradle (Project level)

buildscript {
    repositories {
        google()  // Required for Google services plugin
        mavenCentral()  // Required for maven dependencies
    }
    dependencies {
        classpath "com.google.gms:google-services:4.4.2"  // version "4.4.2"
    }
}

allprojects {
    repositories {
        google()
        mavenCentral()
    }
}

// Custom Build Directory Setup
val newBuildDir: Directory = rootProject.layout.buildDirectory.dir("../../build").get()
rootProject.layout.buildDirectory.value(newBuildDir)

subprojects {
    val newSubprojectBuildDir: Directory = newBuildDir.dir(project.name)
    project.layout.buildDirectory.value(newSubprojectBuildDir)
}

// Ensure the :app project is evaluated first
subprojects {
    project.evaluationDependsOn(":app")
}

// Custom Clean Task
tasks.register<Delete>("clean") {
    delete(rootProject.layout.buildDirectory)
}

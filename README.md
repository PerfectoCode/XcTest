# XcTest

Build samples of the Perfecto XcTest gradle plugin.

In the samples folder you can view 3 ways of how to run the Perfecto XcTest plugin.
All samples can be run by providing the needed parameters and running the command:

"gradle perfecto-xctest" 

<ul>
  <li>
    defaultSample - A sample folder containing the needed files for running the Perfecto xctest task
  </li>
  <li>
    localJarSample - A sample folder including the plugin JAR
  </li>
  <li>
    buildGradleConfiguration - A project where the configuration is done in the build.gradle file
  </li>
</ul>
In the configFilesSamples folder you can see different examples of how it's possible to configure the plugin. Except for devices, all parameters can be overriden by the command line.

<br />The samples in the ```samples``` folder are relevant for real devices. For virtual devices
samples, please refer to the samples inside ```virtualDevicesSamples``` folder.  
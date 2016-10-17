# AntLab
AntLab was my final project for General Assembly.

AntLab is a website that encourages children to explore biology by teaching them about ants, an organism that they can easily observe.

The website has three parts:

**Compare:** Compare is a CRUD app that allows users to discuss their observations and allows them to upload pictures. This portion combines a standard CRUD app with an uploader. Uploaded images are stored on Amazon Web Services.

**Explore:** Explore allows users to see specimens that have been collected from their area. The user enters the name of a city; the site uses the geocoder gem to convert this city to a latitude and longitude and then returns samples collected near this area. Samples are returned via an API request to http://www.antweb.org/.

**Learn:** Learn encourages users’ curiosity by presenting an image with clickable areas. When users click on an area of the picture, a dialogue box is opened that gives information about this area.

AntLab is available here: https://antlab-project.herokuapp.com/

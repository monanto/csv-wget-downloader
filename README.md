# csv-wget-downloader
A bash script that reads a CSV. For each line it has to download an image, and rename it.

CSV file looks like this:

ARTNR, URL

abcd1234, https://placehold.cmspecialist.nl/?x=800x600&text=blabla

abcd1235, https://placehold.cmspecialist.nl/?x=800x600&text=other

abcd123234, https://placehold.cmspecialist.nl/?x=100x400&text=others

etc....

Options:
- The delimitor should be configurable

- The timeout should be a setting for example 200ms so it won't jam the server

The results should be that the images are downloaded into the folder

abcd1234.jpg, abcd1235.png, abcd123234.jpg etc...

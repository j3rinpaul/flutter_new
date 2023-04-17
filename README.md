# textfield

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## List View

used to create ui just like a chat application 
whatsapp

has 
-title (name | contacts)
-subtitle (message)
-leading(avatar|dp)
-trailing (time)
## Shared Preferences

Seen the whatsapp that allows login once

once it has been logged in the credientials are saved inside the phone 

that is called shared preferences

## Navigator.of(context).push|pop

used to push another page on top of the home page

pop is used to remove the loaded page from the top of the home page

Login Criteria

## in our app we initally verify the username and password  from db
## if same then we save that using shared preferences 
## and each time whenever the user logs in the sharedpreferences is checked
## then on logout the data is removed from the sharedpreferences
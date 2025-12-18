# di_demo_project

This project uses the concept of dependency injection. 

A RatingCubit class extending the Cubit Class is injected at the application root using BlocProvider. This separates the business logic and View as the required dependency is created elsewhere and provided to the required widget using the providers, and allows the widgets to access the cubits wihtout creating them.

This is a basic project where the cubit is used to upvote Bloc or Cubit on the press of an button. 

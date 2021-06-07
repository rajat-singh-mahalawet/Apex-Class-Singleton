The Singleton design pattern allows Apex code to repeatedly reference an object instance in an optimal manner, whilst mitigating the impact of governor limits.

In order to implement a Singleton pattern in Apex, the class must instantiate only a single instance and be globally accessible. It is implemented by

Creating a class with a method that creates a new instance of the class if it doesn't already exist
If it already exists, then simply return a reference to that object
The following code sample demonstrates an implementation of the Singleton pattern for returning a record type describe within a trigger.

The code demonstrates the following:

The getInstance() static method will only instantiate an instance of the class if it doesn't already exist in a lazy-initialization manner
The constructor and the instance variable for the class is private to make sure that it cannot be instantiated outside of the getInstance() method
The class defines a private, static instance of itself that can only be referenced via the getInstance() static method
The ID member stores the record ID of the record type and is initialized in the constructor
This allows the trigger to obtain a reference to the record type without breaching governor limits.
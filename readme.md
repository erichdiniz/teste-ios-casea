This code was made using the MVVM Archtecture, even if it does not show data in the tableView, 
the data is firstly molded my a Models file, which contains the Structs that will model our Sensosrs.

I heve created a function in the DataSOurce file, that inserts random numbers and string, on each value passed, 
only MobileID takes the real mobile uuid.

The dada then is passed to a ViewModel, 
witch fetchs this object, and then is invoked by the ViewController that transforms this viewModel.fetchSensors into a timer, 
making it repeat that action in a random time from 0 to 1.

And after 10 seconds (which can be altered), it takes this object, changes it to json .prettyPrinted, and print on console.
And regarding the things that lacked on this project, I would say that if I had more time, I'd insert the sensors into a table view, 
and check its details upon clicked inside

Id also create a async class, that would handle whis sensors, and emmit and alert based on its variables, creating than, a dataset 
prepared to make some recommendations and predictions.

If any other information is needed, feel free to call me. I hope we can work together, soon.

Rergards,

Erich Benevides Diniz

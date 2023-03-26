OnBegin<override>()<suspends> : void =
    # Initialize Coins to 500. Because it is a var, you can change it later.
    var Coins : int = 500

    # Initialize CoinsPerMousetrap with a random integer between 1 and 100
    CoinsPerMousetrap : int = GetRandomInt(1, 100)
    
    # Print the current value of Coins (500) to the log.
    Print("Coins starts at {Coins}.")

    # Decrease Coins by CoinsPerMousetrap, and print the new value to the log.
    set Coins = Coins - CoinsPerMousetrap
    Print("After buying one mousetrap, Coins is {Coins}.")
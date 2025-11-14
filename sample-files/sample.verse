# Sample Verse File - Regular User Code

using { /Fortnite.com/Devices }
using { /Verse.org/Simulation }
using { /UnrealEngine.com/Temporary/Diagnostics }

# Main game device class
game_device := class(creative_device):

    # Device configuration
    var PlayerCount : int = 0
    var GameActive : logic = false
    
    # Initialize the device when game starts
    OnBegin<override>()<suspends>:void=
    {
        Print("Game Starting...")
        set GameActive = true
        StartGameLoop()
    }

    # Main game loop with error handling  
    StartGameLoop()<suspends>:void=
    {
        loop:
            if (GameActive?):
                # Get all players in the game
                AllPlayers := GetPlayspace().GetPlayers()
                set PlayerCount = AllPlayers.Length
                
                # Process each player
                for (Player : AllPlayers):
                    if (Agent := agent[Player]):
                        ProcessPlayer(Agent)
                
                Print("Active players: {PlayerCount}")
                Sleep(1.0)
            else:
                break
    }

    # Process individual player logic
    ProcessPlayer(Player : agent):void=
    {
        # Check player status and update accordingly
        if (Character := Player.GetFortCharacter[]):
            var Health : float = Character.GetHealth()
            var MaxHealth : float = Character.GetMaxHealth()
            
            # Test mixed quotes - these should highlight correctly now
            var Message1 : string = "This is a 'quoted' word inside double quotes"
            var Message2 : string = 'This is a "quoted" word inside single quotes'
            var Message3 : string = "Normal double quotes"
            var Message4 : string = 'Normal single quotes'
            
            # Heal player if health is low
            if (Health < MaxHealth * 0.5):
                Character.SetHealth(MaxHealth)
                Print("Player healed!")
    }

    # Event handler for player elimination
    OnPlayerEliminated(Result : elimination_result):void=
    {
        if (EliminatedAgent := Result.EliminatedCharacter.GetAgent[]):
            Print("Player eliminated: {EliminatedAgent}")
            # Respawn logic here
    }
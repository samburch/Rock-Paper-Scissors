/*
  A simple game of Rock, Paper, Scissors 
  by Sam Burch
*/

// Get the players choice
func getUserChoice(userInput: String) -> String {
  if userInput == "rock" || userInput == "paper" || userInput == "scissors" {
    return userInput
  } else {
    return "You can only enter rock, paper, or scissors. Try again."    
  }
}

// Test that the player choice function works
// print(getUserChoice(userInput: "paper"))

func getComputerChoice() -> String {
  // Generate random number between 0 and 3
  let randomNumber = Int.random(in: 0...2)
  
  // Switch computers choice based on random number
  switch randomNumber {
    case 0:
    return "rock";
    case 1:
    return "paper";
    case 2:
    return "scissors";        
    default:
    return "Something went wrong"
  }
}

// Test that the computer choice function works
// print(getComputerChoice())

// Determine the winner of the game by comparing the users choice wiht the computers
func determineWinner(_ userChoice: String, _ compChoice: String) -> String {
  
  // Initial decision if both answers the same
  var decision: String = "It's a tie"

  switch userChoice {

    // Outcome if user choses rock
    case "rock":
    if compChoice == "paper" {
      decision = "The user won"
    } else if compChoice == "scissors" {
      decision = "The computer won with \(compChoice)"      
    } else {
      return decision
    };

    // Outcome if user choses paper
    case "paper":
    if compChoice == "rock" {
      decision = "The user won"
    } else if compChoice == "scissors" {
      decision = "The computer won with \(compChoice)"      
    } else {
      return decision
    };

    // Outcome if user choses scissors
    case "scissors":
    if compChoice == "rock" {
      decision = "The computer won with \(compChoice)"
    } else if compChoice == "paper" {
      decision = "The user won"
    } else {
      return decision     
    };

    // Error handling
    default:
    print("Something went wrong")   
  }

  // Return winner
  return decision

}

var userChoice = getUserChoice(userInput: "rock")
var compChoice = getComputerChoice()

print("You threw \(userChoice)")
print("The computer threw \(compChoice)")

// Store winner in a variable
var result = determineWinner(userChoice, compChoice)

// Show the winner
print(result)

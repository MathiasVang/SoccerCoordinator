// Create an array of dictionaries to hold the players

let numberOfTeams = 3

let players: [[String:String]] = [
    ["Name": "Joe Smith", "Height": "42", "Soccer Experience": "1", "Guardian Name": "Jim and Jan Smith"],
    ["Name": "Jill Tanner", "Height": "36", "Soccer Experience": "1", "Guardian Name": "Clara Tanner"],
    ["Name": "Bill Bon", "Height": "43", "Soccer Experience": "1", "Guardian Name": "Sara and Jenny Bon"],
    ["Name": "Eva Gordon", "Height": "45", "Soccer Experience": "0", "Guardian Name": "Wendy and Mike Gordon"],
    ["Name": "Matt Gill", "Height": "40", "Soccer Experience": "0", "Guardian Name": "Charles and Sylvia Gill"],
    ["Name": "Kimmy Stein", "Height": "41", "Soccer Experience": "0", "Guardian Name": "Bill and Hillary Stein"],
    ["Name": "Sammy Adams", "Height": "45", "Soccer Experience": "0", "Guardian Name": "Jeff Adams"],
    ["Name": "Karl Saygan", "Height": "42", "Soccer Experience": "1", "Guardian Name": "Heather Bledsoe"],
    ["Name": "Suzane Greenberg", "Height": "44", "Soccer Experience": "1", "Guardian Name": "Henrietta Dumas"],
    ["Name": "Sal Dali", "Height": "41", "Soccer Experience": "0", "Guardian Name": "Gala Dali"],
    ["Name": "Joe Kavalier", "Height": "39", "Soccer Experience": "0", "Guardian Name": "Sam and Elaine Kavalier"],
    ["Name": "Ben Finkelstein", "Height": "44", "Soccer Experience": "0", "Guardian Name": "Aaron and Jill Finkelstein"],
    ["Name": "Diego Soto", "Height": "41", "Soccer Experience": "1", "Guardian Name": "Robin and Sarika Soto"],
    ["Name": "Chloe Alaska", "Height": "47", "Soccer Experience": "0", "Guardian Name": "David and Jamie Alaska"],
    ["Name": "Arnold Willis", "Height": "43", "Soccer Experience": "0", "Guardian Name": "Claire Willis"],
    ["Name": "Phillip Helm", "Height": "44", "Soccer Experience": "1", "Guardian Name": "Thomas Helm and Eva Jones"],
    ["Name": "Les Clay", "Height": "42", "Soccer Experience": "1", "Guardian Name": "Wynonna Brown"],
    ["Name": "Herschel Krustofski", "Height": "45", "Soccer Experience": "1", "Guardian Name": "Hyman and Rachel Krustofski"]
]

// How many players in each team
var numberOfPlayersInEachTeam = players.count / numberOfTeams

// Variable to hold number of Exp players
var numberOfTotalExpPlayers = Int()

// Looping to see how many Exp players we have
for player in players {
    numberOfTotalExpPlayers += Int(player["Soccer Experience"]!)!
}

// How many experienced and non experienced players to assign to each team
var numberOfExpPlayersInEachTeam = numberOfTotalExpPlayers / numberOfTeams
var numberOfNonExpPlayersInEachTeam = numberOfPlayersInEachTeam - numberOfExpPlayersInEachTeam


// Each team is is an array of dictionaries
// Initializing empty array of dicts by putting brackets at end

var dragons = [[String:String]]()
var sharks = [[String:String]]()
var raptors = [[String:String]]()

// Variable to hold the amount of experienced players

var numberOfExpPlayersInTeamDragons = 0
var numberOfExpPlayersInTeamSharks = 0
var numberOfExpPlayersInTeamRaptors = 0

// Variable to hold the amount of non experienced players

var numberOfNonExpPlayersInTeamDragons = 0
var numberOfNonExpPlayersInTeamSharks = 0
var numberOfNonExpPlayersInTeamRaptors = 0

// Looping through the array and assigning experienced players first and then non experienced players

for player in players {
    
    if player["Soccer Experience"] == "1" {
        if dragons.count < numberOfPlayersInEachTeam && numberOfExpPlayersInTeamDragons < numberOfExpPlayersInEachTeam {
            dragons.append(player)
            numberOfExpPlayersInTeamDragons += 1
        } else if sharks.count < numberOfPlayersInEachTeam && numberOfExpPlayersInTeamSharks < numberOfExpPlayersInEachTeam {
            sharks.append(player)
            numberOfExpPlayersInTeamSharks += 1
        } else if raptors.count < numberOfPlayersInEachTeam && numberOfExpPlayersInTeamRaptors < numberOfExpPlayersInEachTeam {
            raptors.append(player)
            numberOfExpPlayersInTeamRaptors += 1
        }
    } else if player["Soccer Experience"] == "0" {
        if dragons.count < numberOfPlayersInEachTeam && numberOfNonExpPlayersInTeamDragons < numberOfNonExpPlayersInEachTeam {
            dragons.append(player)
            numberOfNonExpPlayersInTeamDragons += 1
        } else if sharks.count < numberOfPlayersInEachTeam && numberOfNonExpPlayersInTeamSharks < numberOfNonExpPlayersInEachTeam {
            sharks.append(player)
            numberOfNonExpPlayersInTeamSharks += 1
        } else if raptors.count < numberOfPlayersInEachTeam && numberOfNonExpPlayersInTeamRaptors < numberOfNonExpPlayersInEachTeam {
            raptors.append(player)
            numberOfNonExpPlayersInTeamRaptors += 1
        }
    }
}

// Print team rosters

print("Let's get this season started!!!")

print("")

print("TEAM ROSTERS:")

print("")

print("----TEAM DRAGONS----")

for player in dragons {
    print(player["Name"]!)
}

print("")

print("----TEAM SHARKS----")

for player in sharks {
    print(player["Name"]!)
}

print("")

print("----TEAM RAPTORS----")

for player in raptors {
    print(player["Name"]!)
}

print("")

// Write personal letter for each player's guardian

for player in dragons {
    print("Hello \(player["Guardian Name"]!), your child \(player["Name"]!) is on Team Dragons! First practice is on March 17 at 1 pm. We look forward to a great season!")
}

print("")

for player in sharks {
    print("Hello \(player["Guardian Name"]!), your child \(player["Name"]!) is on Team Sharks! First practice is on March 17 at 3 pm. We look forward to a great season!")
}

print("")

for player in raptors {
    print("Hello \(player["Guardian Name"]!), your child \(player["Name"]!) is on Team Raptors! First practice is on March 18 at 1 pm. We look forward to a great season!")
}
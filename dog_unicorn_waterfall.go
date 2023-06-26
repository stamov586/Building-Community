package main

import "fmt"

// Constants to represent the different possibilities of participation in a community
const (
	NotInvolved = iota // 0
	Passive            // 1
	Active             // 2
)

// Struct representing an individual's participation in a community
type Participation struct {
	Name   string
	Status int
}

// Function to gather input from user about participation status
func getParticipation() Participation {
	var name string
	fmt.Print("Enter name:")
	fmt.Scan(&name)

	var status int
	fmt.Print("Enter participation status (0 = Not Involved, 1 = Passive, 2 = Active):")
	fmt.Scan(&status)

	return Participation{
		Name:   name,
		Status: status,
	}
}

// Function to print out a report of community participation
func reportParticipation(communities []Participation) {
	fmt.Println("==== Community Participation Report ====")
	fmt.Println()
	fmt.Println("Community Name    Participation Status")
	fmt.Println("----------------  ---------------------")
	for _, c := range communities {
		switch c.Status {
		case NotInvolved:
			fmt.Printf("%s    Not Involved\n", c.Name)
		case Passive:
			fmt.Printf("%s    Passive\n", c.Name)
		case Active:
			fmt.Printf("%s    Active\n", c.Name)
		default:
			fmt.Printf("%s    Unknown\n", c.Name)
		}
	}
}

func main() {
	// Create an empty slice to store the list of participants
	var communities []Participation

	// Prompt the user to enter the name and participation status for each community
	for {
		fmt.Println("Enter information for community member (Enter to quit):")
		c := getParticipation()
		if c.Name == "" {
			break
		}
		communities = append(communities, c)
	}
	
	// Generate a report of participation levels
	reportParticipation(communities)
}
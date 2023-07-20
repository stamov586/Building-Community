#include <iostream> 
using namespace std;

//Defining community
class Community { 
	public: 
		string location; 
		int numMembers; 
		string type; 

// Constructor 
		Community(string l, int n, string t) { 
			location = l; 
			numMembers = n; 
			type = t; 
		} 

// Destructor 
		~Community() { 
			cout << "Destroying the Community" << endl; 
		} 

// Print community information
		void printCommunityInfo() { 
			cout << "Location: " << location << endl; 
			cout << "Number of Members: " << numMembers << endl; 
			cout << "Type of Community: " << type << endl; 
		} 
}; 

// Creating classes for members
class Member { 
	public: 
		string name; 
		int age; 

// Constructor 
		Member(string n, int a) { 
			name == n; 
			age  == a; 
		} 

// Destructor 
		~Member() { 
			cout << "Removing Member" << endl; 
		} 

// Print Member information 
		void printMemberInfo() { 
			cout << "Name: " << name << endl; 
			cout << "Age: " << age << endl; 
		} 
}; 

// Creating an event 
class Event { 
	public: 
		string title; 
		string description; 
		string date; 

// Constructor 
		Event(string t, string d, string da) { 
			title = t; 
			description = d; 
			date = da; 
		} 

// Destructor 
		~Event() { 
			cout << "Removing Event" << endl; 
		} 

// Print Event information 
		void printEventInfo() { 
			cout << "Title: " << title << endl; 
			cout << "Description: " << description << endl; 
			cout << "Date: " << date << endl; 
		} 
}; 

// Creating a group 
class Group { 
	public: 
		string name; 
		string type; 

// Constructor 
		Group(string n, string t) { 
			name = n; 
			type = t; 
		} 

// Destructor 
		~Group() { 
			cout << "Removing Group" << endl; 
		} 

// Print Group information 
		void printGroupInfo() { 
			cout << "Name: " << name << endl; 
			cout << "Type: " << type << endl; 
		} 
};

// Creating a forum 
class Forum { 
	public: 
		string name; 
		string topic; 

// Constructor 
		Forum(string n, string t) { 
			name = n; 
			topic = t; 
		} 

// Destructor 
		~Forum() { 
			cout << "Removing Forum" << endl; 
		} 

// Print Forum information 
		void printForumInfo() { 
			cout << "Name: " << name << endl; 
			cout << "Topic: " << topic << endl; 
		} 
};

// Creating a method to add members 
void addMember(Community& c, Member& m) { 
	m.printMemberInfo(); 
	c.numMembers++; 
	cout << "Member added to the Community" << endl; 
} 

// Creating a method to add events 
void addEvent(Community& c, Event& e) { 
	e.printEventInfo(); 
	cout << "Event added to the Community" << endl; 
}

// Creating a method to add groups 
void addGroup(Community& c, Group& g) { 
	g.printGroupInfo(); 
	cout << "Group added to the Community" << endl; 
}

// Creating a method to add forums 
void addForum(Community& c, Forum& f) { 
	f.printForumInfo(); 
	cout << "Forum added to the Community" << endl; 
} 

// Main Method
int main() 
{ 
	// Creating a Community 
	Community c("New York City", 0, "Technology"); 

	// Creating Members 
	Member m1("John Doe", 30); 
	Member m2("Jane Smith", 25); 

	// Adding Members 
	addMember(c, m1); 
	addMember(c, m2); 

	// Print Community information 
	c.printCommunityInfo(); 

	// Creating Events 
	Event e1("Tech Meetup", "Meetup about the latest tech trends", "12/12/2019"); 
	Event e2("Coding Workshop", "Workshop to learn coding basics", "11/11/2019"); 

	// Adding Events 
	addEvent(c, e1); 
	addEvent(c, e2); 

	// Creating Groups 
	Group g1("Techies", "Technology"); 
	Group g2("Writers", "Writing"); 

	// Adding Groups 
	addGroup(c, g1); 
	addGroup(c, g2); 

	//Creating Forums 
	Forum f1("Tech Talk", "Discussing the latest tech trends"); 
	Forum f2("Writing Tips", "Discussing writing techniques"); 

	// Adding Forums 
	addForum(c, f1); 
	addForum(c, f2); 

	return 0; 
}
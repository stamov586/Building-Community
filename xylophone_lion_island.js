// Function to create a community
function buildCommunity() {
	// Create an object to store the community
	let community = {};

	// Define variables
	let name, members, type, rules;

	// Create a name for the community
	name = prompt("What name would you like to give your community?");

	// Define the members of the community
	members = prompt("Is this a closed community or open to everyone?  Enter 'closed' or 'open'.");

	// Set the type of the community
	type = prompt("What type of community is this? (e.g. gaming, writing, etc.)");

	// Create rules for the community
	rules = prompt("What rules would you like to establish?");

	// Set the values to the community object
	community.name = name;
	community.members = members;
	community.type = type;
	community.rules = rules;

	// Return the community object
	return community;
}

// Function to welcome members to the community
function greetMember(community, memberName) {
	// Create a greeting string
	let greeting = `Welcome to the ${community.name} community, ${memberName}!`;

	// Check if the community is open
	if (community.members === "open") {
		// Add an additional message if the community is open
		greeting += " Please take a moment to read the rules.";
	}

	// Log the greeting string to the console
	console.log(greeting);
}

// Function to add members to a community
function addMember(community, memberName) {
	// Create an array to store the members
	let memberList;

	// Check if the community already has members
	if (community.members) {
		// Set the members to the existing array
		memberList = community.members;
		// Add the new member
		memberList.push(memberName);
	} else {
		// Create an array with the new member
		memberList = [memberName];
	}

	// Set the members to the community object
	community.members = memberList;

	// Return the updated community object
	return community;
}

// Function to remove members from a community
function removeMember(community, memberName) {
	// Create a variable to store the updated members
	let updatedMembers;

	// Check if the community has members
	if (community.members) {
		// Filter out the member to be removed
		updatedMembers = community.members.filter(member => {
			return member !== memberName;
		});
	}

	// Set the updated members to the community object
	community.members = updatedMembers;

	// Return the updated community object
	return community;
}

// Function to enforce rules
function enforceRule(community, ruleName) {
	// Create a message to log
	let message = `The ${community.name} community has enforced the following rule: "${ruleName}." Please adhere to the rules of the community.`;

	// Log the rule to the console
	console.log(message);
}

// Function to create events
function createEvent(community, eventName, eventDate) {
	// Create an object to store the event
	let event = {
		name: eventName,
		date: eventDate
	};

	// Check if the community already has events
	if (community.events) {
		// Add the event to the existing array
		community.events.push(event);
	} else {
		// Create an array with the event
		community.events = [event];
	}

	// Return the updated community object
	return community;
}

// Function to update an event
function updateEvent(community, eventName, newDate) {
	// Loop through the events
	community.events.forEach(event => {
		// Check if the event matches
		if (event.name === eventName) {
			// Set the new date
			event.date = newDate;
		}
	});

	// Return the updated community object
	return community;

}

// Function to delete an event
function deleteEvent(community, eventName) {
	// Create a variable to store the updated events
	let updatedEvents;

	// Check if the community has events
	if (community.events) {
		// Filter out the event to be removed
		updatedEvents = community.events.filter(event => {
			return event.name !== eventName;
		});
	}

	// Set the updated events to the community
	community.events = updatedEvents;

	// Return the updated community object
	return community;
}

// Function to broadcast a message
function broadcastMessage(community, message) {
	// Create a message to log
	let broadcast = `Message to the ${community.name} community: ${message}`;

	// Log the broadcast message
	console.log(broadcast);
}
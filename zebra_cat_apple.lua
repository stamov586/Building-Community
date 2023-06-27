--Function to create a community
function createCommunity() 

	-- Create a community object 
	local community = { 
		name = "Building Community", 
		members = {} 
	} 

	-- Define functions to add/remove members
	function community:addMember(member)
		table.insert(self.members, member)
	end

	function community:removeMember(member)
		for index, value in ipairs(self.members) do
			if value == member then
				table.remove(self.members, index)
			end
		end
	end

	--Function to list members
	function community:listMembers()
		for i, v in ipairs(self.members) do
			print(v)
		end
	end

	-- Function to check if a member is in the community
	function community:isMember(member)
		for i, v in ipairs(self.members) do
			if v == member then
				return true
			end
		end
		return false
	end

	-- Function to get the number of members in the community
	function community:getNumberOfMembers()
		return #self.members
	end

	-- Return the community object
	return community
end

-- Function to create events
function createEvent(name, date, time, location)
	local event = {
		name = name,
		date = date,
		time = time,
		location = location,
		attendees = {}
	}

	-- Function to add attendees to the event
	function event:addAttendee(attendee)
		table.insert(self.attendees, attendee)
	end

	-- Function to remove attendees from the event
	function event:removeAttendee(attendee)
		for index, value in ipairs(self.attendees) do
			if value == attendee then
				table.remove(self.attendees, index)
			end
		end
	end

	-- Function to list attendees
	function event:listAttendees()
		for i, v in ipairs(self.attendees) do
			print(v)
		end
	end

	-- Function to check if an attendee is attending the event
	function event:isAttendee(attendee)
		for i, v in ipairs(self.attendees) do
			if v == attendee then
				return true
			end
		end
		return false
	end

	-- Function to get the number of attendees
	function event:getNumberOfAttendees()
		return #self.attendees
	end

	return event
end

-- Function to create a discussion
function createDiscussion(name, topic, description)
	local discussion = {
		name = name,
		topic = topic,
		description = description,
		participants = {}
	}

	-- Function to add participants to the discussion
	function discussion:addParticipant(participant)
		table.insert(self.participants, participant)
	end

	-- Function to remove participants from the discussion
	function discussion:removeParticipant(participant)
		for index, value in ipairs(self.participants) do
			if value == participant then
				table.remove(self.participants, index)
			end
		end
	end

	-- Function to list participants
	function discussion:listParticipants()
		for i, v in ipairs(self.participants) do
			print(v)
		end
	end

	-- Function to check if a participant is in the discussion
	function discussion:isParticipant(participant)
		for i, v in ipairs(self.participants) do
			if v == participant then
				return true
			end
		end
		return false
	end

	-- Function to get the number of participants
	function discussion:getNumberOfParticipants()
		return #self.participants
	end

	return discussion
end

-- Function to add members to a community
function addMembersToCommunity(community, members)
	for i, v in ipairs(members) do
		community:addMember(v)
	end
end

-- Function to remove members from a community
function removeMembersFromCommunity(community, members)
	for i, v in ipairs(members) do
		community:removeMember(v)
	end
end

-- Function to add attendees to an event
function addAttendeesToEvent(event, attendees)
	for i, v in ipairs(attendees) do
		event:addAttendee(v)
	end
end

-- Function to remove attendees from an event
function removeAttendeesFromEvent(event, attendees)
	for i, v in ipairs(attendees) do
		event:removeAttendee(v)
	end
end

-- Function to add participants to a discussion
function addParticipantsToDiscussion(discussion, participants)
	for i, v in ipairs(participants) do
		discussion:addParticipant(v)
	end
end

-- Function to remove participants from a discussion
function removeParticipantsFromDiscussion(discussion, participants)
	for i, v in ipairs(participants) do
		discussion:removeParticipant(v)
	end
end

return {
	createCommunity = createCommunity,
	createEvent = createEvent,
	createDiscussion = createDiscussion,
	addMembersToCommunity = addMembersToCommunity,
	removeMembersFromCommunity = removeMembersFromCommunity,
	addAttendeesToEvent = addAttendeesToEvent,
	removeAttendeesFromEvent = removeAttendeesFromEvent,
	addParticipantsToDiscussion = addParticipantsToDiscussion,
	removeParticipantsFromDiscussion = removeParticipantsFromDiscussion
}
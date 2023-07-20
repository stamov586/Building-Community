--[[

--Building Community in Lua

--Welcome to our Lua Community!

local community = {};

--Creating a Community

--Define community members
community.members = {};

--Create a function to add members
function community.addMember(name, email)
	table.insert(community.members, {name=name, email=email});
end

--Define community events
community.events = {};

--Create a function to add events
function community.addEvent(name, date, location)
	table.insert(community.events, {name=name, date=date, location=location});
end

--Define community resources
community.resources = {};

--Create a function to add resources
function community.addResource(name, link)
	table.insert(community.resources, {name=name, link=link});
end

--Define community messages
community.messages = {};

--Create a function to add messages
function community.addMessage(name, recipient, message)
	table.insert(community.messages, {name=name, recipient=recipient, message=message});
end

--Creating an Online Community

--Define community forums
community.forums = {};

--Create a function to add forums
function community.addForum(name, description)
	table.insert(community.forums, {name=name, description=description});
end

--Define community chat
community.chat = {};

--Create a function to add chat
function community.addChat(name, description)
	table.insert(community.chat, {name=name, description=description});
end

--Define community links
community.links = {};

--Create a function to add links 
function community.addLink(name, link)
	table.insert(community.links, {name=name, link=link});
end

--Creating an Engaged Community

--Define community challenges
community.challenges = {};

--Create a function to add challenges
function community.addChallenge(name, topic, reward)
	table.insert(community.challenges, {name=name, topic=topic, reward=reward});
end

--Define community contests 
community.contests = {};

--Create a function to add contests
function community.addContest(name, deadline, rules)
	table.insert(community.contests, {name=name, deadline=deadline, rules=rules});
end

--Define community awards
community.awards = {};

--Create a function to add awards
function community.addAward(name, recipient, criteria)
	table.insert(community.awards, {name=name, recipient=recipient, criteria=criteria});
end

--Creating an Inclusive Community

--Define community guidelines
community.guidelines = {};

--Create a function to add guidelines
function community.addGuideline(name, description)
	table.insert(community.guidelines, {name=name, description=description});
end

--Define community resources
community.resources = {};

--Create a function to add resources
function community.addResource(name, link)
	table.insert(community.resources, {name=name, link=link});
end

--Define community support
community.support = {};

--Create a function to add support
function community.addSupport(name, description)
	table.insert(community.support, {name=name, description=description});
end

--Define community feedback
community.feedback = {};

--Create a function to add feedback
function community.addFeedback(name, recipient, message)
	table.insert(community.feedback, {name=name, recipient=recipient, message=message});
end

--End of Code

--]]
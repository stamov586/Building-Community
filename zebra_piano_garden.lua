local BuildingCommunity = {}

-- Create a function that initializes the BuildingCommunity table
function BuildingCommunity.init()
	BuildingCommunity.builds = {}
end

-- Create a function that adds a new build to the BuildingCommunity table
function BuildingCommunity.addBuild(name, description)
	BuildingCommunity.builds[name] = {
		description = description
	}
end

-- Create a function that returns the description of a build
function BuildingCommunity.getBuildDescription(name)
	return BuildingCommunity.builds[name].description
end

-- Create a function that updates the description of a build
function BuildingCommunity.updateBuild(name, description)
	BuildingCommunity.builds[name].description = description
end

-- Create a function that removes a build from the BuildingCommunity table
function BuildingCommunity.removeBuild(name)
	BuildingCommunity.builds[name] = nil
end

-- Create a function that counts the number of builds stored in the BuildingCommunity table
function BuildingCommunity.countBuilds()
	local count = 0
	for k, v in pairs(BuildingCommunity.builds) do
		count = count + 1
	end
	return count
end

-- Create a function that prints all the builds stored in the BuildingCommunity table
function BuildingCommunity.printBuilds()
	for k, v in pairs(BuildingCommunity.builds) do
		print(k .. ": " .. v.description)
	end
end

-- Create a function that checks if a build exists in the BuildingCommunity table
function BuildingCommunity.doesBuildExist(name)
	return BuildingCommunity.builds[name] ~= nil
end

-- Create a function that posts a build to a forum
function BuildingCommunity.postBuild(name)
	local build = BuildingCommunity.builds[name]
	if build then
		-- post the build to a forum
		return true
	else
		return false -- build does not exist
	end
end

-- Create a function that creates a new thread for a build
function BuildingCommunity.createThread(name)
	if BuildingCommunity.doesBuildExist(name) then
		-- create a new thread for the build
		return true
	else
		return false -- build does not exist
	end
end

-- Create a function that posts a build to a chatroom
function BuildingCommunity.postBuildToChat(name)
	local build = BuildingCommunity.builds[name]
	if build then
		-- post the build to a chatroom
		return true
	else
		return false -- build does not exist
	end
end

-- Create a function that adds a comment to a build
function BuildingCommunity.addComment(name, comment)
	local build = BuildingCommunity.builds[name]
	if build then
		-- add the comment to the build
		return true
	else
		return false -- build does not exist
	end
end

-- Create a function that searches the BuildingCommunity table for builds that contain a particular keyword
function BuildingCommunity.search(keyword)
	for k, v in pairs(BuildingCommunity.builds) do
		if string.find(string.lower(v.description), string.lower(keyword)) then
			-- found a match, print the build
			print(k .. ": " .. v.description)
		end
	end
end

return BuildingCommunity
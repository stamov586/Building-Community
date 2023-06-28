%Code for 'Building Community'
%This code will demonstrate how the Matlab language can be used to build a
%functional and welcoming community of users.

%Create an array for all of the members in the community
members = ["John", "Sally", "Sonia", "Demetri", "Akemi"];

%Set up parameters for user interaction
greeting = 'Welcome to our community! How can I help you today?';

%Set up a loop to greet each user
for i = 1:length(members)
    disp([greeting, ' ', members(i), '!']);
end

%Prompt user for feedback
response1 = input("On a scale of 1-5, how would you rate the experience? ");

%Print a response based on user input
if response1 >= 4 
    disp("Thank you for your positive feedback! We appreciate your support!");
elseif response1 >=-1 && response1 < 4
    disp("We are sorry to hear that you weren't completely satisfied. Please let us know how we can improve.");
end

%Provide a survey page
disp("We would love to hear your opinions about our community. Please take a few moments to complete this survey:");

%Check if user has completed survey
surveyCompleted = input("Have you completed the survey? (yes/no) ", 's');

%Print response based on survey completion
if strcmp(surveyCompleted, 'yes')
    disp("Thank you for your feedback! Your opinion is greatly appreciated.");
else
    disp("Please take a few moments to complete the survey. We love to hear your feedback!");
end

%Link to user feedback page
disp("We would also love to hear about your experiences in our community. Please click the link below to share your thoughts:");
disp("https://ourcommunityfeedback.com");

%Display closing message
disp("Thank you again for being part of our community. Have a great day!");
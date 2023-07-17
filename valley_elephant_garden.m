% This code can be used to create a program to build community
% by allowing individuals to have conversations with each other.

% Create a GUI to display the conversation
figure('Name','Building Community');

% Create a button to open a conversation window
openChatButton = uicontrol('Style','PushButton','Units','normalized',...
    'String','Open Chat','Position', [0.2 0.9 0.4 0.1]);

% Initialize the conversation
sentMessages = cell(0);
receivedMessages = cell(0);

% Set up a function for when the open chat button is pressed
set(openChatButton, 'Callback', @openChatWindow);

% Create function to open the conversation window
function openChatWindow(hObject,callbackdata)
    figure('Name','Community Conversation');
    textField1 = uicontrol('Style','text',...
        'String','Enter your message','Units','normalized',...
        'Position',[0.05 0.7 0.9 0.2],'FontSize',14);
    editField1 = uicontrol('Style','edit','Units','normalized',...
        'String','','Position',[0.05 0.4 0.9 0.2]);
    sendButton = uicontrol('Style','PushButton','Units','normalized',...
        'String','Send','Position',[0.2 0.2 0.3 0.1]);
    exitButton = uicontrol('Style','PushButton','Units','normalized',...
        'String','Exit','Position',[0.55 0.2 0.3 0.1]);
    
    % Specify functions for the send and exit buttons
    set(sendButton, 'Callback',@sendMessage);
    set(exitButton, 'Callback',@exitConversation);
    
    % Create a function to send a message
    function sendMessage(hObject,callbackdata)
        % Get the message
        message = get(editField1, 'String');
        sentMessages{end+1} = message;
        
        % Generate a response
        response = generate_response(message);
        receivedMessages{end+1} = response;
        
        % Display both the message and the response
        textField2 = uicontrol('Style','text','Units','normalized',...
            'String',['You: ',message],'Position',[0.05 0.9 0.9 0.1],...
            'FontSize',14);
        textField3 = uicontrol('Style','text','Units','normalized',...
            'String',['Them: ',response],'Position',[0.05 0.8 0.9 0.1],...
            'FontSize',14);
    end

    % Create a function to exit the conversation
    function exitConversation(hObject,callbackdata)
        close all;
    end
end

% Generate a response
function response = generate_response(message)
    % Specify parameters
    response_library = {'That sounds great!','That makes sense.',...
        'I agree with you.','Thanks for sharing.',...
        'I hear what you are saying.','That is interesting.'};
    
    % Generate a response
    random_response_idx = randi([1 length(response_library)]);
    response = response_library{random_response_idx};
end
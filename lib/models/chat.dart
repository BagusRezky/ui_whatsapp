class Chat {
  final String image;
  final String name;
  final String messageDate;
  final String mostRecentMessage;

  Chat({
    required this.image,
    required this.name,
    required this.messageDate,
    required this.mostRecentMessage,
  });
}
   var chatList = [
    Chat(
      image: 'https://www.includehelp.com/Members/images/aman-gautam.jpg',
      name: 'John Doe',
      messageDate: '7/11/2023',
      mostRecentMessage: 'Hello, how are you?',
    ),
    Chat(
      image: 'https://www.includehelp.com/Members/images/aman-gautam.jpg',
      name: 'fahmi Doe',
      messageDate: '07/11/2023',
      mostRecentMessage: 'I am fine, thank you.',
    ),
    Chat(
       image: 'https://www.includehelp.com/Members/images/aman-gautam.jpg',
      name: 'Jelly Doe',
      messageDate: '07/11/2023',
      mostRecentMessage: 'Hello, how are you?',
    ),
    
  ];


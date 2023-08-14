// ignore_for_file: file_names

class AppConstants {
  static String url = 'https://www.canva.com/';

    static String customCSS = '''
h1 {
  font-size: 36px;
  font-weight: bold;
  color: #333333;
  /* Add more styles as needed */
}

h2 {
  font-size: 90px;
  font-weight: bold;
  color: #555555;
  /* Add more styles as needed */
}

h3 {
  font-size: 84px;
  font-weight: bold;
  color: #777777;
  /* Add more styles as needed */
}

/* Styling for Paragraph Text */
p {
  font-size: 66px;
  color: #333333;
  /* Add more styles as needed */
}

#test {
   background: green;
}

  ''';

    static String useragent = "hello";
    static Map<String,String> header = {"sample": "hello this is custom header"};
    static String useragentjs = 'alert("Hello! I am an alert box!!");';
}

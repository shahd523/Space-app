class Planet{
  String name;
  String image;
  String model;
  String title;
  String about;
  String distance;
  String length;
  String orbitalperiod;
  String radies;
  String mass;
  String gravity;
  String surface;
  Planet(this.name,this.image,this.model,this.title,this.about,
  this.distance,this.length,this.orbitalperiod,this.radies,
      this.mass,this.gravity,this.surface);
  static List<Planet>planets=[
    Planet("Sun", "assets/images/sun.png", "assets/images/sun.png", "The Sun: Our Solar System'sStar",
        "The Sun is the heart of our solar system, a massive ball of plasma that provides heat, light, and energy to everything within its gravitational pull. Its immense size and temperature are fueled by nuclear fusion, a process that combines hydrogen atoms into helium, releasing vast amounts of energy. The Sun's magnetic field, which is constantly changing, influences solar activity like sunspots and solar flares, affecting space weather and potentially disrupting Earth-based technologies."
        , "0", "0","0","695,700","1.989 × 10³⁰"
        ,"274", "6.09 × 10¹²"),
    Planet("Mercury","assets/images/mercury.png",
        "assets/images/mercury.png", "Mercury: The Closest Planet"
        , "The Sun is the heart of our solar system, a massive ball of plasma that provides heat, light, and energy to everything within its gravitational pull. Its immense size and temperature are fueled by nuclear fusion, a process that combines hydrogen atoms into helium, releasing vast amounts of energy. The Sun's magnetic field, which is constantly changing, influences solar activity like sunspots and solar flares, affecting space weather and potentially disrupting Earth-based technologies."
        , "57909227", "1407.6", "0.24", "2439.7", "3.301 × 10²³","3.7", "7.48 × 10⁷"),
    Planet("Venus", "assets/images/venus.png", "assets/images/venus.png","Venus: Earth's Toxic Twin", "Venus is often referred to as Earth's twin due to its similar size and composition. However, its thick atmosphere, composed primarily of carbon dioxide, traps heat, making it the hottest planet in our solar system. This greenhouse effect has created a hostile environment with temperatures hot enough to melt lead. Venus is also shrouded in a thick layer of sulfuric acid clouds, which reflect sunlight and give it a yellowish appearance."
        , "108209072","5832.2","0.62", "6051.8", "4.867 × 10²⁴","8.87","4.60 × 10⁸"),
  Planet("Earth", "assets/images/earth 1.png","assets/images/earth 1.png", "Earth: Our Blue Marble", "Earth is the only known planet in the universe that supports life. Its unique combination of factors, including liquid water, a breathable atmosphere, and a suitable distance from the Sun, has created the ideal conditions for the development of complex organisms. Earth's magnetic field protects it from harmful solar radiation, and its atmosphere helps to regulate temperature and weather patterns.",
      "149598026", "23.93", "1", "6371","5.972 × 10²⁴","9.81","5.10 × 10⁸"),
    Planet("Mars", "assets/images/mars.png","assets/images/mars.png","Mars: The Red Planet", "Mars, often called the Red Planet due to its reddish hue caused by iron oxide, is a cold, rocky world with a thin atmosphere. It has polar ice caps, ancient riverbeds, and evidence of past volcanic activity, suggesting that it once had a warmer, wetter climate. Mars is a prime target for exploration due to its potential for past or present life, and NASA's Perseverance rover is currently searching for signs of ancient microbial life on the planet's surface.",
        "227943824", "24.62","1.88", "3,389.5", "6.39 × 10²³"
        , "3.71", "3.71"),
    Planet("Jupiter", "assets/images/jupiter.png","assets/images/jupiter.png","Jupiter: The Gas Giant", "Jupiter is the largest planet in our solar system, a gas giant composed primarily of hydrogen and helium. Its Great Red Spot, a massive storm that has been raging for centuries, is a testament to its turbulent atmosphere. Jupiter has a strong magnetic field and numerous moons, including Europa, which is believed to have a subsurface ocean that could potentially harbor life.",
        "1426666422","10.66", "29.46", "58232", "5.683 × 10²⁶","10.44","4.27 × 10¹⁵")
 ,Planet("Uranus", "assets/images/uranus 1.png","assets/images/uranus 1.png", "Uranus: The Tilted Planet","Uranus is an ice giant with a unique axial tilt, causing its seasons to be extreme. It is surrounded by faint rings and has numerous moons, including Miranda, known for its chaotic terrain. Uranus's atmosphere is composed primarily of hydrogen, helium, and methane, giving it a pale blue color."
        ,"2870990000", "17.24", "84.01", "25362", "8.681 × 10²⁵","8.69", "8.1 × 10¹⁵")
  ,Planet("Neptune", "assets/images/neptune.png", "assets/images/neptune.png","Neptune: The Distant World", "Neptune is the farthest planet from the Sun and is another ice giant. Its atmosphere is similar to Uranus, but it is a deeper blue color due to the presence of methane. Neptune has several moons, including Triton, which orbits the planet in a retrograde direction and is believed to be a captured Kuiper Belt object.",
        "4498252900", "16.11", "16.11", "164.8", "24622", "1.024 × 10²⁶", "11.15")
  ];

}
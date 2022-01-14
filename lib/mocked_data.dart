final mockedContacts = [
  {
    "gender": "male",
    "name": "Ronald Fontai",
    "location": {
      "street": {"number": 1507, "name": "Place du 8 Novembre 1942"},
      "city": "Rain",
      "state": "Nidwalden",
      "country": "Switzerland",
      "postcode": 2888,
      "coordinates": {"latitude": "-55.4560", "longitude": "-94.4109"},
      "timezone": {"offset": "-4:00", "description": "Atlantic Time (Canada), Caracas, La Paz"}
    },
    "email": "ronald.fontai@example.com",
    "dob": {"date": "1960-10-29T14:08:42.710Z", "age": 62},
    "phone": "077 918 66 21",
    "cell": "077 230 76 93",
    "id": {"name": "AVS", "value": "756.7340.6204.24"},
    "picture": {
      "large": "https://randomuser.me/api/portraits/men/86.jpg",
      "medium": "https://randomuser.me/api/portraits/med/men/86.jpg",
      "thumbnail": "https://randomuser.me/api/portraits/thumb/men/86.jpg"
    },
  },
  {
    "gender": "male",
    "name": "Zackary Liu",
    "location": {
      "street": {"number": 3820, "name": "Vimy St"},
      "city": "Belmont",
      "state": "Yukon",
      "country": "Canada",
      "postcode": "U4C 0X1",
      "coordinates": {"latitude": "-55.5283", "longitude": "29.3022"},
      "timezone": {"offset": "+5:30", "description": "Bombay, Calcutta, Madras, New Delhi"}
    },
    "email": "zackary.liu@example.com",
    "dob": {"date": "1979-11-10T11:04:18.632Z", "age": 43},
    "phone": "397-843-6963",
    "cell": "989-703-9088",
    "id": {"name": "", "value": null},
    "picture": {
      "large": "https://randomuser.me/api/portraits/men/92.jpg",
      "medium": "https://randomuser.me/api/portraits/med/men/92.jpg",
      "thumbnail": "https://randomuser.me/api/portraits/thumb/men/92.jpg"
    },
  },
  {
    "gender": "female",
    "name": "Summer Taylor",
    "location": {
      "street": {"number": 5260, "name": "Main Street East"},
      "city": "Blenheim",
      "state": "Tasman",
      "country": "New Zealand",
      "postcode": 83977,
      "coordinates": {"latitude": "34.6301", "longitude": "23.8763"},
      "timezone": {"offset": "+5:30", "description": "Bombay, Calcutta, Madras, New Delhi"}
    },
    "email": "summer.taylor@example.com",
    "dob": {"date": "1947-09-05T05:27:46.980Z", "age": 75},
    "phone": "(747)-489-5030",
    "cell": "(207)-081-6309",
    "id": {"name": "", "value": null},
    "picture": {
      "large": "https://randomuser.me/api/portraits/women/45.jpg",
      "medium": "https://randomuser.me/api/portraits/med/women/45.jpg",
      "thumbnail": "https://randomuser.me/api/portraits/thumb/women/45.jpg"
    },
  },
  {
    "gender": "female",
    "name": "Charlotte Mitchelle",
    "location": {
      "street": {"number": 4080, "name": "Cackson St"},
      "city": "Norwalk",
      "state": "Florida",
      "country": "United States",
      "postcode": 98213,
      "coordinates": {"latitude": "-72.1310", "longitude": "-149.9181"},
      "timezone": {"offset": "+1:00", "description": "Brussels, Copenhagen, Madrid, Paris"}
    },
    "email": "charlotte.mitchelle@example.com",
    "dob": {"date": "1986-06-11T16:23:41.271Z", "age": 36},
    "phone": "(130)-663-2746",
    "cell": "(047)-023-3308",
    "id": {"name": "SSN", "value": "650-92-9525"},
    "picture": {
      "large": "https://randomuser.me/api/portraits/women/1.jpg",
      "medium": "https://randomuser.me/api/portraits/med/women/1.jpg",
      "thumbnail": "https://randomuser.me/api/portraits/thumb/women/1.jpg"
    },
  },
  {
    "gender": "female",
    "name": "Maya Dean",
    "location": {
      "street": {"number": 7073, "name": "New Street"},
      "city": "Truro",
      "state": "Essex",
      "country": "United Kingdom",
      "postcode": "VZ0Z 0EA",
      "coordinates": {"latitude": "-3.2042", "longitude": "139.0632"},
      "timezone": {"offset": "-9:00", "description": "Alaska"}
    },
    "email": "maya.dean@example.com",
    "dob": {"date": "1952-11-06T05:12:53.002Z", "age": 70},
    "phone": "015396 22216",
    "cell": "0702-655-342",
    "id": {"name": "NINO", "value": "ON 13 40 59 S"},
    "picture": {
      "large": "https://randomuser.me/api/portraits/women/90.jpg",
      "medium": "https://randomuser.me/api/portraits/med/women/90.jpg",
      "thumbnail": "https://randomuser.me/api/portraits/thumb/women/90.jpg"
    },
  },
  {
    "gender": "female",
    "name": "Alice Graham",
    "location": {
      "street": {"number": 7271, "name": "Timber Wolf Trail"},
      "city": "Wagga Wagga",
      "state": "Queensland",
      "country": "Australia",
      "postcode": 1930,
      "coordinates": {"latitude": "-13.7641", "longitude": "123.0025"},
      "timezone": {"offset": "+1:00", "description": "Brussels, Copenhagen, Madrid, Paris"}
    },
    "email": "alice.graham@example.com",
    "dob": {"date": "1974-11-11T11:29:29.861Z", "age": 48},
    "phone": "05-6874-9526",
    "cell": "0465-837-740",
    "id": {"name": "TFN", "value": "588693251"},
    "picture": {
      "large": "https://randomuser.me/api/portraits/women/64.jpg",
      "medium": "https://randomuser.me/api/portraits/med/women/64.jpg",
      "thumbnail": "https://randomuser.me/api/portraits/thumb/women/64.jpg"
    },
  },
  {
    "gender": "female",
    "name": "Noémie Hubert",
    "location": {
      "street": {"number": 1923, "name": "Rue de L'Abbé-Rousselot"},
      "city": "Bettmeralp",
      "state": "Zürich",
      "country": "Switzerland",
      "postcode": 7149,
      "coordinates": {"latitude": "77.9239", "longitude": "-95.1680"},
      "timezone": {"offset": "-3:00", "description": "Brazil, Buenos Aires, Georgetown"}
    },
    "email": "noemie.hubert@example.com",
    "dob": {"date": "1997-11-22T00:40:01.087Z", "age": 25},
    "phone": "076 162 42 97",
    "cell": "078 944 47 55",
    "id": {"name": "AVS", "value": "756.5779.9963.90"},
    "picture": {
      "large": "https://randomuser.me/api/portraits/women/49.jpg",
      "medium": "https://randomuser.me/api/portraits/med/women/49.jpg",
      "thumbnail": "https://randomuser.me/api/portraits/thumb/women/49.jpg"
    },
  },
  {
    "gender": "male",
    "name": "Jacob Pelletier",
    "location": {
      "street": {"number": 3312, "name": "Main St"},
      "city": "Elgin",
      "state": "British Columbia",
      "country": "Canada",
      "postcode": "F8S 1Z4",
      "coordinates": {"latitude": "-26.3340", "longitude": "16.6272"},
      "timezone": {"offset": "+4:00", "description": "Abu Dhabi, Muscat, Baku, Tbilisi"}
    },
    "email": "jacob.pelletier@example.com",
    "dob": {"date": "1971-08-09T00:00:08.929Z", "age": 51},
    "phone": "609-799-6931",
    "cell": "801-037-6995",
    "id": {"name": "", "value": null},
    "picture": {
      "large": "https://randomuser.me/api/portraits/men/17.jpg",
      "medium": "https://randomuser.me/api/portraits/med/men/17.jpg",
      "thumbnail": "https://randomuser.me/api/portraits/thumb/men/17.jpg"
    },
  },
  {
    "gender": "male",
    "name": "Mads Rasmussen",
    "location": {
      "street": {"number": 9158, "name": "Skjernvej"},
      "city": "Horsens",
      "state": "Syddanmark",
      "country": "Denmark",
      "postcode": 15987,
      "coordinates": {"latitude": "-42.9760", "longitude": "-110.0534"},
      "timezone": {"offset": "+2:00", "description": "Kaliningrad, South Africa"}
    },
    "email": "mads.rasmussen@example.com",
    "dob": {"date": "1986-06-06T11:53:21.472Z", "age": 36},
    "phone": "78183911",
    "cell": "92812178",
    "id": {"name": "CPR", "value": "060686-2751"},
    "picture": {
      "large": "https://randomuser.me/api/portraits/men/8.jpg",
      "medium": "https://randomuser.me/api/portraits/med/men/8.jpg",
      "thumbnail": "https://randomuser.me/api/portraits/thumb/men/8.jpg"
    },
  },
  {
    "gender": "male",
    "name": "Ray Long",
    "location": {
      "street": {"number": 9227, "name": "Locust Rd"},
      "city": "Brisbane",
      "state": "Northern Territory",
      "country": "Australia",
      "postcode": 5218,
      "coordinates": {"latitude": "-29.8377", "longitude": "-31.6529"},
      "timezone": {"offset": "+10:00", "description": "Eastern Australia, Guam, Vladivostok"}
    },
    "email": "ray.long@example.com",
    "dob": {"date": "1990-10-23T03:43:23.368Z", "age": 32},
    "phone": "05-3208-8255",
    "cell": "0484-511-208",
    "id": {"name": "TFN", "value": "842047206"},
    "picture": {
      "large": "https://randomuser.me/api/portraits/men/70.jpg",
      "medium": "https://randomuser.me/api/portraits/med/men/70.jpg",
      "thumbnail": "https://randomuser.me/api/portraits/thumb/men/70.jpg"
    },
  },
  {
    "gender": "female",
    "name": "Silke Heiden",
    "location": {
      "street": {"number": 4484, "name": "Lindenweg"},
      "city": "Roßwein",
      "state": "Baden-Württemberg",
      "country": "Germany",
      "postcode": 42518,
      "coordinates": {"latitude": "69.8972", "longitude": "38.7333"},
      "timezone": {"offset": "+11:00", "description": "Magadan, Solomon Islands, New Caledonia"}
    },
    "email": "silke.heiden@example.com",
    "dob": {"date": "1983-09-04T22:44:03.669Z", "age": 39},
    "phone": "0042-1242048",
    "cell": "0178-8377522",
    "id": {"name": "", "value": null},
    "picture": {
      "large": "https://randomuser.me/api/portraits/women/82.jpg",
      "medium": "https://randomuser.me/api/portraits/med/women/82.jpg",
      "thumbnail": "https://randomuser.me/api/portraits/thumb/women/82.jpg"
    },
  },
  {
    "gender": "male",
    "name": "Nicklas Olsen",
    "location": {
      "street": {"number": 8814, "name": "Mølleparken"},
      "city": "Jerslev Sj",
      "state": "Danmark",
      "country": "Denmark",
      "postcode": 61459,
      "coordinates": {"latitude": "-40.3544", "longitude": "-85.0277"},
      "timezone": {"offset": "+11:00", "description": "Magadan, Solomon Islands, New Caledonia"}
    },
    "email": "nicklas.olsen@example.com",
    "dob": {"date": "1958-04-01T00:56:21.073Z", "age": 64},
    "phone": "49925141",
    "cell": "76870535",
    "id": {"name": "CPR", "value": "010458-4950"},
    "picture": {
      "large": "https://randomuser.me/api/portraits/men/39.jpg",
      "medium": "https://randomuser.me/api/portraits/med/men/39.jpg",
      "thumbnail": "https://randomuser.me/api/portraits/thumb/men/39.jpg"
    },
  },
  {
    "gender": "male",
    "name": "Topias Autio",
    "location": {
      "street": {"number": 9019, "name": "Reijolankatu"},
      "city": "Närpes",
      "state": "Tavastia Proper",
      "country": "Finland",
      "postcode": 80256,
      "coordinates": {"latitude": "55.4876", "longitude": "-175.6199"},
      "timezone": {"offset": "+4:30", "description": "Kabul"}
    },
    "email": "topias.autio@example.com",
    "dob": {"date": "1967-02-18T20:00:42.550Z", "age": 55},
    "phone": "08-620-574",
    "cell": "042-414-40-41",
    "id": {"name": "HETU", "value": "NaNNA839undefined"},
    "picture": {
      "large": "https://randomuser.me/api/portraits/men/52.jpg",
      "medium": "https://randomuser.me/api/portraits/med/men/52.jpg",
      "thumbnail": "https://randomuser.me/api/portraits/thumb/men/52.jpg"
    },
  },
  {
    "gender": "female",
    "name": "پریا سلطانی نژاد",
    "location": {
      "street": {"number": 554, "name": "پارک طالقانی"},
      "city": "نیشابور",
      "state": "کرمانشاه",
      "country": "Iran",
      "postcode": 23866,
      "coordinates": {"latitude": "21.8587", "longitude": "48.9509"},
      "timezone": {"offset": "+5:45", "description": "Kathmandu"}
    },
    "email": "pry.sltnynjd@example.com",
    "dob": {"date": "1998-08-29T23:51:48.122Z", "age": 24},
    "phone": "075-42912816",
    "cell": "0919-844-3265",
    "id": {"name": "", "value": null},
    "picture": {
      "large": "https://randomuser.me/api/portraits/women/41.jpg",
      "medium": "https://randomuser.me/api/portraits/med/women/41.jpg",
      "thumbnail": "https://randomuser.me/api/portraits/thumb/women/41.jpg"
    },
  },
  {
    "gender": "female",
    "name": "Alicia Blanchard",
    "location": {
      "street": {"number": 5176, "name": "Rue du Cardinal-Gerlier"},
      "city": "Aubervilliers",
      "state": "Finistère",
      "country": "France",
      "postcode": 89648,
      "coordinates": {"latitude": "-14.0974", "longitude": "-7.3329"},
      "timezone": {"offset": "-3:00", "description": "Brazil, Buenos Aires, Georgetown"}
    },
    "email": "alicia.blanchard@example.com",
    "dob": {"date": "1961-02-11T06:03:05.400Z", "age": 61},
    "phone": "03-97-74-08-47",
    "cell": "06-91-33-27-34",
    "id": {"name": "INSEE", "value": "2NNaN98988050 40"},
    "picture": {
      "large": "https://randomuser.me/api/portraits/women/30.jpg",
      "medium": "https://randomuser.me/api/portraits/med/women/30.jpg",
      "thumbnail": "https://randomuser.me/api/portraits/thumb/women/30.jpg"
    },
  },
  {
    "gender": "female",
    "name": "Mary Brun",
    "location": {
      "street": {"number": 1233, "name": "Rue Abel"},
      "city": "Saules (Be)",
      "state": "Valais",
      "country": "Switzerland",
      "postcode": 8709,
      "coordinates": {"latitude": "81.8934", "longitude": "162.2800"},
      "timezone": {"offset": "-8:00", "description": "Pacific Time (US & Canada)"}
    },
    "email": "mary.brun@example.com",
    "dob": {"date": "1980-06-16T03:46:48.484Z", "age": 42},
    "phone": "075 735 15 81",
    "cell": "076 042 67 87",
    "id": {"name": "AVS", "value": "756.5605.3494.36"},
    "picture": {
      "large": "https://randomuser.me/api/portraits/women/58.jpg",
      "medium": "https://randomuser.me/api/portraits/med/women/58.jpg",
      "thumbnail": "https://randomuser.me/api/portraits/thumb/women/58.jpg"
    },
  },
  {
    "gender": "female",
    "name": "Jeanne Young",
    "location": {
      "street": {"number": 2656, "name": "College Ave"},
      "city": "Southampton",
      "state": "Saskatchewan",
      "country": "Canada",
      "postcode": "Y1M 9M0",
      "coordinates": {"latitude": "-77.0045", "longitude": "176.9392"},
      "timezone": {"offset": "+2:00", "description": "Kaliningrad, South Africa"}
    },
    "email": "jeanne.young@example.com",
    "dob": {"date": "1981-01-18T00:32:00.223Z", "age": 41},
    "phone": "110-434-2643",
    "cell": "324-033-8661",
    "id": {"name": "", "value": null},
    "picture": {
      "large": "https://randomuser.me/api/portraits/women/43.jpg",
      "medium": "https://randomuser.me/api/portraits/med/women/43.jpg",
      "thumbnail": "https://randomuser.me/api/portraits/thumb/women/43.jpg"
    },
  },
  {
    "gender": "female",
    "name": "Indira Novaes",
    "location": {
      "street": {"number": 1732, "name": "Rua Santa Maria "},
      "city": "Vitória da Conquista",
      "state": "Mato Grosso",
      "country": "Brazil",
      "postcode": 33501,
      "coordinates": {"latitude": "85.9934", "longitude": "-156.0490"},
      "timezone": {"offset": "-1:00", "description": "Azores, Cape Verde Islands"}
    },
    "email": "indira.novaes@example.com",
    "dob": {"date": "1959-10-27T10:29:22.582Z", "age": 63},
    "phone": "(14) 8512-0446",
    "cell": "(36) 6990-1612",
    "id": {"name": "", "value": null},
    "picture": {
      "large": "https://randomuser.me/api/portraits/women/43.jpg",
      "medium": "https://randomuser.me/api/portraits/med/women/43.jpg",
      "thumbnail": "https://randomuser.me/api/portraits/thumb/women/43.jpg"
    },
  },
  {
    "gender": "female",
    "name": "Begüm Atan",
    "location": {
      "street": {"number": 7447, "name": "Şehitler Cd"},
      "city": "Gümüşhane",
      "state": "Kırıkkale",
      "country": "Turkey",
      "postcode": 47660,
      "coordinates": {"latitude": "-43.3193", "longitude": "89.0642"},
      "timezone": {"offset": "0:00", "description": "Western Europe Time, London, Lisbon, Casablanca"}
    },
    "email": "begum.atan@example.com",
    "dob": {"date": "1993-09-28T09:35:10.190Z", "age": 29},
    "phone": "(887)-624-2505",
    "cell": "(191)-997-3043",
    "id": {"name": "", "value": null},
    "picture": {
      "large": "https://randomuser.me/api/portraits/women/5.jpg",
      "medium": "https://randomuser.me/api/portraits/med/women/5.jpg",
      "thumbnail": "https://randomuser.me/api/portraits/thumb/women/5.jpg"
    },
  },
  {
    "gender": "male",
    "name": "Édouard Le Gall",
    "location": {
      "street": {"number": 5148, "name": "Rue du Bât-D'Argent"},
      "city": "Rohrbach",
      "state": "Basel-Landschaft",
      "country": "Switzerland",
      "postcode": 2726,
      "coordinates": {"latitude": "56.6256", "longitude": "119.2653"},
      "timezone": {"offset": "-1:00", "description": "Azores, Cape Verde Islands"}
    },
    "email": "edouard.legall@example.com",
    "dob": {"date": "1962-11-29T23:27:54.180Z", "age": 60},
    "phone": "075 878 85 16",
    "cell": "076 975 04 03",
    "id": {"name": "AVS", "value": "756.9812.2164.07"},
    "picture": {
      "large": "https://randomuser.me/api/portraits/men/4.jpg",
      "medium": "https://randomuser.me/api/portraits/med/men/4.jpg",
      "thumbnail": "https://randomuser.me/api/portraits/thumb/men/4.jpg"
    },
  }
];
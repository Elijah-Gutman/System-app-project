# db/seeds.rb

# Destroy existing records to avoid duplication
System.destroy_all
Quiz.destroy_all
Question.destroy_all

# Systems
System.create!([
  {
    country_name: "USA",
    economic_system: "Free Market Capitalism",
    economic_index: 1,
    governmental_system: "Representative Republic",
    governmental_index: 1,
    cultural_system: "Classical Liberalism",
    cultural_index: 1,
    image_url: "https://cache.desktopnexus.com/thumbseg/1146/1146327-bigthumbnail.jpg",
    wiki_page: "https://en.wikipedia.org/wiki/United_States",
  },
  {
    country_name: "Canada",
    economic_system: "Socialism",
    economic_index: 2,
    governmental_system: "Parliamentary Democracy",
    governmental_index: 2,
    cultural_system: "Modern Liberalism",
    cultural_index: 2,
    image_url: "https://c8.alamy.com/comp/EPCCCG/canada-political-map-with-capital-ottawa-national-borders-important-EPCCCG.jpg",
    wiki_page: "https://en.wikipedia.org/wiki/Canada",
  },
  {
    country_name: "Sweden",
    economic_system: "Socialism",
    economic_index: 2,
    governmental_system: "Parliamentary Democracy",
    governmental_index: 2,
    cultural_system: "Modern Liberalism",
    cultural_index: 2,
    image_url: "https://cdn.britannica.com/96/69896-004-9E9272BD/Map-of-Sweden.jpg",
    wiki_page: "https://en.wikipedia.org/wiki/Sweden",
  },
  {
    country_name: "Russia",
    economic_system: "Oligarchy",
    economic_index: 3,
    governmental_system: "Authoritarian Strongmanism",
    governmental_index: 3,
    cultural_system: "Eastern Orthodox",
    cultural_index: 3,
    image_url: "https://i.natgeofe.com/k/fe6a3bb6-b584-470a-a694-2c3c7590023b/russia-map-2022_3x2.jpg",
    wiki_page: "https://en.wikipedia.org/wiki/Russia",
  },
  {
    country_name: "Japan",
    economic_system: "Free Market Capitalism",
    economic_index: 1,
    governmental_system: "Representative Republic",
    governmental_index: 1,
    cultural_system: "Atheist",
    cultural_index: 3,
    image_url: "https://cdn.britannica.com/95/1795-050-9EFCC4F0/Japan-map-features-locator.jpg",
    wiki_page: "https://en.wikipedia.org/wiki/Japan",
  },
  {
    country_name: "Luxembourg",
    economic_system: "Socialism",
    economic_index: 2,
    governmental_system: "Parliamentary Democracy",
    governmental_index: 1,
    cultural_system: "Classical Liberalism",
    cultural_index: 1,
    image_url: "https://www.worldatlas.com/r/w1200/upload/08/56/62/lu-01.jpg",
    wiki_page: "https://en.wikipedia.org/wiki/Luxembourg",
  },
  {
    country_name: "Germany",
    economic_system: "Socialism",
    economic_index: 2,
    governmental_system: "Parliamentary Democracy",
    governmental_index: 2,
    cultural_system: "Modern Liberalism",
    cultural_index: 2,
    image_url: "https://cdn.britannica.com/98/898-050-FABCB62A/Germany.jpg",
    wiki_page: "https://en.wikipedia.org/wiki/Germany",
  },
])

# Quizzes and Questions
geography_quiz = Quiz.create!(name: "World Geography")
philosophy_quiz = Quiz.create!(name: "Philosophy")
history_quiz = Quiz.create!(name: "World History")
economics_quiz = Quiz.create!(name: "Economics")
government_quiz = Quiz.create!(name: "Forms of Government")

# Geography Questions
geography_quiz.questions.create!([
  { content: "What is the capital of France?", options: ["Berlin", "Paris", "Rome", "Madrid"], answer: "Paris" },
  { content: "Which country has the largest land area?", options: ["USA", "China", "Russia", "Canada"], answer: "Russia" },
  { content: "What is the longest river in the world?", options: ["Amazon", "Yangtze", "Nile", "Mississippi"], answer: "Nile" },
  { content: "What is the smallest country in the world?", options: ["Monaco", "San Marino", "Vatican City", "Nauru"], answer: "Vatican City" },
  { content: "What is the largest ocean in the world?", options: ["Atlantic", "Indian", "Arctic", "Pacific"], answer: "Pacific" },
  { content: "What is the tallest mountain in the world?", options: ["K2", "Kangchenjunga", "Mount Everest", "Lhotse"], answer: "Mount Everest" },
])

# Philosophy Questions
philosophy_quiz.questions.create!([
  { content: "Who wrote 'The Republic'?", options: ["Aristotle", "Plato", "Socrates", "Descartes"], answer: "Plato" },
  { content: "What is the term for the study of being?", options: ["Ethics", "Metaphysics", "Epistemology", "Logic"], answer: "Metaphysics" },
  { content: "Which philosopher said 'I think, therefore I am'?", options: ["Locke", "Descartes", "Kant", "Hegel"], answer: "Descartes" },
])

# History Questions
history_quiz.questions.create!([
  { content: "Who was the first President of the USA?", options: ["George Washington", "Abraham Lincoln", "Thomas Jefferson", "John Adams"], answer: "George Washington" },
  { content: "In what year did World War II end?", options: ["1945", "1939", "1950", "1941"], answer: "1945" },
  { content: "Which empire was known as the 'Land of the Rising Sun'?", options: ["Chinese", "Ottoman", "Japanese", "Roman"], answer: "Japanese" },
])

# Economics Questions
economics_quiz.questions.create!([
  { content: "What is the term for a sustained increase in prices?", options: ["Deflation", "Recession", "Inflation", "Depression"], answer: "Inflation" },
  { content: "Who is considered the father of modern economics?", options: ["Adam Smith", "Karl Marx", "John Maynard Keynes", "Milton Friedman"], answer: "Adam Smith" },
])

# Government Questions
government_quiz.questions.create!([
  { content: "What is a government ruled by a king or queen called?", options: ["Democracy", "Monarchy", "Oligarchy", "Republic"], answer: "Monarchy" },
  { content: "Which form of government allows citizens to vote directly on laws?", options: ["Direct Democracy", "Representative Democracy", "Oligarchy", "Autocracy"], answer: "Direct Democracy" },
])

puts "Seed data successfully created!"

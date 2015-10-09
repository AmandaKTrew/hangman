require 'json'
require 'open-uri'

class WordGenerator

 def generate
   url = "http://api.wordnik.com:80/v4/words.json/randomWords?hasDictionaryDef=true&includePartOfSpeech=idiom&excludePartOfSpeech=family-name&minCorpusCount=0&maxCorpusCount=-1&minDictionaryCount=-1&maxDictionaryCount=-1&minLength=5&maxLength=9&limit=20&api_key=a2a73e7b926c924fad7001ca3111acd55af2ffabf50eb4ae5"
   word_objects = JSON.load(open("#{url}"))
   list = word_objects.map { | word_obj | word_obj['word'] }
   list.shuffle.first
 end

end
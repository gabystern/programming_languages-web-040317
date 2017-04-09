require 'pry'

def reformat_languages(languages)
  new_hash = Hash.new()

  languages.each do |languages, language_type|
    language_type.each do |language, info|
      new_hash[language] = info
      new_hash[language][:style] = []
    end
  end
  languages.each do |languages, language_type|
    language_type.each do |language, info|
      if new_hash.any? {|k, v| k == language}
        new_hash[language][:style] << languages
      end
    end
  end
  new_hash
end

class LineAnalyzer
  
  #* content          - строка
  #* line_number      - номер строки
  attr_reader :highest_wf_count, :highest_wf_words, :content, :line_number
  @highest_wf_count = 0 # максимальное число вхождений одного слова
  
  # принимает сontent (строку текста) и line_number (число строк)
  def initialize(content, line_number)
    @content = content
    @line_number = line_number # TODO: ???
    @highest_wf_words ||= [] # массив слов с максимальным числом вхождений
    calculate_word_frequency(@content)
  end
  
  # Считает результат
  def calculate_word_frequency(content)
    # Расчитать максимальное число раз вхождений одного слова в пределах content и сохранить число в highest_wf_count
    hash_res = Hash.new(0)
    content.split(' ').each { |word| hash_res[word.downcase] += 1 }
    @highest_wf_count = hash_res.values.max
    
    # Определить слова которые использовались максимальное кол-во раз и сохранить их в highest_wf_words
    hash_res.map { |word, count| @highest_wf_words << word if count.eql? @highest_wf_count }
      # puts "#{@highest_wf_words}: #{@highest_wf_count}"
  end
end

class Solution
  attr_reader :analyzers, :highest_count_across_lines, :highest_count_words_across_lines
  
  def initialize()
    @analyzers ||= [] # массив объектов LineAnalyzer для каждой строки из файла
    @highest_count_words_across_lines = [] # сортированный массив объектов LineAnalyzer с highest_wf_words равного highest_count_across_lines
    @highest_count_across_lines ||= 0 # число с максимальным значенем для highest_wf_words в массиве analyzers
    analyze_file
  end
  
  # Обрабатывает 'text.txt' в массив объектов LineAnalyzers и хранит его в analyzers
  def analyze_file
    path = File.join(File.dirname(__FILE__), 'test.txt')
    
    # прочитать текст из 'text.txt'
    File.foreach(path).each do |line|
      # создать массив из LineAnalyzers для каждой строки в файле, сохранить его в analyzers
      line_num ||= 0
      @analyzers << LineAnalyzer.new(line, line_num += 1)
    end
    # @analyzers.each{|k| puts "#{k.highest_wf_words}: #{k.highest_wf_count}"}
  end
  
  # определяет значения highest_count_across_lines и highest_count_words_across_lines
  def calculate_line_with_highest_frequency
    # Расчитать максимальное значение для highest_wf_count содержащегося в обектах LineAnalyzer из массива analyzers
    # и соханить этот результат в highest_count_across_lines
    # Определить объект LineAnalyzer из массива analyzers по highest_wf_count равному значению highest_count_across_lines
    # определенному раннее, и сохранить его в highest_count_words_across_lines
    @analyzers.map{|val| @highest_count_across_lines = val.highest_wf_count if @highest_count_across_lines < val.highest_wf_count}
    @analyzers.map{|val| @highest_count_words_across_lines << val.highest_wf_words if val.highest_wf_count.equal? @highest_count_across_lines}
  end
  
  # выводит значения объектов LineAnalyzer в highest_count_words_across_lines в специальном формате
  def print_highest_word_frequency_across_lines
    # вывести слово с наибольшим вхождением и номер его строки
    #
    # The following words have the highest word frequency per line:
    # ["word1"] (appears in line #)
    # ["word2", "word3"] (appears in line #)
    
    puts 'The following words have the highest word frequency per line:'
    @highest_count_words_across_lines.each {|words| puts "#{words} (appears in line #)"}
  end

end

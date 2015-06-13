require 'rugen/maps'

module Rugen
  class ::Symbol
    def -@
      '-' + to_s
    end
  end

  def self.extended mod
    mod.const_set :TRUE, NAME2CHAR['TRUE']
  end

  def const_missing word
    @candidates = NAME2CHAR.select { |name, _| name.end_with? word.to_s }
    super if @candidates.empty?

    @candidates[word.to_s] || word
  end

  def method_missing word, rest
    const_missing   :IO if rest == IO
    const_missing :TRUE if rest == NAME2CHAR['TRUE']
    words = "#{word} #{CHAR2NAME[rest] || rest}"

    @candidates.select! { |name, _| name.end_with? words }
    super if @candidates.empty?

    @candidates[words] || words
  end
end

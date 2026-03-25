class HigeZentaiSurvey < ApplicationRecord
  ARRAY_JSON_CODER = Module.new do
    def self.dump(obj)
      return nil if obj.nil?
      JSON.generate(Array(obj)).encode(Encoding::UTF_8)
    end
    def self.load(str)
      return [] if str.nil? || str.empty?
      JSON.parse(str.encode(Encoding::UTF_8))
    end
  end

  serialize :q1, coder: ARRAY_JSON_CODER
  serialize :q2, coder: ARRAY_JSON_CODER
  serialize :q3, coder: ARRAY_JSON_CODER

  Q1_OPTIONS = ['特になし', '張り・こわばりがある', '疲れがたまりやすい', '睡眠を整えたい', '食事のタイミングを整えたい', '回復を意識したい', '可動域を高めたい', '体力を維持したい', 'その他'].freeze
  Q2_OPTIONS = ['特にない・普段通りで大丈夫', '睡眠', '生活リズム', '食事', '水分補給', '回復', '体力維持', '身体を動かすこと', 'コンディションの安定', 'その他'].freeze
  Q3_OPTIONS = ['首・肩', '背中', '腰', '股関節', '脚', '足首', '特になし', 'その他'].freeze

  def q1; super || []; end
  def q2; super || []; end
  def q3; super || []; end
end

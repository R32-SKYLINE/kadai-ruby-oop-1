#クラス定義
class Team
   #オブジェクトの変数
   attr_accessor :name, :win, :lose, :draw
   
   #初期化用の特別なメソッド
   def initialize(name,win,lose,draw)
      self.name = name
      self.win = win
      self.lose = lose
      self.draw = draw
   end
   
   #勝率メソッド
   def calc_win_rate
      self.win.to_f / (self.win.to_f + self.lose.to_f)
   end

   #チーム成績のメソッド
   def show_team_result
      puts "#{self.name} の2020年の成績は #{self.win}勝 #{self.lose}敗 #{self.draw}分、勝率は #{self.calc_win_rate}です。"
   end
end

#初期化
team_A =Team.new('Giants',67,45,8)
team_B =Team.new('Tigers',60,53,7)
team_C =Team.new('Drafons',60,55,5)
team_D =Team.new('BayStars',56,58,6)
team_E =Team.new('Carp',52,56,12)
team_F =Team.new('Swallows',41,69,10)

#チーム成績のメソッドの呼び出し
team_A.show_team_result
team_B.show_team_result
team_C.show_team_result
team_D.show_team_result
team_E.show_team_result
team_F.show_team_result


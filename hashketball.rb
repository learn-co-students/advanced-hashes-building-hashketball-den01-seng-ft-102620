require "pry"

def game_hash
  hash = {}
  top_level = [:home,:away]
  top_level_keys = [:team_name,:colors,:players]
  team_name_array = ["Brooklyn Nets", "Charlotte Hornets"]
  team_colors_array = [["Black","White"],["Turquoise", "Purple"]]
  symbolarray = [:player_name,:number,:shoe,:points,:rebounds,:assists,:steals,:blocks,:slam_dunks]
  players_array = [["Alan Anderson","Reggie Evans","Brook Lopez","Mason Plumlee","Jason Terry"],["Jeff Adrien","Bismack Biyombo","DeSagna Diop","Ben Gordon","Kemba Walker"]]
  numberarray = [[0,30,11,1,31],[4,0,2,8,33]]
  shoearray=[[16,14,17,19,15],[18,16,14,15,15]]
  pointsarray=[[22,12,17,26,19],[10,12,24,33,6]]
  reboundsarray=[[12,12,19,11,2],[1,4,12,3,12]]
  assistsarray=[[12,12,10,6,2],[1,7,12,2,12]]
  stealsarray=[[3,12,3,3,4],[2,22,4,1,7]]
  blocksarray= [[1,12,1,8,11],[7,15,5,1,5]]
  slamdunksarray =[[1,7,15,5,1],[2,10,5,0,12]]
  
  statsarray = [players_array,numberarray,shoearray,pointsarray,reboundsarray,assistsarray,stealsarray,blocksarray,slamdunksarray]
  
  count= 0
  count2 = 0
  
  hash[top_level[0]] = {}
  hash[top_level[1]] = {}
  hash[top_level[0]][top_level_keys[0]]= {}
  hash[top_level[0]][top_level_keys[1]]= {}  
  hash[top_level[1]][top_level_keys[0]]= {}
  hash[top_level[1]][top_level_keys[1]]= {}
  hash[top_level[0]][top_level_keys[0]][team_name_array[0]] = team_name_array[0]
  hash[top_level[1]][top_level_keys[0]][team_name_array[1]] = team_name_array[1]
  hash[top_level[0]][top_level_keys[1]][team_colors_array[0]] = team_colors_array[0]
  hash[top_level[1]][top_level_keys[1]][team_colors_array[1]] = team_colors_array[1]
  hash[top_level[1]][top_level_keys[2]]= []
  hash[top_level[0]][top_level_keys[2]]= []
#  hash[top_level[0]][top_level_keys[2]][0] = {}
#  hash[top_level[1]][top_level_keys[2]][0] = {}
  
  
  while count < top_level.length do
    if count > 0
      count2 = 0
    end
     while count2 < players_array[count].length do
      if !hash[top_level[count]][top_level_keys[2]][count2]
         hash[top_level[count]][top_level_keys[2]][count2] = {}
         count3 = 0
        while count3 < symbolarray.length do
        if !hash[top_level[count]][top_level_keys[2]][count2][symbolarray[count3]] 
          hash[top_level[count]][top_level_keys[2]][count2][symbolarray[count3]] = statsarray[count3][count][count2]
        end
        count3 +=1
       end 
       end
     count2 += 1  
    end
    count +=1
  end

hash
end
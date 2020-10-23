#class Category < ActiveHash::Base
  #self.data = [
    #{id: 1, name: '---'}, {id: 2, name: '小説・文学'}, {id: 3, name: '言語'},
    #{id: 4, name: '自己啓発'},{id: 5, name: 'ビジネス・経済'}, {id: 6, name: '自然科学'},
    #{id: 7, name: 'テクノロジー'}, {id: 8, name: '歴史・地理'},{id: 9, name: '専門書'}
    #]
#end

class Category < ApplicationRecord
      has_many :book_categories
      has_ancestry
end
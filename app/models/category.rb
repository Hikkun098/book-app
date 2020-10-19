class Category < ActiveHash::Base
  self.data = [
    {id: 1, name: '---'}, {id: 2, name: '小説・文学'}, {id: 3, name: '言語'},
    {id: 4, name: '雑誌'}, {id: 5, name: '自己啓発'},{id: 6, name: 'ビジネス・経済'}, {id: 7, name: '自然科学'},
    {id: 8, name: 'テクノロジー'}, {id: 9, name: '歴史・地理'},{id: 10, name: '専門書'}
    ]
end

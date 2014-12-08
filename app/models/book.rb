class Book < ActiveRecord::Base
  create_table :books do |t|
    t.string :title, null:false
  end
end

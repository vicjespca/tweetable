rails g model User username name role:integer
rails g model Tweet body:text replies_count:integer likes_count:integer user:references
rails g model Like user:references tweet:references

rails generate devise User
rails g migration AddParentRefToTweet parent:references (self-join)

belongs_to :parent, class_name: 'Tweet', optional: true
  has_many :replied_to, class_name: 'Tweet',
                     foreign_key: 'parent_id',
                     dependent: :destroy,
                     inverse_of: "parent" 
# SELF JOIN
rails g devise:views - (later)
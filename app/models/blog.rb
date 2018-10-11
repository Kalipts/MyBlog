class Blog < ApplicationRecord

  enum status: { draft: 0, published: 1 }
  extend FriendlyId

  if :title.empty?
    @title = :title
  else
    @title = :slug_candidates
  end
  friendly_id @title, use: :slugged

  # sử dụng tiếng việt cho slug, dm nó chứ, tiếng việt phiền phức thật
  def slug_candidates
    slug = title.downcase
    slug = slug.gsub(/á|à|ả|ạ|ã|ă|ắ|ằ|ẳ|ẵ|ặ|â|ấ|ầ|ẩ|ẫ|ậ/,'a')
    slug = slug.gsub(/é|è|ẻ|ẽ|ẹ|ê|ế|ề|ể|ễ|ệ/,'e')
    slug = slug.gsub(/i|í|ì|ỉ|ĩ|ị/,'i')
    slug = slug.gsub(/ó|ò|ỏ|õ|ọ|ô|ố|ồ|ổ|ỗ|ộ|ơ|ớ|ờ|ở|ỡ|ợ/,'o')
    slug = slug.gsub(/ú|ù|ủ|ũ|ụ|ư|ứ|ừ|ử|ữ|ự/,'u')
    slug = slug.gsub(/ý|ỳ|ỷ|ỹ|ỵ/,'y')
    slug = slug.gsub(/đ/,'d')
  end

  validates_presence_of :title, :body
  belongs_to :topic, optional: true
  
  def self.special_blogs
    all
  end
end

class Doctor < User
  has_many :certification
  belongs_to :hospital
  has_many :post
  has_attached_file :photo, styles: {medium: "300x300", thumb: "100x100", default_url: "/images/:style/missing.png"}
  validates_attachment_content_type :photo, content_type: /\Aimage\/.*\z/
  has_attached_file :resume
  validates_attachment_content_type :resume, :with => %r{\.(docx|doc|pdf)$}i

end

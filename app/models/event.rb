class Event < ActiveRecord::Base
  belongs_to :owner, class_name: 'User'
  validates :name, :place, :start_time, :end_time, presence: true
  validate :start_time_should_be_before_end_time

  has_attached_file :image,
                    :styles => {
                        :thumb  => "100x100"
                    }

  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]

  private

  def start_time_should_be_before_end_time
    return unless start_time && end_time

    if start_time >= end_time
      errors.add(:start_time, 'は終了時間よりも前に設定してください')
    end
  end
end

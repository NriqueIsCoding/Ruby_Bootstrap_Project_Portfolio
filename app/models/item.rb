class Item < ApplicationRecord
  acts_as_paranoid
  belongs_to :project
  validates :action,
    presence: true,
    uniqueness: {
                  scope: :project,
                  message: 'should be unique within a project'
                }
  validates :project_id, presence: true
  scope :complete, -> { where(done: true) }

  def project
    Project.unscoped { super }
  end
end

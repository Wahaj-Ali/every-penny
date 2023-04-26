class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :groups, dependent: :destroy
  has_many :money_tracks, dependent: :destroy

  validates :name, presence: true

  after_create :set_role
  after_save :set_role

  private

  def set_role
    update(role: 'user') unless role.present?
  end
end

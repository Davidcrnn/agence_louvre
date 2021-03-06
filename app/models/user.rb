class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :sales, dependent: :destroy
  has_many :rentals, dependent: :destroy

  def name
    "#{id} - #{email}"
  end
end

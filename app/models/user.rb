class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  devise :omniauthable, omniauth_providers: %i[google_oauth2 spotify]

  has_many :lists, dependent: :destroy

  validates :username, presence: true

  def self.from_google_omniauth(access_token)
    data = access_token.info

    user = User.where(email: data['email']).first
    user ||= User.new(email: data['email'], password: Devise.friendly_token[0, 20], username: data['email'])
    user.save
    user
  end

  def self.from_spotify_omniauth(access_token)
    api_link = access_token.extra.raw_info.href
    data = access_token.info

    user = User.where(email: data.email).first
    user ||= User.new(email: data.email, password: Devise.friendly_token[0, 20], username: data.nickname)
    user.save
    user
  end
end

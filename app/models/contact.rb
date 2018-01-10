class Contact < ApplicationRecord
  validates :first_name, format: {
    with: /\A[A-Za-z]*\z/,
    message: "First name must contain only letters"
  }
  validates :last_name, format: {
    with: /\A[A-Za-z\-']*\z/,
    message: "Last name must contain only letters, hyphens, and/or apostrophes"
  }
  validates :email, format: {
    with: /\A[^@\s]+@(\w+\.)+[A-Za-z]{2,}\z/,
    message: "Invalid address"
  }
  validates :zip_code, format: {
    with: /\A\d{5}(-\d{4})?\z/,
    message: "Invalid zip code"
  }

  STATES = %w[
    AL AK AZ AR CA
    CO CT DE FL GA
    HI ID IL IN IA
    KS KY LA ME MD
    MA MI MN MS MO
    MT NE NV NH NJ
    NM NY NC ND OH
    OK OR PA RI SC
    SD TN TX UT VT
    VA WA WV WI WY
  ].freeze

end

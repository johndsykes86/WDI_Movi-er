class ChangeStringLimitInReviews < ActiveRecord::Migration[5.1]
  def change
    change_column(:reviews, :body, :string, :limit => 160)
  end
end

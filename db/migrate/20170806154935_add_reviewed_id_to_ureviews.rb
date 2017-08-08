class AddReviewedIdToUreviews < ActiveRecord::Migration[5.1]
  def change
    add_column :ureviews, :reviewed_id, :integer
  end
end

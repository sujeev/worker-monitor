class UpdateWorker < ActiveRecord::Migration[6.0]
  def change
    add_column :workers, :name, :string
    add_column :workers, :total_time, :int, default:0
    add_column :workers, :active, :boolean, default:true
  end
end

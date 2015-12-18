class ChangeRecordToCurrentFromFighters < ActiveRecord::Migration
  def change
    rename_column :ufcs, :record, :record_current
  end
end

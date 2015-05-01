module CollectionsHelper
  def cataloged_items(collection)
    collection.items.size
  end

  def acquired_items(collection)
    collection.items.where('amount > 0').size
  end

  def missing_items(collection)
    collection.items.where('amount <= 0').size
  end

  def percentage_acquired(collection)
    (acquired_items(collection).to_f/cataloged_items(collection).to_f) * 100
  end

  def percentage_missing(collection)
    (missing_items(collection).to_f/cataloged_items(collection).to_f) * 100
  end

end

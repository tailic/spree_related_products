Spree::ProductsController.class_eval do

  def related
      load_product
      render 'spree/shared/_related_products',
             partial: 'spree/shared/related_products',
             locals: {
                 related_types: ['Fußleistens','Verlegens', 'Pflegens'],
                 headline: Spree.t(:related_accessories)
             },
             layout: false
  end

end
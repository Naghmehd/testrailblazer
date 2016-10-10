module Cells
  class Form < Trailblazer::Cell
    include ActionView::Helpers::FormHelper

    def dom_class(record, prefix = nil)
      ActionView::RecordIdentifier.dom_class(record, prefix)
    end

    def dom_id(record, prefix = nil)
      ActionView::RecordIdentifier.dom_id(record, prefix)
    end

    def form
      @model.contract
    end
  end
end

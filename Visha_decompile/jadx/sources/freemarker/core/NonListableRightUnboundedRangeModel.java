package freemarker.core;

import freemarker.template.TemplateModelException;

final class NonListableRightUnboundedRangeModel extends RightUnboundedRangeModel {
    public NonListableRightUnboundedRangeModel(int i) {
        super(i);
    }

    @Override
    public int size() throws TemplateModelException {
        return 0;
    }
}

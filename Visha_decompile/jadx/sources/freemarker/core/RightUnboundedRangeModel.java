package freemarker.core;

import freemarker.template.TemplateModelException;

abstract class RightUnboundedRangeModel extends RangeModel {
    public RightUnboundedRangeModel(int i) {
        super(i);
    }

    @Override
    public final int getStep() {
        return 1;
    }

    @Override
    public final boolean isAffactedByStringSlicingBug() {
        return false;
    }

    @Override
    public final boolean isRightAdaptive() {
        return true;
    }

    @Override
    public final boolean isRightUnbounded() {
        return true;
    }

    @Override
    public abstract int size() throws TemplateModelException;
}

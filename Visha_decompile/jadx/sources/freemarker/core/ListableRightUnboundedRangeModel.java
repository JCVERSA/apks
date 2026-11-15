package freemarker.core;

import defpackage.bfa;
import defpackage.bga;
import freemarker.template.TemplateModelException;

final class ListableRightUnboundedRangeModel extends RightUnboundedRangeModel implements bfa {
    public ListableRightUnboundedRangeModel(int i) {
        super(i);
    }

    @Override
    public bga iterator() throws TemplateModelException {
        return new d1(this);
    }

    @Override
    public int size() throws TemplateModelException {
        return Integer.MAX_VALUE;
    }
}

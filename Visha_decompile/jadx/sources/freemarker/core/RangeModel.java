package freemarker.core;

import defpackage.nga;
import defpackage.zfa;
import freemarker.template.SimpleNumber;
import freemarker.template.TemplateModelException;
import java.io.Serializable;

abstract class RangeModel implements nga, Serializable {
    private final int begin;

    public RangeModel(int i) {
        this.begin = i;
    }

    @Override
    public final zfa get(int i) throws TemplateModelException {
        if (i < 0 || i >= size()) {
            throw new _TemplateModelException(new Object[]{"Range item index ", new Integer(i), " is out of bounds."});
        }
        long step = ((long) this.begin) + (((long) getStep()) * ((long) i));
        return step <= 2147483647L ? new SimpleNumber((int) step) : new SimpleNumber(step);
    }

    public final int getBegining() {
        return this.begin;
    }

    public abstract int getStep();

    public abstract boolean isAffactedByStringSlicingBug();

    public abstract boolean isRightAdaptive();

    public abstract boolean isRightUnbounded();

    @Override
    public abstract int size() throws TemplateModelException;
}

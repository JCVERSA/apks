package org.apache.tools.ant.types.resources.comparators;

import java.util.Comparator;
import org.apache.tools.ant.types.e;
import org.apache.tools.ant.types.t;

public abstract class ResourceComparator extends e implements Comparator {
    @Override
    public final int compare(Object obj, Object obj2) {
        dieOnCircularReference();
        return (isReference() ? (ResourceComparator) getCheckedRef() : this).resourceCompare((t) obj, (t) obj2);
    }

    public boolean equals(Object obj) {
        if (isReference()) {
            return getCheckedRef().equals(obj);
        }
        if (obj == null) {
            return false;
        }
        return obj == this || obj.getClass().equals(getClass());
    }

    public synchronized int hashCode() {
        if (isReference()) {
            return getCheckedRef().hashCode();
        }
        return getClass().hashCode();
    }

    protected abstract int resourceCompare(t tVar, t tVar2);
}

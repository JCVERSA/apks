package defpackage;

import com.google.common.collect.Range;
import java.util.Iterator;

public abstract class r3 implements un8 {
    public abstract void add(Range range);

    public void addAll(un8 un8Var) {
        addAll(un8Var.asRanges());
    }

    public void clear() {
        remove(Range.all());
    }

    public boolean contains(Comparable comparable) {
        return rangeContaining(comparable) != null;
    }

    @Override
    public abstract boolean encloses(Range range);

    public boolean enclosesAll(un8 un8Var) {
        return enclosesAll(un8Var.asRanges());
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof un8) {
            return asRanges().equals(((un8) obj).asRanges());
        }
        return false;
    }

    public final int hashCode() {
        return asRanges().hashCode();
    }

    @Override
    public boolean isEmpty() {
        return asRanges().isEmpty();
    }

    public abstract Range rangeContaining(Comparable comparable);

    public abstract void remove(Range range);

    @Override
    public void removeAll(un8 un8Var) {
        removeAll(un8Var.asRanges());
    }

    public final String toString() {
        return asRanges().toString();
    }

    public void addAll(Iterable iterable) {
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            add((Range) it.next());
        }
    }

    public boolean enclosesAll(Iterable iterable) {
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            if (!encloses((Range) it.next())) {
                return false;
            }
        }
        return true;
    }

    public void removeAll(Iterable iterable) {
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            remove((Range) it.next());
        }
    }
}

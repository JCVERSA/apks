package defpackage;

import androidx.collection.SparseArrayCompat;
import java.util.Iterator;

public final class nu9 implements Iterator, qe5 {
    public final SparseArrayCompat b;
    public int c;

    public nu9(SparseArrayCompat sparseArrayCompat) {
        y45.j(sparseArrayCompat, "array");
        this.b = sparseArrayCompat;
    }

    @Override
    public boolean hasNext() {
        return this.b.size() > this.c;
    }

    @Override
    public Object next() {
        SparseArrayCompat sparseArrayCompat = this.b;
        int i = this.c;
        this.c = i + 1;
        return sparseArrayCompat.valueAt(i);
    }

    @Override
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}

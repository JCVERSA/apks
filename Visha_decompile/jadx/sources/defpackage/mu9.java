package defpackage;

import androidx.collection.SparseArrayCompat;
import java.util.Iterator;

public final class mu9 implements Iterable, qe5 {
    public final SparseArrayCompat b;

    public mu9(SparseArrayCompat sparseArrayCompat) {
        y45.j(sparseArrayCompat, "array");
        this.b = sparseArrayCompat;
    }

    @Override
    public Iterator iterator() {
        return new nu9(this.b);
    }
}

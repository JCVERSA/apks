package androidx.collection;

import java.util.Iterator;
import kotlin.jvm.internal.markers.KMutableIterator;
import kotlin.sequences.SequencesKt;

public final class MutableScatterSet$MutableSetWrapper$iterator$1 implements Iterator, KMutableIterator {

    private int f1932a = -1;

    private final Iterator f1933b;

    final MutableScatterSet f1934c;

    MutableScatterSet$MutableSetWrapper$iterator$1(MutableScatterSet mutableScatterSet) {
        this.f1934c = mutableScatterSet;
        this.f1933b = SequencesKt.a(new MutableScatterSet$MutableSetWrapper$iterator$1$iterator$1(mutableScatterSet, this, null));
    }

    public final void a(int i10) {
        this.f1932a = i10;
    }

    @Override
    public boolean hasNext() {
        return this.f1933b.hasNext();
    }

    @Override
    public Object next() {
        return this.f1933b.next();
    }

    @Override
    public void remove() {
        int i10 = this.f1932a;
        if (i10 != -1) {
            this.f1934c.y(i10);
            this.f1932a = -1;
        }
    }
}

package androidx.collection;

import java.util.Iterator;
import java.util.NoSuchElementException;
import kotlin.jvm.internal.markers.KMutableIterator;

public abstract class k implements Iterator, KMutableIterator {

    private int f1980a;

    private int f1981b;

    private boolean f1982c;

    public k(int i10) {
        this.f1980a = i10;
    }

    protected abstract Object a(int i10);

    protected abstract void c(int i10);

    @Override
    public boolean hasNext() {
        return this.f1981b < this.f1980a;
    }

    @Override
    public Object next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        Object objA = a(this.f1981b);
        this.f1981b++;
        this.f1982c = true;
        return objA;
    }

    @Override
    public void remove() {
        if (!this.f1982c) {
            n.d.b("Call next() before removing an element.");
        }
        int i10 = this.f1981b - 1;
        this.f1981b = i10;
        c(i10);
        this.f1980a--;
        this.f1982c = false;
    }
}

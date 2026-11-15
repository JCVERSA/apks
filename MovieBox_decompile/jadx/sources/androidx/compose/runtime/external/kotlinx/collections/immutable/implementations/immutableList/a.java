package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableList;

import java.util.ListIterator;
import java.util.NoSuchElementException;
import kotlin.jvm.internal.markers.KMappedMarker;

public abstract class a implements ListIterator, KMappedMarker {

    private int f3394a;

    private int f3395b;

    public a(int i10, int i11) {
        this.f3394a = i10;
        this.f3395b = i11;
    }

    public final void a() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
    }

    @Override
    public void add(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public final void c() {
        if (!hasPrevious()) {
            throw new NoSuchElementException();
        }
    }

    public final int e() {
        return this.f3394a;
    }

    public final int f() {
        return this.f3395b;
    }

    public final void h(int i10) {
        this.f3394a = i10;
    }

    @Override
    public boolean hasNext() {
        return this.f3394a < this.f3395b;
    }

    @Override
    public boolean hasPrevious() {
        return this.f3394a > 0;
    }

    public final void i(int i10) {
        this.f3395b = i10;
    }

    @Override
    public int nextIndex() {
        return this.f3394a;
    }

    @Override
    public int previousIndex() {
        return this.f3394a - 1;
    }

    @Override
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override
    public void set(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}

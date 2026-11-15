package kotlin.jvm.internal;

import java.util.Iterator;
import java.util.NoSuchElementException;
import kotlin.jvm.internal.markers.KMappedMarker;

final class g implements Iterator, KMappedMarker {

    private final Object[] f64348a;

    private int f64349b;

    public g(Object[] array) {
        Intrinsics.h(array, "array");
        this.f64348a = array;
    }

    @Override
    public boolean hasNext() {
        return this.f64349b < this.f64348a.length;
    }

    @Override
    public Object next() {
        try {
            Object[] objArr = this.f64348a;
            int i10 = this.f64349b;
            this.f64349b = i10 + 1;
            return objArr[i10];
        } catch (ArrayIndexOutOfBoundsException e10) {
            this.f64349b--;
            throw new NoSuchElementException(e10.getMessage());
        }
    }

    @Override
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}

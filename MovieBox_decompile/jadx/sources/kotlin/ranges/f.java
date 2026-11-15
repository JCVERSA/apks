package kotlin.ranges;

import java.util.Iterator;
import java.util.NoSuchElementException;
import kotlin.UInt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.markers.KMappedMarker;

final class f implements Iterator, KMappedMarker {

    private final int f64409a;

    private boolean f64410b;

    private final int f64411c;

    private int f64412d;

    public f(int i10, int i11, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this(i10, i11, i12);
    }

    public int a() {
        int i10 = this.f64412d;
        if (i10 != this.f64409a) {
            this.f64412d = UInt.b(this.f64411c + i10);
        } else {
            if (!this.f64410b) {
                throw new NoSuchElementException();
            }
            this.f64410b = false;
        }
        return i10;
    }

    @Override
    public boolean hasNext() {
        return this.f64410b;
    }

    @Override
    public Object next() {
        return UInt.a(a());
    }

    @Override
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    private f(int i10, int i11, int i12) {
        this.f64409a = i11;
        boolean z10 = false;
        int iCompare = Integer.compare(i10 ^ Integer.MIN_VALUE, i11 ^ Integer.MIN_VALUE);
        if (i12 <= 0 ? iCompare >= 0 : iCompare <= 0) {
            z10 = true;
        }
        this.f64410b = z10;
        this.f64411c = UInt.b(i12);
        this.f64412d = this.f64410b ? i10 : i11;
    }
}

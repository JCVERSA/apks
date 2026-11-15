package kotlin.ranges;

import java.util.Iterator;
import java.util.NoSuchElementException;
import kotlin.ULong;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.markers.KMappedMarker;

final class g implements Iterator, KMappedMarker {

    private final long f64413a;

    private boolean f64414b;

    private final long f64415c;

    private long f64416d;

    public g(long j10, long j11, long j12, DefaultConstructorMarker defaultConstructorMarker) {
        this(j10, j11, j12);
    }

    public long a() {
        long j10 = this.f64416d;
        if (j10 != this.f64413a) {
            this.f64416d = ULong.b(this.f64415c + j10);
        } else {
            if (!this.f64414b) {
                throw new NoSuchElementException();
            }
            this.f64414b = false;
        }
        return j10;
    }

    @Override
    public boolean hasNext() {
        return this.f64414b;
    }

    @Override
    public Object next() {
        return ULong.a(a());
    }

    @Override
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    private g(long j10, long j11, long j12) {
        this.f64413a = j11;
        boolean z10 = false;
        if (j12 <= 0 ? Long.compare(j10 ^ Long.MIN_VALUE, j11 ^ Long.MIN_VALUE) >= 0 : Long.compare(j10 ^ Long.MIN_VALUE, j11 ^ Long.MIN_VALUE) <= 0) {
            z10 = true;
        }
        this.f64414b = z10;
        this.f64415c = ULong.b(j12);
        this.f64416d = this.f64414b ? j10 : j11;
    }
}

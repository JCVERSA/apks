package kotlin.jvm.internal;

import java.util.NoSuchElementException;
import kotlin.collections.LongIterator;

final class h extends LongIterator {

    private final long[] f64350a;

    private int f64351b;

    public h(long[] array) {
        Intrinsics.h(array, "array");
        this.f64350a = array;
    }

    @Override
    public long a() {
        try {
            long[] jArr = this.f64350a;
            int i10 = this.f64351b;
            this.f64351b = i10 + 1;
            return jArr[i10];
        } catch (ArrayIndexOutOfBoundsException e10) {
            this.f64351b--;
            throw new NoSuchElementException(e10.getMessage());
        }
    }

    @Override
    public boolean hasNext() {
        return this.f64351b < this.f64350a.length;
    }
}

package kotlin.jvm.internal;

import java.util.NoSuchElementException;
import kotlin.collections.ShortIterator;

final class i extends ShortIterator {

    private final short[] f64352a;

    private int f64353b;

    public i(short[] array) {
        Intrinsics.h(array, "array");
        this.f64352a = array;
    }

    @Override
    public short a() {
        try {
            short[] sArr = this.f64352a;
            int i10 = this.f64353b;
            this.f64353b = i10 + 1;
            return sArr[i10];
        } catch (ArrayIndexOutOfBoundsException e10) {
            this.f64353b--;
            throw new NoSuchElementException(e10.getMessage());
        }
    }

    @Override
    public boolean hasNext() {
        return this.f64353b < this.f64352a.length;
    }
}

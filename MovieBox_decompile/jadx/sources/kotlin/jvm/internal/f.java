package kotlin.jvm.internal;

import java.util.NoSuchElementException;
import kotlin.collections.IntIterator;

final class f extends IntIterator {

    private final int[] f64346a;

    private int f64347b;

    public f(int[] array) {
        Intrinsics.h(array, "array");
        this.f64346a = array;
    }

    @Override
    public int a() {
        try {
            int[] iArr = this.f64346a;
            int i10 = this.f64347b;
            this.f64347b = i10 + 1;
            return iArr[i10];
        } catch (ArrayIndexOutOfBoundsException e10) {
            this.f64347b--;
            throw new NoSuchElementException(e10.getMessage());
        }
    }

    @Override
    public boolean hasNext() {
        return this.f64347b < this.f64346a.length;
    }
}

package kotlin.jvm.internal;

import java.util.NoSuchElementException;
import kotlin.collections.BooleanIterator;

final class a extends BooleanIterator {

    private final boolean[] f64336a;

    private int f64337b;

    public a(boolean[] array) {
        Intrinsics.h(array, "array");
        this.f64336a = array;
    }

    @Override
    public boolean a() {
        try {
            boolean[] zArr = this.f64336a;
            int i10 = this.f64337b;
            this.f64337b = i10 + 1;
            return zArr[i10];
        } catch (ArrayIndexOutOfBoundsException e10) {
            this.f64337b--;
            throw new NoSuchElementException(e10.getMessage());
        }
    }

    @Override
    public boolean hasNext() {
        return this.f64337b < this.f64336a.length;
    }
}

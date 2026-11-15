package kotlin.jvm.internal;

import java.util.NoSuchElementException;
import kotlin.collections.DoubleIterator;

final class d extends DoubleIterator {

    private final double[] f64342a;

    private int f64343b;

    public d(double[] array) {
        Intrinsics.h(array, "array");
        this.f64342a = array;
    }

    @Override
    public double a() {
        try {
            double[] dArr = this.f64342a;
            int i10 = this.f64343b;
            this.f64343b = i10 + 1;
            return dArr[i10];
        } catch (ArrayIndexOutOfBoundsException e10) {
            this.f64343b--;
            throw new NoSuchElementException(e10.getMessage());
        }
    }

    @Override
    public boolean hasNext() {
        return this.f64343b < this.f64342a.length;
    }
}

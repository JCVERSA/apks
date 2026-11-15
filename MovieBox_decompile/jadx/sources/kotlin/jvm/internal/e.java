package kotlin.jvm.internal;

import java.util.NoSuchElementException;
import kotlin.collections.FloatIterator;

final class e extends FloatIterator {

    private final float[] f64344a;

    private int f64345b;

    public e(float[] array) {
        Intrinsics.h(array, "array");
        this.f64344a = array;
    }

    @Override
    public float a() {
        try {
            float[] fArr = this.f64344a;
            int i10 = this.f64345b;
            this.f64345b = i10 + 1;
            return fArr[i10];
        } catch (ArrayIndexOutOfBoundsException e10) {
            this.f64345b--;
            throw new NoSuchElementException(e10.getMessage());
        }
    }

    @Override
    public boolean hasNext() {
        return this.f64345b < this.f64344a.length;
    }
}

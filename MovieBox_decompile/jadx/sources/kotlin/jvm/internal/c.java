package kotlin.jvm.internal;

import java.util.NoSuchElementException;
import kotlin.collections.CharIterator;

final class c extends CharIterator {

    private final char[] f64340a;

    private int f64341b;

    public c(char[] array) {
        Intrinsics.h(array, "array");
        this.f64340a = array;
    }

    @Override
    public char a() {
        try {
            char[] cArr = this.f64340a;
            int i10 = this.f64341b;
            this.f64341b = i10 + 1;
            return cArr[i10];
        } catch (ArrayIndexOutOfBoundsException e10) {
            this.f64341b--;
            throw new NoSuchElementException(e10.getMessage());
        }
    }

    @Override
    public boolean hasNext() {
        return this.f64341b < this.f64340a.length;
    }
}

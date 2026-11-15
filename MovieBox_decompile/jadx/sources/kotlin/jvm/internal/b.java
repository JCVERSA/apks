package kotlin.jvm.internal;

import java.util.NoSuchElementException;
import kotlin.collections.ByteIterator;

final class b extends ByteIterator {

    private final byte[] f64338a;

    private int f64339b;

    public b(byte[] array) {
        Intrinsics.h(array, "array");
        this.f64338a = array;
    }

    @Override
    public boolean hasNext() {
        return this.f64339b < this.f64338a.length;
    }

    @Override
    public byte nextByte() {
        try {
            byte[] bArr = this.f64338a;
            int i10 = this.f64339b;
            this.f64339b = i10 + 1;
            return bArr[i10];
        } catch (ArrayIndexOutOfBoundsException e10) {
            this.f64339b--;
            throw new NoSuchElementException(e10.getMessage());
        }
    }
}

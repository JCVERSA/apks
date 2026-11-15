package defpackage;

import java.util.NoSuchElementException;
import org.slf4j.Marker;

public class lk0 extends qm5 {
    public final int e;
    public final int f;

    public class b implements po0.a {
        public int b;
        public final int c;

        @Override
        public Byte next() {
            return Byte.valueOf(nextByte());
        }

        @Override
        public boolean hasNext() {
            return this.b < this.c;
        }

        @Override
        public byte nextByte() {
            int i = this.b;
            if (i >= this.c) {
                throw new NoSuchElementException();
            }
            byte[] bArr = lk0.this.c;
            this.b = i + 1;
            return bArr[i];
        }

        @Override
        public void remove() {
            throw new UnsupportedOperationException();
        }

        public b() {
            int iA = lk0.this.A();
            this.b = iA;
            this.c = iA + lk0.this.size();
        }
    }

    public lk0(byte[] bArr, int i, int i2) {
        super(bArr);
        if (i < 0) {
            StringBuilder sb = new StringBuilder(29);
            sb.append("Offset too small: ");
            sb.append(i);
            throw new IllegalArgumentException(sb.toString());
        }
        if (i2 < 0) {
            StringBuilder sb2 = new StringBuilder(29);
            sb2.append("Length too small: ");
            sb2.append(i);
            throw new IllegalArgumentException(sb2.toString());
        }
        if (((long) i) + ((long) i2) <= bArr.length) {
            this.e = i;
            this.f = i2;
            return;
        }
        StringBuilder sb3 = new StringBuilder(48);
        sb3.append("Offset+Length too large: ");
        sb3.append(i);
        sb3.append(Marker.ANY_NON_NULL_MARKER);
        sb3.append(i2);
        throw new IllegalArgumentException(sb3.toString());
    }

    @Override
    public int A() {
        return this.e;
    }

    @Override
    public po0.a iterator() {
        return new b();
    }

    @Override
    public void m(byte[] bArr, int i, int i2, int i3) {
        System.arraycopy(this.c, A() + i, bArr, i2, i3);
    }

    @Override
    public int size() {
        return this.f;
    }
}

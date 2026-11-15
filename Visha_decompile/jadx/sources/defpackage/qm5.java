package defpackage;

import java.io.IOException;
import java.io.OutputStream;
import java.util.NoSuchElementException;

public class qm5 extends po0 {
    public final byte[] c;
    public int d = 0;

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
            try {
                byte[] bArr = qm5.this.c;
                int i = this.b;
                this.b = i + 1;
                return bArr[i];
            } catch (ArrayIndexOutOfBoundsException e) {
                throw new NoSuchElementException(e.getMessage());
            }
        }

        @Override
        public void remove() {
            throw new UnsupportedOperationException();
        }

        public b() {
            this.b = 0;
            this.c = qm5.this.size();
        }
    }

    public qm5(byte[] bArr) {
        this.c = bArr;
    }

    public static int B(int i, byte[] bArr, int i2, int i3) {
        for (int i4 = i2; i4 < i2 + i3; i4++) {
            i = (i * 31) + bArr[i4];
        }
        return i;
    }

    public int A() {
        return 0;
    }

    @Override
    public po0.a iterator() {
        return new b();
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof po0) || size() != ((po0) obj).size()) {
            return false;
        }
        if (size() == 0) {
            return true;
        }
        if (obj instanceof qm5) {
            return z((qm5) obj, 0, size());
        }
        if (obj instanceof vv8) {
            return obj.equals(this);
        }
        String strValueOf = String.valueOf(obj.getClass());
        StringBuilder sb = new StringBuilder(strValueOf.length() + 49);
        sb.append("Has a new type of ByteString been created? Found ");
        sb.append(strValueOf);
        throw new IllegalArgumentException(sb.toString());
    }

    public int hashCode() {
        int iR = this.d;
        if (iR == 0) {
            int size = size();
            iR = r(size, 0, size);
            if (iR == 0) {
                iR = 1;
            }
            this.d = iR;
        }
        return iR;
    }

    @Override
    public void m(byte[] bArr, int i, int i2, int i3) {
        System.arraycopy(this.c, i, bArr, i2, i3);
    }

    @Override
    public int n() {
        return 0;
    }

    @Override
    public boolean o() {
        return true;
    }

    @Override
    public boolean p() {
        int iA = A();
        return ikb.f(this.c, iA, size() + iA);
    }

    @Override
    public int r(int i, int i2, int i3) {
        return B(i, this.c, A() + i2, i3);
    }

    @Override
    public int s(int i, int i2, int i3) {
        int iA = A() + i2;
        return ikb.g(i, this.c, iA, i3 + iA);
    }

    @Override
    public int size() {
        return this.c.length;
    }

    @Override
    public int t() {
        return this.d;
    }

    @Override
    public String v(String str) {
        return new String(this.c, A(), size(), str);
    }

    @Override
    public void y(OutputStream outputStream, int i, int i2) throws IOException {
        outputStream.write(this.c, A() + i, i2);
    }

    public boolean z(qm5 qm5Var, int i, int i2) {
        if (i2 > qm5Var.size()) {
            int size = size();
            StringBuilder sb = new StringBuilder(40);
            sb.append("Length too large: ");
            sb.append(i2);
            sb.append(size);
            throw new IllegalArgumentException(sb.toString());
        }
        if (i + i2 > qm5Var.size()) {
            int size2 = qm5Var.size();
            StringBuilder sb2 = new StringBuilder(59);
            sb2.append("Ran off end of other: ");
            sb2.append(i);
            sb2.append(", ");
            sb2.append(i2);
            sb2.append(", ");
            sb2.append(size2);
            throw new IllegalArgumentException(sb2.toString());
        }
        byte[] bArr = this.c;
        byte[] bArr2 = qm5Var.c;
        int iA = A() + i2;
        int iA2 = A();
        int iA3 = qm5Var.A() + i;
        while (iA2 < iA) {
            if (bArr[iA2] != bArr2[iA3]) {
                return false;
            }
            iA2++;
            iA3++;
        }
        return true;
    }
}

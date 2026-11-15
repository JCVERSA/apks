package defpackage;

public class u08 {
    public int[] a;

    public u08(byte[] bArr) {
        if (bArr.length <= 4) {
            throw new IllegalArgumentException("invalid encoding");
        }
        int iE = sm5.e(bArr, 0);
        int iA = b25.a(iE - 1);
        if (bArr.length != (iE * iA) + 4) {
            throw new IllegalArgumentException("invalid encoding");
        }
        this.a = new int[iE];
        for (int i = 0; i < iE; i++) {
            this.a[i] = sm5.f(bArr, (i * iA) + 4, iA);
        }
        if (!b(this.a)) {
            throw new IllegalArgumentException("invalid encoding");
        }
    }

    public byte[] a() {
        int length = this.a.length;
        int iA = b25.a(length - 1);
        byte[] bArr = new byte[(length * iA) + 4];
        sm5.a(length, bArr, 0);
        for (int i = 0; i < length; i++) {
            sm5.b(this.a[i], bArr, (i * iA) + 4, iA);
        }
        return bArr;
    }

    public final boolean b(int[] iArr) {
        int length = iArr.length;
        boolean[] zArr = new boolean[length];
        for (int i : iArr) {
            if (i < 0 || i >= length || zArr[i]) {
                return false;
            }
            zArr[i] = true;
        }
        return true;
    }

    public boolean equals(Object obj) {
        if (obj instanceof u08) {
            return w15.b(this.a, ((u08) obj).a);
        }
        return false;
    }

    public int hashCode() {
        return ci.y(this.a);
    }

    public String toString() {
        String str = "[" + this.a[0];
        for (int i = 1; i < this.a.length; i++) {
            str = str + ", " + this.a[i];
        }
        return str + "]";
    }
}

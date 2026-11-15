package vz;

public final class z {

    private final byte[] f74075a;

    private final int f74076b;

    z(byte[] bArr, int i10) {
        this.f74075a = bArr;
        this.f74076b = i10;
    }

    static void d(z zVar, d dVar) {
        if (zVar == null) {
            dVar.g(0);
            return;
        }
        byte[] bArr = zVar.f74075a;
        int i10 = zVar.f74076b;
        dVar.h(bArr, i10, (bArr[i10] * 2) + 1);
    }

    public int a() {
        return this.f74075a[this.f74076b];
    }

    public int b(int i10) {
        return this.f74075a[this.f74076b + (i10 * 2) + 1];
    }

    public int c(int i10) {
        return this.f74075a[this.f74076b + (i10 * 2) + 2];
    }

    public String toString() {
        int iA = a();
        StringBuilder sb2 = new StringBuilder(iA * 2);
        for (int i10 = 0; i10 < iA; i10++) {
            int iB = b(i10);
            if (iB == 0) {
                sb2.append('[');
            } else if (iB == 1) {
                sb2.append('.');
            } else if (iB == 2) {
                sb2.append('*');
            } else {
                if (iB != 3) {
                    throw new AssertionError();
                }
                sb2.append(c(i10));
                sb2.append(';');
            }
        }
        return sb2.toString();
    }
}

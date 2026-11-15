package defpackage;

public final class zde {
    public static final long[] d = {128, 64, 32, 16, 8, 4, 2, 1};
    public final byte[] a = new byte[8];
    public int b;
    public int c;

    public static int b(int i) {
        int i2 = 0;
        while (i2 < 8) {
            int i3 = i2 + 1;
            if ((d[i2] & ((long) i)) != 0) {
                return i3;
            }
            i2 = i3;
        }
        return -1;
    }

    public static long c(byte[] bArr, int i, boolean z) {
        long j = ((long) bArr[0]) & 255;
        if (z) {
            j &= ~d[i - 1];
        }
        for (int i2 = 1; i2 < i; i2++) {
            j = (j << 8) | (((long) bArr[i2]) & 255);
        }
        return j;
    }

    public final int a() {
        return this.c;
    }

    public final long d(d9e d9eVar, boolean z, boolean z2, int i) {
        if (this.b == 0) {
            byte[] bArr = this.a;
            if (!d9eVar.d(bArr, 0, 1, z)) {
                return -1L;
            }
            int iB = b(bArr[0] & 255);
            this.c = iB;
            if (iB == -1) {
                throw new IllegalStateException("No valid varint length mask found");
            }
            this.b = 1;
        }
        int i2 = this.c;
        if (i2 > i) {
            this.b = 0;
            return -2L;
        }
        if (i2 != 1) {
            d9eVar.h(this.a, 1, i2 - 1);
        }
        this.b = 0;
        return c(this.a, this.c, z2);
    }

    public final void e() {
        this.b = 0;
        this.c = 0;
    }
}

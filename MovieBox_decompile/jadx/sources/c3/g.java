package c3;

import k2.s;

final class g {

    private static final long[] f16479d = {128, 64, 32, 16, 8, 4, 2, 1};

    private final byte[] f16480a = new byte[8];

    private int f16481b;

    private int f16482c;

    public static long a(byte[] bArr, int i10, boolean z10) {
        long j10 = ((long) bArr[0]) & 255;
        if (z10) {
            j10 &= ~f16479d[i10 - 1];
        }
        for (int i11 = 1; i11 < i10; i11++) {
            j10 = (j10 << 8) | (((long) bArr[i11]) & 255);
        }
        return j10;
    }

    public static int c(int i10) {
        int i11 = 0;
        while (true) {
            long[] jArr = f16479d;
            if (i11 >= jArr.length) {
                return -1;
            }
            if ((jArr[i11] & ((long) i10)) != 0) {
                return i11 + 1;
            }
            i11++;
        }
    }

    public int b() {
        return this.f16482c;
    }

    public long d(s sVar, boolean z10, boolean z11, int i10) {
        if (this.f16481b == 0) {
            if (!sVar.readFully(this.f16480a, 0, 1, z10)) {
                return -1L;
            }
            int iC = c(this.f16480a[0] & 255);
            this.f16482c = iC;
            if (iC == -1) {
                throw new IllegalStateException("No valid varint length mask found");
            }
            this.f16481b = 1;
        }
        int i11 = this.f16482c;
        if (i11 > i10) {
            this.f16481b = 0;
            return -2L;
        }
        if (i11 != 1) {
            sVar.readFully(this.f16480a, 1, i11 - 1);
        }
        this.f16481b = 0;
        return a(this.f16480a, this.f16482c, z11);
    }

    public void e() {
        this.f16481b = 0;
        this.f16482c = 0;
    }
}

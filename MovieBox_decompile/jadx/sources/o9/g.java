package o9;

import i9.m;

final class g {

    private static final long[] f67713d = {128, 64, 32, 16, 8, 4, 2, 1};

    private final byte[] f67714a = new byte[8];

    private int f67715b;

    private int f67716c;

    public static long a(byte[] bArr, int i10, boolean z10) {
        long j10 = ((long) bArr[0]) & 255;
        if (z10) {
            j10 &= ~f67713d[i10 - 1];
        }
        for (int i11 = 1; i11 < i10; i11++) {
            j10 = (j10 << 8) | (((long) bArr[i11]) & 255);
        }
        return j10;
    }

    public static int c(int i10) {
        int i11 = 0;
        while (true) {
            long[] jArr = f67713d;
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
        return this.f67716c;
    }

    public long d(m mVar, boolean z10, boolean z11, int i10) {
        if (this.f67715b == 0) {
            if (!mVar.readFully(this.f67714a, 0, 1, z10)) {
                return -1L;
            }
            int iC = c(this.f67714a[0] & 255);
            this.f67716c = iC;
            if (iC == -1) {
                throw new IllegalStateException("No valid varint length mask found");
            }
            this.f67715b = 1;
        }
        int i11 = this.f67716c;
        if (i11 > i10) {
            this.f67715b = 0;
            return -2L;
        }
        if (i11 != 1) {
            mVar.readFully(this.f67714a, 1, i11 - 1);
        }
        this.f67715b = 0;
        return a(this.f67714a, this.f67716c, z11);
    }

    public void e() {
        this.f67715b = 0;
        this.f67716c = 0;
    }
}

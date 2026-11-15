package defpackage;

import com.google.android.gms.internal.play_billing.s;
import com.google.android.gms.internal.play_billing.zzfp;
import com.google.android.gms.internal.play_billing.zzfv;
import java.io.IOException;
import java.util.Locale;

public final class y2i extends o4i {
    public final byte[] b;
    public final int c;
    public int d;

    public y2i(byte[] bArr, int i, int i2) {
        super(null);
        int length = bArr.length;
        if (((length - i2) | i2) < 0) {
            throw new IllegalArgumentException(String.format(Locale.US, "Array range is invalid. Buffer.length=%d, offset=%d, length=%d", Integer.valueOf(length), 0, Integer.valueOf(i2)));
        }
        this.b = bArr;
        this.d = 0;
        this.c = i2;
    }

    @Override
    public final int b() {
        return this.c - this.d;
    }

    @Override
    public final void c(byte b) throws zzfv {
        IndexOutOfBoundsException indexOutOfBoundsException;
        int i = this.d;
        try {
            int i2 = i + 1;
            try {
                this.b[i] = b;
                this.d = i2;
            } catch (IndexOutOfBoundsException e) {
                indexOutOfBoundsException = e;
                i = i2;
                throw new zzfv(i, this.c, 1, indexOutOfBoundsException);
            }
        } catch (IndexOutOfBoundsException e2) {
            indexOutOfBoundsException = e2;
        }
    }

    @Override
    public final void d(int i, boolean z) throws zzfv {
        s(i << 3);
        c(z ? (byte) 1 : (byte) 0);
    }

    @Override
    public final void e(byte[] bArr, int i, int i2) throws zzfv {
        s(i2);
        y(bArr, 0, i2);
    }

    @Override
    public final void f(int i, zzfp zzfpVar) throws IOException {
        s((i << 3) | 2);
        g(zzfpVar);
    }

    @Override
    public final void g(zzfp zzfpVar) throws IOException {
        s(zzfpVar.zzd());
        zzfpVar.zzg(this);
    }

    @Override
    public final void h(int i, int i2) throws zzfv {
        s((i << 3) | 5);
        i(i2);
    }

    @Override
    public final void i(int i) throws zzfv {
        int i2 = this.d;
        try {
            byte[] bArr = this.b;
            bArr[i2] = (byte) i;
            bArr[i2 + 1] = (byte) (i >> 8);
            bArr[i2 + 2] = (byte) (i >> 16);
            bArr[i2 + 3] = (byte) (i >> 24);
            this.d = i2 + 4;
        } catch (IndexOutOfBoundsException e) {
            throw new zzfv(i2, this.c, 4, e);
        }
    }

    @Override
    public final void j(int i, long j) throws zzfv {
        s((i << 3) | 1);
        k(j);
    }

    @Override
    public final void k(long j) throws zzfv {
        int i = this.d;
        try {
            byte[] bArr = this.b;
            bArr[i] = (byte) j;
            bArr[i + 1] = (byte) (j >> 8);
            bArr[i + 2] = (byte) (j >> 16);
            bArr[i + 3] = (byte) (j >> 24);
            bArr[i + 4] = (byte) (j >> 32);
            bArr[i + 5] = (byte) (j >> 40);
            bArr[i + 6] = (byte) (j >> 48);
            bArr[i + 7] = (byte) (j >> 56);
            this.d = i + 8;
        } catch (IndexOutOfBoundsException e) {
            throw new zzfv(i, this.c, 8, e);
        }
    }

    @Override
    public final void l(int i, int i2) throws zzfv {
        s(i << 3);
        m(i2);
    }

    @Override
    public final void m(int i) throws zzfv {
        IndexOutOfBoundsException indexOutOfBoundsException;
        if (i >= 0) {
            s(i);
            return;
        }
        int i2 = this.d;
        try {
            byte[] bArr = this.b;
            long j = i;
            int i3 = i2 + 1;
            try {
                bArr[i2] = (byte) (((int) j) | 128);
                int i4 = i2 + 2;
                try {
                    bArr[i3] = (byte) (((int) (j >>> 7)) | 128);
                    int i5 = i2 + 3;
                    bArr[i4] = (byte) (((int) (j >>> 14)) | 128);
                    i4 = i2 + 4;
                    bArr[i5] = (byte) (((int) (j >>> 21)) | 128);
                    int i6 = i2 + 5;
                    bArr[i4] = (byte) (((int) (j >>> 28)) | 128);
                    int i7 = i2 + 6;
                    try {
                        bArr[i6] = -1;
                        int i8 = i2 + 7;
                        bArr[i7] = -1;
                        i7 = i2 + 8;
                        bArr[i8] = -1;
                        i3 = i2 + 9;
                        bArr[i7] = -1;
                        i2 += 10;
                        bArr[i3] = 1;
                        this.d = i2;
                    } catch (IndexOutOfBoundsException e) {
                        indexOutOfBoundsException = e;
                        i2 = i7;
                        throw new zzfv(i2, this.c, 10, indexOutOfBoundsException);
                    }
                } catch (IndexOutOfBoundsException e2) {
                    indexOutOfBoundsException = e2;
                    i2 = i4;
                }
            } catch (IndexOutOfBoundsException e3) {
                indexOutOfBoundsException = e3;
                i2 = i3;
            }
        } catch (IndexOutOfBoundsException e4) {
            indexOutOfBoundsException = e4;
        }
    }

    @Override
    public final void n(g0j g0jVar) throws zzfv {
        s(g0jVar.zzn());
        g0jVar.a(this);
    }

    @Override
    public final void o(int i, String str) throws zzfv {
        s((i << 3) | 2);
        p(str);
    }

    @Override
    public final void p(String str) throws zzfv {
        int i = this.d;
        try {
            int iW = o4i.w(str.length() * 3);
            int iW2 = o4i.w(str.length());
            if (iW2 != iW) {
                int i2 = l4j.a;
                s(s.b(str));
                byte[] bArr = this.b;
                int i3 = this.d;
                this.d = l4j.a(str, bArr, i3, bArr.length - i3);
                return;
            }
            int i4 = i + iW2;
            this.d = i4;
            byte[] bArr2 = this.b;
            int iA = l4j.a(str, bArr2, i4, bArr2.length - i4);
            this.d = i;
            s((iA - i) - iW2);
            this.d = iA;
        } catch (IndexOutOfBoundsException e) {
            throw new zzfv(e);
        }
    }

    @Override
    public final void q(int i, int i2) throws zzfv {
        s((i << 3) | i2);
    }

    @Override
    public final void r(int i, int i2) throws zzfv {
        s(i << 3);
        s(i2);
    }

    /* JADX WARN: Not initialized variable reg: 2, insn: 0x0012: MOVE (r0 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r2 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]), block:B:9:0x0011 */
    @Override
    public final void s(int i) throws zzfv {
        IndexOutOfBoundsException indexOutOfBoundsException;
        int i2;
        int i3 = this.d;
        try {
            try {
                if ((i & (-128)) == 0) {
                    int i4 = i3 + 1;
                    this.b[i3] = (byte) i;
                    this.d = i4;
                    return;
                }
                byte[] bArr = this.b;
                int i5 = i3 + 1;
                bArr[i3] = (byte) (i | 128);
                int i6 = i >>> 7;
                if ((i6 & (-128)) == 0) {
                    int i7 = i3 + 2;
                    bArr[i5] = (byte) i6;
                    this.d = i7;
                    return;
                }
                int i8 = i3 + 2;
                try {
                    bArr[i5] = (byte) (i6 | 128);
                    int i9 = i >>> 14;
                    if ((i9 & (-128)) == 0) {
                        int i10 = i3 + 3;
                        bArr[i8] = (byte) i9;
                        this.d = i10;
                        return;
                    }
                    int i11 = i3 + 3;
                    try {
                        bArr[i8] = (byte) (i9 | 128);
                        int i12 = i >>> 21;
                        if ((i12 & (-128)) == 0) {
                            int i13 = i3 + 4;
                            bArr[i11] = (byte) i12;
                            this.d = i13;
                            return;
                        } else {
                            i8 = i3 + 4;
                            bArr[i11] = (byte) (i12 | 128);
                            int i14 = i3 + 5;
                            bArr[i8] = (byte) (i >>> 28);
                            this.d = i14;
                            return;
                        }
                    } catch (IndexOutOfBoundsException e) {
                        indexOutOfBoundsException = e;
                        i3 = i11;
                    }
                } catch (IndexOutOfBoundsException e2) {
                    indexOutOfBoundsException = e2;
                    i3 = i8;
                }
                throw new zzfv(i3, this.c, 1, indexOutOfBoundsException);
            } catch (IndexOutOfBoundsException e3) {
                indexOutOfBoundsException = e3;
            }
        } catch (IndexOutOfBoundsException e4) {
            indexOutOfBoundsException = e4;
            i3 = i2;
        }
    }

    @Override
    public final void t(int i, long j) throws zzfv {
        s(i << 3);
        u(j);
    }

    @Override
    public final void u(long j) throws zzfv {
        long j2 = j & (-128);
        int i = this.d;
        try {
            if (j2 == 0) {
                this.b[i] = (byte) j;
                this.d = i + 1;
                return;
            }
            byte[] bArr = this.b;
            bArr[i] = (byte) (((int) j) | 128);
            int i2 = i + 1;
            long j3 = j >>> 7;
            long j4 = j3 & (-128);
            int i3 = (int) j3;
            if (j4 == 0) {
                bArr[i2] = (byte) i3;
                this.d = i + 2;
                return;
            }
            bArr[i2] = (byte) (i3 | 128);
            int i4 = i + 2;
            long j5 = j >>> 14;
            long j6 = j5 & (-128);
            int i5 = (int) j5;
            if (j6 == 0) {
                bArr[i4] = (byte) i5;
                this.d = i + 3;
                return;
            }
            bArr[i4] = (byte) (i5 | 128);
            int i6 = i + 3;
            long j7 = j >>> 21;
            long j8 = j7 & (-128);
            int i7 = (int) j7;
            if (j8 == 0) {
                bArr[i6] = (byte) i7;
                this.d = i + 4;
                return;
            }
            bArr[i6] = (byte) (i7 | 128);
            int i8 = i + 4;
            long j9 = j >>> 28;
            long j10 = j9 & (-128);
            int i9 = (int) j9;
            if (j10 == 0) {
                bArr[i8] = (byte) i9;
                this.d = i + 5;
                return;
            }
            bArr[i8] = (byte) (i9 | 128);
            int i10 = i + 5;
            long j11 = j >>> 35;
            long j12 = j11 & (-128);
            int i11 = (int) j11;
            if (j12 == 0) {
                bArr[i10] = (byte) i11;
                this.d = i + 6;
                return;
            }
            bArr[i10] = (byte) (i11 | 128);
            int i12 = i + 6;
            long j13 = j >>> 42;
            long j14 = j13 & (-128);
            int i13 = (int) j13;
            if (j14 == 0) {
                bArr[i12] = (byte) i13;
                this.d = i + 7;
                return;
            }
            bArr[i12] = (byte) (i13 | 128);
            int i14 = i + 7;
            long j15 = j >>> 49;
            long j16 = j15 & (-128);
            int i15 = (int) j15;
            if (j16 == 0) {
                bArr[i14] = (byte) i15;
                this.d = i + 8;
                return;
            }
            bArr[i14] = (byte) (i15 | 128);
            int i16 = i + 8;
            long j17 = j >>> 56;
            int i17 = (int) j17;
            if (((-128) & j17) == 0) {
                bArr[i16] = (byte) i17;
                this.d = i + 9;
            } else {
                bArr[i16] = (byte) (i17 | 128);
                bArr[i + 9] = (byte) (j >>> 63);
                this.d = i + 10;
            }
        } catch (IndexOutOfBoundsException e) {
            throw new zzfv(i, this.c, 1, e);
        }
    }

    public final void y(byte[] bArr, int i, int i2) throws zzfv {
        try {
            System.arraycopy(bArr, i, this.b, this.d, i2);
            this.d += i2;
        } catch (IndexOutOfBoundsException e) {
            throw new zzfv(this.d, this.c, i2, e);
        }
    }
}

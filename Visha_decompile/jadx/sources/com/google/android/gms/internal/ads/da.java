package com.google.android.gms.internal.ads;

import com.transsion.socket.pkgdata.SocketData;
import defpackage.uri;
import defpackage.vri;
import defpackage.vui;
import defpackage.zsi;
import java.nio.ByteBuffer;
import java.util.Iterator;

public final class da extends vri {
    public final Iterable e;
    public final Iterator f;
    public ByteBuffer g;
    public int h;
    public int i;
    public int j;
    public int k;
    public int l;
    public long m;
    public long n;
    public long o;

    public da(Iterable iterable, int i, boolean z, uri uriVar) {
        super(null);
        this.j = Integer.MAX_VALUE;
        this.h = i;
        this.e = iterable;
        this.f = iterable.iterator();
        this.l = 0;
        if (i != 0) {
            G();
            return;
        }
        this.g = zsi.c;
        this.m = 0L;
        this.n = 0L;
        this.o = 0L;
    }

    @Override
    public final void A(int i) {
        this.j = i;
        F();
    }

    public final long B() throws zzgyk {
        long j = 0;
        for (int i = 0; i < 64; i += 7) {
            byte bH = H();
            j |= ((long) (bH & 127)) << i;
            if ((bH & SocketData.CLAZZ_TYPE_END_SOCKET) == 0) {
                return j;
            }
        }
        throw new zzgyk("CodedInputStream encountered a malformed varint.");
    }

    public final int C() {
        return (int) ((((long) (this.h - this.l)) - this.m) + this.n);
    }

    public final void D() throws zzgyk {
        if (!this.f.hasNext()) {
            throw new zzgyk("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
        }
        G();
    }

    public final void E(byte[] bArr, int i, int i2) throws zzgyk {
        if (i2 > C()) {
            if (i2 > 0) {
                throw new zzgyk("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
            }
            return;
        }
        int i3 = i2;
        while (i3 > 0) {
            if (this.o - this.m == 0) {
                D();
            }
            int iMin = Math.min(i3, (int) (this.o - this.m));
            long j = iMin;
            vui.w(this.m, bArr, i2 - i3, j);
            i3 -= iMin;
            this.m += j;
        }
    }

    public final void F() {
        int i = this.h + this.i;
        this.h = i;
        int i2 = this.j;
        if (i <= i2) {
            this.i = 0;
            return;
        }
        int i3 = i - i2;
        this.i = i3;
        this.h = i - i3;
    }

    public final void G() {
        ByteBuffer byteBuffer = (ByteBuffer) this.f.next();
        this.g = byteBuffer;
        this.l += (int) (this.m - this.n);
        long jPosition = byteBuffer.position();
        this.m = jPosition;
        this.n = jPosition;
        this.o = this.g.limit();
        long jM = vui.m(this.g);
        this.m += jM;
        this.n += jM;
        this.o += jM;
    }

    public final byte H() throws zzgyk {
        if (this.o - this.m == 0) {
            D();
        }
        long j = this.m;
        this.m = 1 + j;
        return vui.i(j);
    }

    public final int I() {
        long j = this.o;
        long j2 = this.m;
        if (j - j2 < 4) {
            int iH = H() & 255;
            int iH2 = (H() & 255) << 8;
            return ((H() & 255) << 24) | iH | iH2 | ((H() & 255) << 16);
        }
        this.m = 4 + j2;
        int i = vui.i(j2) & 255;
        int i2 = (vui.i(1 + j2) & 255) << 8;
        return i | i2 | ((vui.i(2 + j2) & 255) << 16) | ((vui.i(j2 + 3) & 255) << 24);
    }

    public final int J() {
        int i;
        long j = this.m;
        if (this.o != j) {
            long j2 = j + 1;
            byte bI = vui.i(j);
            if (bI >= 0) {
                this.m++;
                return bI;
            }
            if (this.o - this.m >= 10) {
                long j3 = 2 + j;
                int i2 = (vui.i(j2) << 7) ^ bI;
                if (i2 < 0) {
                    i = i2 ^ (-128);
                } else {
                    long j4 = 3 + j;
                    int i3 = (vui.i(j3) << 14) ^ i2;
                    if (i3 >= 0) {
                        i = i3 ^ 16256;
                    } else {
                        long j5 = 4 + j;
                        int i4 = i3 ^ (vui.i(j4) << 21);
                        if (i4 < 0) {
                            i = (-2080896) ^ i4;
                        } else {
                            j4 = 5 + j;
                            byte bI2 = vui.i(j5);
                            int i5 = (i4 ^ (bI2 << 28)) ^ 266354560;
                            if (bI2 < 0) {
                                j5 = 6 + j;
                                if (vui.i(j4) < 0) {
                                    j4 = 7 + j;
                                    if (vui.i(j5) < 0) {
                                        j5 = 8 + j;
                                        if (vui.i(j4) < 0) {
                                            j4 = 9 + j;
                                            if (vui.i(j5) < 0) {
                                                long j6 = j + 10;
                                                if (vui.i(j4) >= 0) {
                                                    i = i5;
                                                    j3 = j6;
                                                }
                                            }
                                        }
                                    }
                                }
                                i = i5;
                            }
                            i = i5;
                        }
                        j3 = j5;
                    }
                    j3 = j4;
                }
                this.m = j3;
                return i;
            }
        }
        return (int) B();
    }

    public final long K() {
        long j = this.o;
        long j2 = this.m;
        if (j - j2 < 8) {
            long jH = ((long) H()) & 255;
            long jH2 = (((long) H()) & 255) << 8;
            long jH3 = (((long) H()) & 255) << 16;
            long jH4 = (((long) H()) & 255) << 24;
            long jH5 = (((long) H()) & 255) << 32;
            long jH6 = (((long) H()) & 255) << 40;
            long jH7 = (((long) H()) & 255) << 48;
            return jH | jH2 | jH3 | jH4 | jH5 | jH6 | jH7 | ((((long) H()) & 255) << 56);
        }
        this.m = 8 + j2;
        long jI = ((long) vui.i(j2)) & 255;
        long jI2 = (((long) vui.i(1 + j2)) & 255) << 8;
        long jI3 = (((long) vui.i(2 + j2)) & 255) << 16;
        long jI4 = (((long) vui.i(3 + j2)) & 255) << 24;
        long jI5 = (((long) vui.i(j2 + 4)) & 255) << 32;
        long jI6 = (((long) vui.i(j2 + 5)) & 255) << 40;
        return jI | jI2 | jI3 | jI4 | jI5 | jI6 | ((((long) vui.i(j2 + 6)) & 255) << 48) | ((((long) vui.i(j2 + 7)) & 255) << 56);
    }

    public final long L() {
        long j;
        long j2;
        long j3 = this.m;
        if (this.o != j3) {
            long j4 = j3 + 1;
            byte bI = vui.i(j3);
            if (bI >= 0) {
                this.m++;
                return bI;
            }
            if (this.o - this.m >= 10) {
                long j5 = 2 + j3;
                int i = (vui.i(j4) << 7) ^ bI;
                if (i < 0) {
                    j = i ^ (-128);
                } else {
                    long j6 = 3 + j3;
                    int i2 = (vui.i(j5) << 14) ^ i;
                    if (i2 >= 0) {
                        j = i2 ^ 16256;
                    } else {
                        long j7 = 4 + j3;
                        int i3 = i2 ^ (vui.i(j6) << 21);
                        if (i3 < 0) {
                            j = (-2080896) ^ i3;
                            j5 = j7;
                        } else {
                            j6 = 5 + j3;
                            long jI = (((long) vui.i(j7)) << 28) ^ ((long) i3);
                            if (jI >= 0) {
                                j = 266354560 ^ jI;
                            } else {
                                long j8 = 6 + j3;
                                long jI2 = jI ^ (((long) vui.i(j6)) << 35);
                                if (jI2 < 0) {
                                    j2 = -34093383808L;
                                } else {
                                    long j9 = 7 + j3;
                                    long jI3 = jI2 ^ (((long) vui.i(j8)) << 42);
                                    if (jI3 >= 0) {
                                        j = 4363953127296L ^ jI3;
                                    } else {
                                        j8 = 8 + j3;
                                        jI2 = jI3 ^ (((long) vui.i(j9)) << 49);
                                        if (jI2 < 0) {
                                            j2 = -558586000294016L;
                                        } else {
                                            j9 = 9 + j3;
                                            long jI4 = (jI2 ^ (((long) vui.i(j8)) << 56)) ^ 71499008037633920L;
                                            if (jI4 < 0) {
                                                long j10 = j3 + 10;
                                                if (vui.i(j9) >= 0) {
                                                    j = jI4;
                                                    j5 = j10;
                                                }
                                            } else {
                                                j = jI4;
                                            }
                                        }
                                    }
                                    j5 = j9;
                                }
                                j = j2 ^ jI2;
                                j5 = j8;
                            }
                        }
                    }
                    j5 = j6;
                }
                this.m = j5;
                return j;
            }
        }
        return B();
    }

    @Override
    public final boolean a() {
        return (((long) this.l) + this.m) - this.n == ((long) this.h);
    }

    @Override
    public final boolean b() {
        return L() != 0;
    }

    @Override
    public final double g() {
        return Double.longBitsToDouble(K());
    }

    @Override
    public final float h() {
        return Float.intBitsToFloat(I());
    }

    @Override
    public final int i() {
        return (int) ((((long) this.l) + this.m) - this.n);
    }

    @Override
    public final int j(int i) throws zzgyk {
        if (i < 0) {
            throw new zzgyk("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
        }
        int i2 = i + i();
        int i3 = this.j;
        if (i2 > i3) {
            throw new zzgyk("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
        }
        this.j = i2;
        F();
        return i3;
    }

    @Override
    public final int k() {
        return J();
    }

    @Override
    public final int l() {
        return I();
    }

    @Override
    public final int m() {
        return J();
    }

    @Override
    public final int n() {
        return I();
    }

    @Override
    public final int o() {
        return vri.c(J());
    }

    @Override
    public final int p() throws zzgyk {
        if (a()) {
            this.k = 0;
            return 0;
        }
        int iJ = J();
        this.k = iJ;
        if ((iJ >>> 3) != 0) {
            return iJ;
        }
        throw new zzgyk("Protocol message contained an invalid tag (zero).");
    }

    @Override
    public final int q() {
        return J();
    }

    @Override
    public final long r() {
        return K();
    }

    @Override
    public final long s() {
        return L();
    }

    @Override
    public final long t() {
        return K();
    }

    @Override
    public final long u() {
        return vri.d(L());
    }

    @Override
    public final long v() {
        return L();
    }

    @Override
    public final zzgwn w() throws zzgyk {
        int iJ = J();
        if (iJ > 0) {
            long j = this.o;
            long j2 = this.m;
            long j3 = iJ;
            if (j3 <= j - j2) {
                byte[] bArr = new byte[iJ];
                vui.w(j2, bArr, 0L, j3);
                this.m += j3;
                zzgwn zzgwnVar = zzgwn.zzb;
                return new zzgwk(bArr);
            }
        }
        if (iJ > 0 && iJ <= C()) {
            byte[] bArr2 = new byte[iJ];
            E(bArr2, 0, iJ);
            zzgwn zzgwnVar2 = zzgwn.zzb;
            return new zzgwk(bArr2);
        }
        if (iJ == 0) {
            return zzgwn.zzb;
        }
        if (iJ < 0) {
            throw new zzgyk("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
        }
        throw new zzgyk("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
    }

    @Override
    public final String x() throws zzgyk {
        int iJ = J();
        if (iJ > 0) {
            long j = this.o;
            long j2 = this.m;
            long j3 = iJ;
            if (j3 <= j - j2) {
                byte[] bArr = new byte[iJ];
                vui.w(j2, bArr, 0L, j3);
                String str = new String(bArr, zsi.a);
                this.m += j3;
                return str;
            }
        }
        if (iJ > 0 && iJ <= C()) {
            byte[] bArr2 = new byte[iJ];
            E(bArr2, 0, iJ);
            return new String(bArr2, zsi.a);
        }
        if (iJ == 0) {
            return "";
        }
        if (iJ < 0) {
            throw new zzgyk("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
        }
        throw new zzgyk("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
    }

    @Override
    public final String y() throws zzgyk {
        int iJ = J();
        if (iJ > 0) {
            long j = this.o;
            long j2 = this.m;
            long j3 = iJ;
            if (j3 <= j - j2) {
                String strG = ra.g(this.g, (int) (j2 - this.n), iJ);
                this.m += j3;
                return strG;
            }
        }
        if (iJ >= 0 && iJ <= C()) {
            byte[] bArr = new byte[iJ];
            E(bArr, 0, iJ);
            return ra.h(bArr, 0, iJ);
        }
        if (iJ == 0) {
            return "";
        }
        if (iJ <= 0) {
            throw new zzgyk("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
        }
        throw new zzgyk("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
    }

    @Override
    public final void z(int i) throws zzgyk {
        if (this.k != i) {
            throw new zzgyk("Protocol message end-group tag did not match expected tag.");
        }
    }
}

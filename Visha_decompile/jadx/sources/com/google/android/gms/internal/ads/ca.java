package com.google.android.gms.internal.ads;

import com.transsion.socket.pkgdata.SocketData;
import defpackage.uri;
import defpackage.vri;
import defpackage.zsi;
import java.util.Arrays;

public final class ca extends vri {
    public final byte[] e;
    public int f;
    public int g;
    public int h;
    public final int i;
    public int j;
    public int k;

    public ca(byte[] bArr, int i, int i2, boolean z, uri uriVar) {
        super(null);
        this.k = Integer.MAX_VALUE;
        this.e = bArr;
        this.f = i2 + i;
        this.h = i;
        this.i = i;
    }

    @Override
    public final void A(int i) {
        this.k = i;
        B();
    }

    public final void B() {
        int i = this.f + this.g;
        this.f = i;
        int i2 = i - this.i;
        int i3 = this.k;
        if (i2 <= i3) {
            this.g = 0;
            return;
        }
        int i4 = i2 - i3;
        this.g = i4;
        this.f = i - i4;
    }

    public final int C() throws zzgyk {
        int i = this.h;
        if (this.f - i < 4) {
            throw new zzgyk("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
        }
        byte[] bArr = this.e;
        this.h = i + 4;
        return (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16) | ((bArr[i + 3] & 255) << 24);
    }

    public final int D() {
        int i;
        int i2 = this.h;
        int i3 = this.f;
        if (i3 != i2) {
            byte[] bArr = this.e;
            int i4 = i2 + 1;
            byte b = bArr[i2];
            if (b >= 0) {
                this.h = i4;
                return b;
            }
            if (i3 - i4 >= 9) {
                int i5 = i2 + 2;
                int i6 = (bArr[i4] << 7) ^ b;
                if (i6 < 0) {
                    i = i6 ^ (-128);
                } else {
                    int i7 = i2 + 3;
                    int i8 = (bArr[i5] << 14) ^ i6;
                    if (i8 >= 0) {
                        i = i8 ^ 16256;
                    } else {
                        int i9 = i2 + 4;
                        int i10 = i8 ^ (bArr[i7] << 21);
                        if (i10 < 0) {
                            i = (-2080896) ^ i10;
                        } else {
                            i7 = i2 + 5;
                            byte b2 = bArr[i9];
                            int i11 = (i10 ^ (b2 << 28)) ^ 266354560;
                            if (b2 < 0) {
                                i9 = i2 + 6;
                                if (bArr[i7] < 0) {
                                    i7 = i2 + 7;
                                    if (bArr[i9] < 0) {
                                        i9 = i2 + 8;
                                        if (bArr[i7] < 0) {
                                            i7 = i2 + 9;
                                            if (bArr[i9] < 0) {
                                                int i12 = i2 + 10;
                                                if (bArr[i7] >= 0) {
                                                    i5 = i12;
                                                    i = i11;
                                                }
                                            }
                                        }
                                    }
                                }
                                i = i11;
                            }
                            i = i11;
                        }
                        i5 = i9;
                    }
                    i5 = i7;
                }
                this.h = i5;
                return i;
            }
        }
        return (int) G();
    }

    public final long E() throws zzgyk {
        int i = this.h;
        if (this.f - i < 8) {
            throw new zzgyk("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
        }
        byte[] bArr = this.e;
        this.h = i + 8;
        long j = bArr[i];
        long j2 = (((long) bArr[i + 1]) & 255) << 8;
        long j3 = bArr[i + 2];
        long j4 = bArr[i + 3];
        long j5 = bArr[i + 4];
        long j6 = bArr[i + 5];
        long j7 = bArr[i + 6];
        long j8 = (j & 255) | j2 | ((j3 & 255) << 16) | ((j4 & 255) << 24);
        long j9 = j6 & 255;
        return ((((long) bArr[i + 7]) & 255) << 56) | ((j7 & 255) << 48) | j8 | ((j5 & 255) << 32) | (j9 << 40);
    }

    public final long F() {
        long j;
        long j2;
        int i = this.h;
        int i2 = this.f;
        if (i2 != i) {
            byte[] bArr = this.e;
            int i3 = i + 1;
            byte b = bArr[i];
            if (b >= 0) {
                this.h = i3;
                return b;
            }
            if (i2 - i3 >= 9) {
                int i4 = i + 2;
                int i5 = (bArr[i3] << 7) ^ b;
                if (i5 < 0) {
                    j = i5 ^ (-128);
                } else {
                    int i6 = i + 3;
                    int i7 = (bArr[i4] << 14) ^ i5;
                    if (i7 >= 0) {
                        j = i7 ^ 16256;
                    } else {
                        int i8 = i + 4;
                        int i9 = i7 ^ (bArr[i6] << 21);
                        if (i9 < 0) {
                            long j3 = (-2080896) ^ i9;
                            i4 = i8;
                            j = j3;
                        } else {
                            i6 = i + 5;
                            long j4 = (((long) bArr[i8]) << 28) ^ ((long) i9);
                            if (j4 >= 0) {
                                j = j4 ^ 266354560;
                            } else {
                                i4 = i + 6;
                                long j5 = (((long) bArr[i6]) << 35) ^ j4;
                                if (j5 < 0) {
                                    j2 = -34093383808L;
                                } else {
                                    int i10 = i + 7;
                                    long j6 = j5 ^ (((long) bArr[i4]) << 42);
                                    if (j6 >= 0) {
                                        j = j6 ^ 4363953127296L;
                                    } else {
                                        i4 = i + 8;
                                        j5 = j6 ^ (((long) bArr[i10]) << 49);
                                        if (j5 < 0) {
                                            j2 = -558586000294016L;
                                        } else {
                                            i10 = i + 9;
                                            long j7 = (j5 ^ (((long) bArr[i4]) << 56)) ^ 71499008037633920L;
                                            if (j7 < 0) {
                                                i4 = i + 10;
                                                if (bArr[i10] >= 0) {
                                                    j = j7;
                                                }
                                            } else {
                                                j = j7;
                                            }
                                        }
                                    }
                                    i4 = i10;
                                }
                                j = j5 ^ j2;
                            }
                        }
                    }
                    i4 = i6;
                }
                this.h = i4;
                return j;
            }
        }
        return G();
    }

    public final long G() throws zzgyk {
        long j = 0;
        for (int i = 0; i < 64; i += 7) {
            int i2 = this.h;
            if (i2 == this.f) {
                throw new zzgyk("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
            }
            byte[] bArr = this.e;
            this.h = i2 + 1;
            byte b = bArr[i2];
            j |= ((long) (b & 127)) << i;
            if ((b & SocketData.CLAZZ_TYPE_END_SOCKET) == 0) {
                return j;
            }
        }
        throw new zzgyk("CodedInputStream encountered a malformed varint.");
    }

    @Override
    public final boolean a() {
        return this.h == this.f;
    }

    @Override
    public final boolean b() {
        return F() != 0;
    }

    @Override
    public final double g() {
        return Double.longBitsToDouble(E());
    }

    @Override
    public final float h() {
        return Float.intBitsToFloat(C());
    }

    @Override
    public final int i() {
        return this.h - this.i;
    }

    @Override
    public final int j(int i) {
        if (i < 0) {
            throw new zzgyk("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
        }
        int i2 = i + (this.h - this.i);
        if (i2 < 0) {
            throw new zzgyk("Protocol message was too large.  May be malicious.  Use CodedInputStream.setSizeLimit() to increase the size limit. If reading multiple messages, consider resetting the counter between each message using CodedInputStream.resetSizeCounter().");
        }
        int i3 = this.k;
        if (i2 > i3) {
            throw new zzgyk("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
        }
        this.k = i2;
        B();
        return i3;
    }

    @Override
    public final int k() {
        return D();
    }

    @Override
    public final int l() {
        return C();
    }

    @Override
    public final int m() {
        return D();
    }

    @Override
    public final int n() {
        return C();
    }

    @Override
    public final int o() {
        return vri.c(D());
    }

    @Override
    public final int p() throws zzgyk {
        if (a()) {
            this.j = 0;
            return 0;
        }
        int iD = D();
        this.j = iD;
        if ((iD >>> 3) != 0) {
            return iD;
        }
        throw new zzgyk("Protocol message contained an invalid tag (zero).");
    }

    @Override
    public final int q() {
        return D();
    }

    @Override
    public final long r() {
        return E();
    }

    @Override
    public final long s() {
        return F();
    }

    @Override
    public final long t() {
        return E();
    }

    @Override
    public final long u() {
        return vri.d(F());
    }

    @Override
    public final long v() {
        return F();
    }

    @Override
    public final zzgwn w() throws zzgyk {
        int iD = D();
        if (iD > 0) {
            int i = this.f;
            int i2 = this.h;
            if (iD <= i - i2) {
                zzgwn zzgwnVarZzv = zzgwn.zzv(this.e, i2, iD);
                this.h += iD;
                return zzgwnVarZzv;
            }
        }
        if (iD == 0) {
            return zzgwn.zzb;
        }
        if (iD > 0) {
            int i3 = this.f;
            int i4 = this.h;
            if (iD <= i3 - i4) {
                int i5 = iD + i4;
                this.h = i5;
                byte[] bArrCopyOfRange = Arrays.copyOfRange(this.e, i4, i5);
                zzgwn zzgwnVar = zzgwn.zzb;
                return new zzgwk(bArrCopyOfRange);
            }
        }
        if (iD <= 0) {
            throw new zzgyk("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
        }
        throw new zzgyk("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
    }

    @Override
    public final String x() throws zzgyk {
        int iD = D();
        if (iD > 0) {
            int i = this.f;
            int i2 = this.h;
            if (iD <= i - i2) {
                String str = new String(this.e, i2, iD, zsi.a);
                this.h += iD;
                return str;
            }
        }
        if (iD == 0) {
            return "";
        }
        if (iD < 0) {
            throw new zzgyk("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
        }
        throw new zzgyk("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
    }

    @Override
    public final String y() throws zzgyk {
        int iD = D();
        if (iD > 0) {
            int i = this.f;
            int i2 = this.h;
            if (iD <= i - i2) {
                String strH = ra.h(this.e, i2, iD);
                this.h += iD;
                return strH;
            }
        }
        if (iD == 0) {
            return "";
        }
        if (iD <= 0) {
            throw new zzgyk("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
        }
        throw new zzgyk("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
    }

    @Override
    public final void z(int i) throws zzgyk {
        if (this.j != i) {
            throw new zzgyk("Protocol message end-group tag did not match expected tag.");
        }
    }
}

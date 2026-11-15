package com.google.android.gms.internal.ads;

import androidx.media3.common.C;
import com.transsion.socket.pkgdata.SocketData;
import defpackage.uri;
import defpackage.vri;
import defpackage.zsi;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.List;

public final class ea extends vri {
    public final InputStream e;
    public final byte[] f;
    public int g;
    public int h;
    public int i;
    public int j;
    public int k;
    public int l;

    public ea(InputStream inputStream, int i, uri uriVar) {
        super(null);
        this.l = Integer.MAX_VALUE;
        Charset charset = zsi.a;
        this.e = inputStream;
        this.f = new byte[4096];
        this.g = 0;
        this.i = 0;
        this.k = 0;
    }

    private final void D() {
        int i = this.g + this.h;
        this.g = i;
        int i2 = this.k + i;
        int i3 = this.l;
        if (i2 <= i3) {
            this.h = 0;
            return;
        }
        int i4 = i2 - i3;
        this.h = i4;
        this.g = i - i4;
    }

    @Override
    public final void A(int i) {
        this.l = i;
        D();
    }

    public final void B(int i) throws zzgyk {
        int i2 = this.g;
        int i3 = this.i;
        int i4 = i2 - i3;
        if (i <= i4 && i >= 0) {
            this.i = i3 + i;
            return;
        }
        if (i < 0) {
            throw new zzgyk("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
        }
        int i5 = this.k;
        int i6 = i5 + i3;
        int i7 = this.l;
        if (i6 + i > i7) {
            B((i7 - i5) - i3);
            throw new zzgyk("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
        }
        this.k = i6;
        this.g = 0;
        this.i = 0;
        while (i4 < i) {
            try {
                long j = i - i4;
                try {
                    long jSkip = this.e.skip(j);
                    if (jSkip < 0 || jSkip > j) {
                        throw new IllegalStateException(String.valueOf(this.e.getClass()) + "#skip returned invalid result: " + jSkip + "\nThe InputStream implementation is buggy.");
                    }
                    if (jSkip == 0) {
                        break;
                    } else {
                        i4 += (int) jSkip;
                    }
                } catch (zzgyk e) {
                    e.zza();
                    throw e;
                }
            } catch (Throwable th) {
                this.k += i4;
                D();
                throw th;
            }
        }
        this.k += i4;
        D();
        if (i4 >= i) {
            return;
        }
        int i8 = this.g;
        int i9 = i8 - this.i;
        this.i = i8;
        E(1);
        while (true) {
            int i10 = i - i9;
            int i11 = this.g;
            if (i10 <= i11) {
                this.i = i10;
                return;
            } else {
                i9 += i11;
                this.i = i11;
                E(1);
            }
        }
    }

    public final List C(int i) throws IOException {
        ArrayList arrayList = new ArrayList();
        while (i > 0) {
            int iMin = Math.min(i, 4096);
            byte[] bArr = new byte[iMin];
            int i2 = 0;
            while (i2 < iMin) {
                int i3 = this.e.read(bArr, i2, iMin - i2);
                if (i3 == -1) {
                    throw new zzgyk("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
                }
                this.k += i3;
                i2 += i3;
            }
            i -= iMin;
            arrayList.add(bArr);
        }
        return arrayList;
    }

    public final void E(int i) throws zzgyk {
        if (F(i)) {
            return;
        }
        if (i <= (Integer.MAX_VALUE - this.k) - this.i) {
            throw new zzgyk("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
        }
        throw new zzgyk("Protocol message was too large.  May be malicious.  Use CodedInputStream.setSizeLimit() to increase the size limit. If reading multiple messages, consider resetting the counter between each message using CodedInputStream.resetSizeCounter().");
    }

    public final boolean F(int i) throws IOException {
        int i2 = this.i;
        int i3 = i2 + i;
        int i4 = this.g;
        if (i3 <= i4) {
            throw new IllegalStateException("refillBuffer() called when " + i + " bytes were already available in buffer");
        }
        int i5 = this.k;
        if (i > (Integer.MAX_VALUE - i5) - i2 || i5 + i2 + i > this.l) {
            return false;
        }
        if (i2 > 0) {
            if (i4 > i2) {
                byte[] bArr = this.f;
                System.arraycopy(bArr, i2, bArr, 0, i4 - i2);
            }
            i5 = this.k + i2;
            this.k = i5;
            i4 = this.g - i2;
            this.g = i4;
            this.i = 0;
        }
        try {
            int i6 = this.e.read(this.f, i4, Math.min(4096 - i4, (Integer.MAX_VALUE - i5) - i4));
            if (i6 == 0 || i6 < -1 || i6 > 4096) {
                throw new IllegalStateException(String.valueOf(this.e.getClass()) + "#read(byte[]) returned invalid result: " + i6 + "\nThe InputStream implementation is buggy.");
            }
            if (i6 <= 0) {
                return false;
            }
            this.g += i6;
            D();
            if (this.g >= i) {
                return true;
            }
            return F(i);
        } catch (zzgyk e) {
            e.zza();
            throw e;
        }
    }

    public final byte[] G(int i, boolean z) throws IOException {
        byte[] bArrH = H(i);
        if (bArrH != null) {
            return bArrH;
        }
        int i2 = this.i;
        int i3 = this.g;
        int i4 = i3 - i2;
        this.k += i3;
        this.i = 0;
        this.g = 0;
        List<byte[]> listC = C(i - i4);
        byte[] bArr = new byte[i];
        System.arraycopy(this.f, i2, bArr, 0, i4);
        for (byte[] bArr2 : listC) {
            int length = bArr2.length;
            System.arraycopy(bArr2, 0, bArr, i4, length);
            i4 += length;
        }
        return bArr;
    }

    public final byte[] H(int i) throws IOException {
        if (i == 0) {
            return zsi.b;
        }
        int i2 = this.k;
        int i3 = this.i;
        int i4 = i2 + i3 + i;
        if (C.RATE_UNSET_INT + i4 > 0) {
            throw new zzgyk("Protocol message was too large.  May be malicious.  Use CodedInputStream.setSizeLimit() to increase the size limit. If reading multiple messages, consider resetting the counter between each message using CodedInputStream.resetSizeCounter().");
        }
        int i5 = this.l;
        if (i4 > i5) {
            B((i5 - i2) - i3);
            throw new zzgyk("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
        }
        int i6 = this.g - i3;
        int i7 = i - i6;
        if (i7 >= 4096) {
            try {
                if (i7 > this.e.available()) {
                    return null;
                }
            } catch (zzgyk e) {
                e.zza();
                throw e;
            }
        }
        byte[] bArr = new byte[i];
        System.arraycopy(this.f, this.i, bArr, 0, i6);
        this.k += this.g;
        this.i = 0;
        this.g = 0;
        while (i6 < i) {
            try {
                int i8 = this.e.read(bArr, i6, i - i6);
                if (i8 == -1) {
                    throw new zzgyk("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
                }
                this.k += i8;
                i6 += i8;
            } catch (zzgyk e2) {
                e2.zza();
                throw e2;
            }
        }
        return bArr;
    }

    public final int I() throws zzgyk {
        int i = this.i;
        if (this.g - i < 4) {
            E(4);
            i = this.i;
        }
        byte[] bArr = this.f;
        this.i = i + 4;
        return (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16) | ((bArr[i + 3] & 255) << 24);
    }

    public final int J() {
        int i;
        int i2 = this.i;
        int i3 = this.g;
        if (i3 != i2) {
            byte[] bArr = this.f;
            int i4 = i2 + 1;
            byte b = bArr[i2];
            if (b >= 0) {
                this.i = i4;
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
                this.i = i5;
                return i;
            }
        }
        return (int) M();
    }

    public final long K() throws zzgyk {
        int i = this.i;
        if (this.g - i < 8) {
            E(8);
            i = this.i;
        }
        byte[] bArr = this.f;
        this.i = i + 8;
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

    public final long L() {
        long j;
        long j2;
        int i = this.i;
        int i2 = this.g;
        if (i2 != i) {
            byte[] bArr = this.f;
            int i3 = i + 1;
            byte b = bArr[i];
            if (b >= 0) {
                this.i = i3;
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
                this.i = i4;
                return j;
            }
        }
        return M();
    }

    public final long M() throws zzgyk {
        long j = 0;
        for (int i = 0; i < 64; i += 7) {
            if (this.i == this.g) {
                E(1);
            }
            byte[] bArr = this.f;
            int i2 = this.i;
            this.i = i2 + 1;
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
        return this.i == this.g && !F(1);
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
        return this.k + this.i;
    }

    @Override
    public final int j(int i) throws zzgyk {
        if (i < 0) {
            throw new zzgyk("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
        }
        int i2 = i + this.k + this.i;
        if (i2 < 0) {
            throw new zzgyk("Protocol message was too large.  May be malicious.  Use CodedInputStream.setSizeLimit() to increase the size limit. If reading multiple messages, consider resetting the counter between each message using CodedInputStream.resetSizeCounter().");
        }
        int i3 = this.l;
        if (i2 > i3) {
            throw new zzgyk("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
        }
        this.l = i2;
        D();
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
            this.j = 0;
            return 0;
        }
        int iJ = J();
        this.j = iJ;
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
    public final zzgwn w() throws IOException {
        int iJ = J();
        int i = this.g;
        int i2 = this.i;
        if (iJ <= i - i2 && iJ > 0) {
            zzgwn zzgwnVarZzv = zzgwn.zzv(this.f, i2, iJ);
            this.i += iJ;
            return zzgwnVarZzv;
        }
        if (iJ == 0) {
            return zzgwn.zzb;
        }
        if (iJ < 0) {
            throw new zzgyk("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
        }
        byte[] bArrH = H(iJ);
        if (bArrH != null) {
            return zzgwn.zzv(bArrH, 0, bArrH.length);
        }
        int i3 = this.i;
        int i4 = this.g;
        int i5 = i4 - i3;
        this.k += i4;
        this.i = 0;
        this.g = 0;
        List<byte[]> listC = C(iJ - i5);
        byte[] bArr = new byte[iJ];
        System.arraycopy(this.f, i3, bArr, 0, i5);
        for (byte[] bArr2 : listC) {
            int length = bArr2.length;
            System.arraycopy(bArr2, 0, bArr, i5, length);
            i5 += length;
        }
        zzgwn zzgwnVar = zzgwn.zzb;
        return new zzgwk(bArr);
    }

    @Override
    public final String x() throws zzgyk {
        int iJ = J();
        if (iJ > 0) {
            int i = this.g;
            int i2 = this.i;
            if (iJ <= i - i2) {
                String str = new String(this.f, i2, iJ, zsi.a);
                this.i += iJ;
                return str;
            }
        }
        if (iJ == 0) {
            return "";
        }
        if (iJ < 0) {
            throw new zzgyk("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
        }
        if (iJ > this.g) {
            return new String(G(iJ, false), zsi.a);
        }
        E(iJ);
        String str2 = new String(this.f, this.i, iJ, zsi.a);
        this.i += iJ;
        return str2;
    }

    @Override
    public final String y() throws IOException {
        byte[] bArrG;
        int iJ = J();
        int i = this.i;
        int i2 = this.g;
        if (iJ <= i2 - i && iJ > 0) {
            bArrG = this.f;
            this.i = i + iJ;
        } else {
            if (iJ == 0) {
                return "";
            }
            if (iJ < 0) {
                throw new zzgyk("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
            }
            i = 0;
            if (iJ <= i2) {
                E(iJ);
                bArrG = this.f;
                this.i = iJ;
            } else {
                bArrG = G(iJ, false);
            }
        }
        return ra.h(bArrG, i, iJ);
    }

    @Override
    public final void z(int i) throws zzgyk {
        if (this.j != i) {
            throw new zzgyk("Protocol message end-group tag did not match expected tag.");
        }
    }
}

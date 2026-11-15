package kotlin.reflect.jvm.internal.impl.protobuf;

import com.transsion.socket.pkgdata.SocketData;
import defpackage.cx7;
import defpackage.ikb;
import defpackage.lk0;
import defpackage.po0;
import defpackage.qm5;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;

public final class c {
    public int d;
    public final InputStream f;
    public int g;
    public int k;
    public boolean h = false;
    public int j = Integer.MAX_VALUE;
    public int l = 64;
    public int m = 67108864;
    public final byte[] a = new byte[4096];
    public int c = 0;
    public int e = 0;
    public int i = 0;
    public final boolean b = false;

    public c(InputStream inputStream) {
        this.f = inputStream;
    }

    public static int A(int i, InputStream inputStream) throws IOException {
        if ((i & 128) == 0) {
            return i;
        }
        int i2 = i & 127;
        int i3 = 7;
        while (i3 < 32) {
            int i4 = inputStream.read();
            if (i4 == -1) {
                throw InvalidProtocolBufferException.truncatedMessage();
            }
            i2 |= (i4 & 127) << i3;
            if ((i4 & 128) == 0) {
                return i2;
            }
            i3 += 7;
        }
        while (i3 < 64) {
            int i5 = inputStream.read();
            if (i5 == -1) {
                throw InvalidProtocolBufferException.truncatedMessage();
            }
            if ((i5 & 128) == 0) {
                return i2;
            }
            i3 += 7;
        }
        throw InvalidProtocolBufferException.malformedVarint();
    }

    public static int b(int i) {
        return (-(i & 1)) ^ (i >>> 1);
    }

    public static long c(long j) {
        return (-(j & 1)) ^ (j >>> 1);
    }

    public static c g(InputStream inputStream) {
        return new c(inputStream);
    }

    public long B() {
        long j;
        long j2;
        long j3;
        int i = this.e;
        int i2 = this.c;
        if (i2 != i) {
            byte[] bArr = this.a;
            int i3 = i + 1;
            byte b = bArr[i];
            if (b >= 0) {
                this.e = i3;
                return b;
            }
            if (i2 - i3 >= 9) {
                int i4 = i + 2;
                long j4 = (bArr[i3] << 7) ^ b;
                if (j4 >= 0) {
                    int i5 = i + 3;
                    long j5 = j4 ^ ((long) (bArr[i4] << 14));
                    if (j5 >= 0) {
                        j3 = 16256;
                    } else {
                        i4 = i + 4;
                        j4 = j5 ^ ((long) (bArr[i5] << 21));
                        if (j4 < 0) {
                            j2 = -2080896;
                        } else {
                            i5 = i + 5;
                            j5 = j4 ^ (((long) bArr[i4]) << 28);
                            if (j5 >= 0) {
                                j3 = 266354560;
                            } else {
                                i4 = i + 6;
                                j4 = j5 ^ (((long) bArr[i5]) << 35);
                                if (j4 >= 0) {
                                    i5 = i + 7;
                                    j5 = j4 ^ (((long) bArr[i4]) << 42);
                                    if (j5 >= 0) {
                                        j3 = 4363953127296L;
                                    } else {
                                        i4 = i + 8;
                                        j4 = j5 ^ (((long) bArr[i5]) << 49);
                                        if (j4 < 0) {
                                            j2 = -558586000294016L;
                                        } else {
                                            i5 = i + 9;
                                            long j6 = (j4 ^ (((long) bArr[i4]) << 56)) ^ 71499008037633920L;
                                            if (j6 < 0) {
                                                i4 = i + 10;
                                                if (bArr[i5] >= 0) {
                                                    j = j6;
                                                }
                                            } else {
                                                j = j6;
                                                i4 = i5;
                                            }
                                        }
                                    }
                                    this.e = i4;
                                    return j;
                                }
                                j2 = -34093383808L;
                            }
                        }
                    }
                    j = j5 ^ j3;
                    i4 = i5;
                    this.e = i4;
                    return j;
                }
                j2 = -128;
                j = j4 ^ j2;
                this.e = i4;
                return j;
            }
        }
        return C();
    }

    public long C() throws InvalidProtocolBufferException {
        long j = 0;
        for (int i = 0; i < 64; i += 7) {
            byte bV = v();
            j |= ((long) (bV & 127)) << i;
            if ((bV & SocketData.CLAZZ_TYPE_END_SOCKET) == 0) {
                return j;
            }
        }
        throw InvalidProtocolBufferException.malformedVarint();
    }

    public int D() {
        return x();
    }

    public long E() {
        return y();
    }

    public int F() {
        return b(z());
    }

    public long G() {
        return c(B());
    }

    public String H() {
        int iZ = z();
        int i = this.c;
        int i2 = this.e;
        if (iZ > i - i2 || iZ <= 0) {
            return iZ == 0 ? "" : new String(w(iZ), "UTF-8");
        }
        String str = new String(this.a, i2, iZ, "UTF-8");
        this.e += iZ;
        return str;
    }

    public String I() throws InvalidProtocolBufferException {
        byte[] bArrW;
        int iZ = z();
        int i = this.e;
        if (iZ <= this.c - i && iZ > 0) {
            bArrW = this.a;
            this.e = i + iZ;
        } else {
            if (iZ == 0) {
                return "";
            }
            bArrW = w(iZ);
            i = 0;
        }
        if (ikb.f(bArrW, i, i + iZ)) {
            return new String(bArrW, i, iZ, "UTF-8");
        }
        throw InvalidProtocolBufferException.invalidUtf8();
    }

    public int J() throws InvalidProtocolBufferException {
        if (f()) {
            this.g = 0;
            return 0;
        }
        int iZ = z();
        this.g = iZ;
        if (WireFormat.a(iZ) != 0) {
            return this.g;
        }
        throw InvalidProtocolBufferException.invalidTag();
    }

    public int K() {
        return z();
    }

    public long L() {
        return B();
    }

    public final void M() {
        int i = this.c + this.d;
        this.c = i;
        int i2 = this.i + i;
        int i3 = this.j;
        if (i2 <= i3) {
            this.d = 0;
            return;
        }
        int i4 = i2 - i3;
        this.d = i4;
        this.c = i - i4;
    }

    public final void N(int i) throws InvalidProtocolBufferException {
        if (!S(i)) {
            throw InvalidProtocolBufferException.truncatedMessage();
        }
    }

    public boolean O(int i, CodedOutputStream codedOutputStream) throws IOException {
        int iB = WireFormat.b(i);
        if (iB == 0) {
            long jS = s();
            codedOutputStream.n0(i);
            codedOutputStream.y0(jS);
            return true;
        }
        if (iB == 1) {
            long jY = y();
            codedOutputStream.n0(i);
            codedOutputStream.U(jY);
            return true;
        }
        if (iB == 2) {
            po0 po0VarK = k();
            codedOutputStream.n0(i);
            codedOutputStream.O(po0VarK);
            return true;
        }
        if (iB == 3) {
            codedOutputStream.n0(i);
            P(codedOutputStream);
            int iC = WireFormat.c(WireFormat.a(i), 4);
            a(iC);
            codedOutputStream.n0(iC);
            return true;
        }
        if (iB == 4) {
            return false;
        }
        if (iB != 5) {
            throw InvalidProtocolBufferException.invalidWireType();
        }
        int iX = x();
        codedOutputStream.n0(i);
        codedOutputStream.T(iX);
        return true;
    }

    public void P(CodedOutputStream codedOutputStream) throws InvalidProtocolBufferException {
        int iJ;
        do {
            iJ = J();
            if (iJ == 0) {
                return;
            }
        } while (O(iJ, codedOutputStream));
    }

    public void Q(int i) throws InvalidProtocolBufferException {
        int i2 = this.c;
        int i3 = this.e;
        if (i > i2 - i3 || i < 0) {
            R(i);
        } else {
            this.e = i3 + i;
        }
    }

    public final void R(int i) throws InvalidProtocolBufferException {
        if (i < 0) {
            throw InvalidProtocolBufferException.negativeSize();
        }
        int i2 = this.i;
        int i3 = this.e;
        int i4 = i2 + i3 + i;
        int i5 = this.j;
        if (i4 > i5) {
            Q((i5 - i2) - i3);
            throw InvalidProtocolBufferException.truncatedMessage();
        }
        int i6 = this.c;
        int i7 = i6 - i3;
        this.e = i6;
        N(1);
        while (true) {
            int i8 = i - i7;
            int i9 = this.c;
            if (i8 <= i9) {
                this.e = i8;
                return;
            } else {
                i7 += i9;
                this.e = i9;
                N(1);
            }
        }
    }

    public final boolean S(int i) throws IOException {
        int i2 = this.e;
        int i3 = i2 + i;
        int i4 = this.c;
        if (i3 <= i4) {
            StringBuilder sb = new StringBuilder(77);
            sb.append("refillBuffer() called when ");
            sb.append(i);
            sb.append(" bytes were already available in buffer");
            throw new IllegalStateException(sb.toString());
        }
        if (this.i + i2 + i <= this.j && this.f != null) {
            if (i2 > 0) {
                if (i4 > i2) {
                    byte[] bArr = this.a;
                    System.arraycopy(bArr, i2, bArr, 0, i4 - i2);
                }
                this.i += i2;
                this.c -= i2;
                this.e = 0;
            }
            InputStream inputStream = this.f;
            byte[] bArr2 = this.a;
            int i5 = this.c;
            int i6 = inputStream.read(bArr2, i5, bArr2.length - i5);
            if (i6 == 0 || i6 < -1 || i6 > this.a.length) {
                StringBuilder sb2 = new StringBuilder(102);
                sb2.append("InputStream#read(byte[]) returned invalid result: ");
                sb2.append(i6);
                sb2.append("\nThe InputStream implementation is buggy.");
                throw new IllegalStateException(sb2.toString());
            }
            if (i6 > 0) {
                this.c += i6;
                if ((this.i + i) - this.m > 0) {
                    throw InvalidProtocolBufferException.sizeLimitExceeded();
                }
                M();
                if (this.c >= i) {
                    return true;
                }
                return S(i);
            }
        }
        return false;
    }

    public void a(int i) throws InvalidProtocolBufferException {
        if (this.g != i) {
            throw InvalidProtocolBufferException.invalidEndTag();
        }
    }

    public final void d(int i) throws InvalidProtocolBufferException {
        if (this.c - this.e < i) {
            N(i);
        }
    }

    public int e() {
        int i = this.j;
        if (i == Integer.MAX_VALUE) {
            return -1;
        }
        return i - (this.i + this.e);
    }

    public boolean f() {
        return this.e == this.c && !S(1);
    }

    public void h(int i) {
        this.j = i;
        M();
    }

    public int i(int i) throws InvalidProtocolBufferException {
        if (i < 0) {
            throw InvalidProtocolBufferException.negativeSize();
        }
        int i2 = i + this.i + this.e;
        int i3 = this.j;
        if (i2 > i3) {
            throw InvalidProtocolBufferException.truncatedMessage();
        }
        this.j = i2;
        M();
        return i3;
    }

    public boolean j() {
        return B() != 0;
    }

    public po0 k() {
        int iZ = z();
        int i = this.c;
        int i2 = this.e;
        if (iZ > i - i2 || iZ <= 0) {
            return iZ == 0 ? po0.b : new qm5(w(iZ));
        }
        po0 lk0Var = (this.b && this.h) ? new lk0(this.a, this.e, iZ) : po0.j(this.a, i2, iZ);
        this.e += iZ;
        return lk0Var;
    }

    public double l() {
        return Double.longBitsToDouble(y());
    }

    public int m() {
        return z();
    }

    public int n() {
        return x();
    }

    public long o() {
        return y();
    }

    public float p() {
        return Float.intBitsToFloat(x());
    }

    public void q(int i, g.a aVar, d dVar) throws InvalidProtocolBufferException {
        int i2 = this.k;
        if (i2 >= this.l) {
            throw InvalidProtocolBufferException.recursionLimitExceeded();
        }
        this.k = i2 + 1;
        aVar.b(this, dVar);
        a(WireFormat.c(i, 4));
        this.k--;
    }

    public int r() {
        return z();
    }

    public long s() {
        return B();
    }

    public g t(cx7 cx7Var, d dVar) throws InvalidProtocolBufferException {
        int iZ = z();
        if (this.k >= this.l) {
            throw InvalidProtocolBufferException.recursionLimitExceeded();
        }
        int i = i(iZ);
        this.k++;
        g gVar = (g) cx7Var.c(this, dVar);
        a(0);
        this.k--;
        h(i);
        return gVar;
    }

    public void u(g.a aVar, d dVar) throws InvalidProtocolBufferException {
        int iZ = z();
        if (this.k >= this.l) {
            throw InvalidProtocolBufferException.recursionLimitExceeded();
        }
        int i = i(iZ);
        this.k++;
        aVar.b(this, dVar);
        a(0);
        this.k--;
        h(i);
    }

    public byte v() throws InvalidProtocolBufferException {
        if (this.e == this.c) {
            N(1);
        }
        byte[] bArr = this.a;
        int i = this.e;
        this.e = i + 1;
        return bArr[i];
    }

    public final byte[] w(int i) throws InvalidProtocolBufferException {
        if (i <= 0) {
            if (i == 0) {
                return f.a;
            }
            throw InvalidProtocolBufferException.negativeSize();
        }
        int i2 = this.i;
        int i3 = this.e;
        int i4 = i2 + i3 + i;
        int i5 = this.j;
        if (i4 > i5) {
            Q((i5 - i2) - i3);
            throw InvalidProtocolBufferException.truncatedMessage();
        }
        if (i < 4096) {
            byte[] bArr = new byte[i];
            int i6 = this.c - i3;
            System.arraycopy(this.a, i3, bArr, 0, i6);
            this.e = this.c;
            int i7 = i - i6;
            d(i7);
            System.arraycopy(this.a, 0, bArr, i6, i7);
            this.e = i7;
            return bArr;
        }
        int i8 = this.c;
        this.i = i2 + i8;
        this.e = 0;
        this.c = 0;
        int length = i8 - i3;
        int i9 = i - length;
        ArrayList<byte[]> arrayList = new ArrayList();
        while (i9 > 0) {
            int iMin = Math.min(i9, 4096);
            byte[] bArr2 = new byte[iMin];
            int i10 = 0;
            while (i10 < iMin) {
                InputStream inputStream = this.f;
                int i11 = inputStream == null ? -1 : inputStream.read(bArr2, i10, iMin - i10);
                if (i11 == -1) {
                    throw InvalidProtocolBufferException.truncatedMessage();
                }
                this.i += i11;
                i10 += i11;
            }
            i9 -= iMin;
            arrayList.add(bArr2);
        }
        byte[] bArr3 = new byte[i];
        System.arraycopy(this.a, i3, bArr3, 0, length);
        for (byte[] bArr4 : arrayList) {
            System.arraycopy(bArr4, 0, bArr3, length, bArr4.length);
            length += bArr4.length;
        }
        return bArr3;
    }

    public int x() throws InvalidProtocolBufferException {
        int i = this.e;
        if (this.c - i < 4) {
            N(4);
            i = this.e;
        }
        byte[] bArr = this.a;
        this.e = i + 4;
        return (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16) | ((bArr[i + 3] & 255) << 24);
    }

    public long y() throws InvalidProtocolBufferException {
        int i = this.e;
        if (this.c - i < 8) {
            N(8);
            i = this.e;
        }
        byte[] bArr = this.a;
        this.e = i + 8;
        return ((((long) bArr[i + 7]) & 255) << 56) | (((long) bArr[i]) & 255) | ((((long) bArr[i + 1]) & 255) << 8) | ((((long) bArr[i + 2]) & 255) << 16) | ((((long) bArr[i + 3]) & 255) << 24) | ((((long) bArr[i + 4]) & 255) << 32) | ((((long) bArr[i + 5]) & 255) << 40) | ((((long) bArr[i + 6]) & 255) << 48);
    }

    public int z() {
        int i;
        int i2 = this.e;
        int i3 = this.c;
        if (i3 != i2) {
            byte[] bArr = this.a;
            int i4 = i2 + 1;
            byte b = bArr[i2];
            if (b >= 0) {
                this.e = i4;
                return b;
            }
            if (i3 - i4 >= 9) {
                int i5 = i2 + 2;
                int i6 = (bArr[i4] << 7) ^ b;
                long j = i6;
                if (j < 0) {
                    i = (int) ((-128) ^ j);
                } else {
                    int i7 = i2 + 3;
                    int i8 = (bArr[i5] << 14) ^ i6;
                    long j2 = i8;
                    if (j2 >= 0) {
                        i = (int) (16256 ^ j2);
                    } else {
                        int i9 = i2 + 4;
                        int i10 = i8 ^ (bArr[i7] << 21);
                        long j3 = i10;
                        if (j3 < 0) {
                            i = (int) ((-2080896) ^ j3);
                        } else {
                            i7 = i2 + 5;
                            byte b2 = bArr[i9];
                            int i11 = (int) (((long) (i10 ^ (b2 << 28))) ^ 266354560);
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
                this.e = i5;
                return i;
            }
        }
        return (int) C();
    }
}

package androidx.datastore.preferences.protobuf;

import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

public abstract class i {

    private static volatile int f8474f = 100;

    int f8475a;

    int f8476b;

    int f8477c;

    j f8478d;

    private boolean f8479e;

    private static final class b extends i {

        private final byte[] f8480g;

        private final boolean f8481h;

        private int f8482i;

        private int f8483j;

        private int f8484k;

        private int f8485l;

        private int f8486m;

        private boolean f8487n;

        private int f8488o;

        private void Q() {
            int i10 = this.f8482i + this.f8483j;
            this.f8482i = i10;
            int i11 = i10 - this.f8485l;
            int i12 = this.f8488o;
            if (i11 <= i12) {
                this.f8483j = 0;
                return;
            }
            int i13 = i11 - i12;
            this.f8483j = i13;
            this.f8482i = i10 - i13;
        }

        private void S() throws InvalidProtocolBufferException {
            if (this.f8482i - this.f8484k >= 10) {
                T();
            } else {
                U();
            }
        }

        private void T() throws InvalidProtocolBufferException {
            for (int i10 = 0; i10 < 10; i10++) {
                byte[] bArr = this.f8480g;
                int i11 = this.f8484k;
                this.f8484k = i11 + 1;
                if (bArr[i11] >= 0) {
                    return;
                }
            }
            throw InvalidProtocolBufferException.malformedVarint();
        }

        private void U() throws InvalidProtocolBufferException {
            for (int i10 = 0; i10 < 10; i10++) {
                if (J() >= 0) {
                    return;
                }
            }
            throw InvalidProtocolBufferException.malformedVarint();
        }

        @Override
        public int A() {
            return i.c(N());
        }

        @Override
        public long B() {
            return i.d(O());
        }

        @Override
        public String C() throws InvalidProtocolBufferException {
            int iN = N();
            if (iN > 0) {
                int i10 = this.f8482i;
                int i11 = this.f8484k;
                if (iN <= i10 - i11) {
                    String str = new String(this.f8480g, i11, iN, w.f8604b);
                    this.f8484k += iN;
                    return str;
                }
            }
            if (iN == 0) {
                return "";
            }
            if (iN < 0) {
                throw InvalidProtocolBufferException.negativeSize();
            }
            throw InvalidProtocolBufferException.truncatedMessage();
        }

        @Override
        public String D() throws InvalidProtocolBufferException {
            int iN = N();
            if (iN > 0) {
                int i10 = this.f8482i;
                int i11 = this.f8484k;
                if (iN <= i10 - i11) {
                    String strH = Utf8.h(this.f8480g, i11, iN);
                    this.f8484k += iN;
                    return strH;
                }
            }
            if (iN == 0) {
                return "";
            }
            if (iN <= 0) {
                throw InvalidProtocolBufferException.negativeSize();
            }
            throw InvalidProtocolBufferException.truncatedMessage();
        }

        @Override
        public int E() throws InvalidProtocolBufferException {
            if (f()) {
                this.f8486m = 0;
                return 0;
            }
            int iN = N();
            this.f8486m = iN;
            if (WireFormat.a(iN) != 0) {
                return this.f8486m;
            }
            throw InvalidProtocolBufferException.invalidTag();
        }

        @Override
        public int F() {
            return N();
        }

        @Override
        public long G() {
            return O();
        }

        @Override
        public boolean H(int i10) throws InvalidProtocolBufferException {
            int iB = WireFormat.b(i10);
            if (iB == 0) {
                S();
                return true;
            }
            if (iB == 1) {
                R(8);
                return true;
            }
            if (iB == 2) {
                R(N());
                return true;
            }
            if (iB == 3) {
                I();
                a(WireFormat.c(WireFormat.a(i10), 4));
                return true;
            }
            if (iB == 4) {
                return false;
            }
            if (iB != 5) {
                throw InvalidProtocolBufferException.invalidWireType();
            }
            R(4);
            return true;
        }

        public byte J() throws InvalidProtocolBufferException {
            int i10 = this.f8484k;
            if (i10 == this.f8482i) {
                throw InvalidProtocolBufferException.truncatedMessage();
            }
            byte[] bArr = this.f8480g;
            this.f8484k = i10 + 1;
            return bArr[i10];
        }

        public byte[] K(int i10) throws InvalidProtocolBufferException {
            if (i10 > 0) {
                int i11 = this.f8482i;
                int i12 = this.f8484k;
                if (i10 <= i11 - i12) {
                    int i13 = i10 + i12;
                    this.f8484k = i13;
                    return Arrays.copyOfRange(this.f8480g, i12, i13);
                }
            }
            if (i10 > 0) {
                throw InvalidProtocolBufferException.truncatedMessage();
            }
            if (i10 == 0) {
                return w.f8606d;
            }
            throw InvalidProtocolBufferException.negativeSize();
        }

        public int L() throws InvalidProtocolBufferException {
            int i10 = this.f8484k;
            if (this.f8482i - i10 < 4) {
                throw InvalidProtocolBufferException.truncatedMessage();
            }
            byte[] bArr = this.f8480g;
            this.f8484k = i10 + 4;
            return ((bArr[i10 + 3] & 255) << 24) | (bArr[i10] & 255) | ((bArr[i10 + 1] & 255) << 8) | ((bArr[i10 + 2] & 255) << 16);
        }

        public long M() throws InvalidProtocolBufferException {
            int i10 = this.f8484k;
            if (this.f8482i - i10 < 8) {
                throw InvalidProtocolBufferException.truncatedMessage();
            }
            byte[] bArr = this.f8480g;
            this.f8484k = i10 + 8;
            return ((((long) bArr[i10 + 7]) & 255) << 56) | (((long) bArr[i10]) & 255) | ((((long) bArr[i10 + 1]) & 255) << 8) | ((((long) bArr[i10 + 2]) & 255) << 16) | ((((long) bArr[i10 + 3]) & 255) << 24) | ((((long) bArr[i10 + 4]) & 255) << 32) | ((((long) bArr[i10 + 5]) & 255) << 40) | ((((long) bArr[i10 + 6]) & 255) << 48);
        }

        public int N() {
            int i10;
            int i11 = this.f8484k;
            int i12 = this.f8482i;
            if (i12 != i11) {
                byte[] bArr = this.f8480g;
                int i13 = i11 + 1;
                byte b10 = bArr[i11];
                if (b10 >= 0) {
                    this.f8484k = i13;
                    return b10;
                }
                if (i12 - i13 >= 9) {
                    int i14 = i11 + 2;
                    int i15 = (bArr[i13] << 7) ^ b10;
                    if (i15 < 0) {
                        i10 = i15 ^ (-128);
                    } else {
                        int i16 = i11 + 3;
                        int i17 = (bArr[i14] << 14) ^ i15;
                        if (i17 >= 0) {
                            i10 = i17 ^ 16256;
                        } else {
                            int i18 = i11 + 4;
                            int i19 = i17 ^ (bArr[i16] << 21);
                            if (i19 < 0) {
                                i10 = (-2080896) ^ i19;
                            } else {
                                i16 = i11 + 5;
                                byte b11 = bArr[i18];
                                int i20 = (i19 ^ (b11 << 28)) ^ 266354560;
                                if (b11 < 0) {
                                    i18 = i11 + 6;
                                    if (bArr[i16] < 0) {
                                        i16 = i11 + 7;
                                        if (bArr[i18] < 0) {
                                            i18 = i11 + 8;
                                            if (bArr[i16] < 0) {
                                                i16 = i11 + 9;
                                                if (bArr[i18] < 0) {
                                                    int i21 = i11 + 10;
                                                    if (bArr[i16] >= 0) {
                                                        i14 = i21;
                                                        i10 = i20;
                                                    }
                                                }
                                            }
                                        }
                                    }
                                    i10 = i20;
                                }
                                i10 = i20;
                            }
                            i14 = i18;
                        }
                        i14 = i16;
                    }
                    this.f8484k = i14;
                    return i10;
                }
            }
            return (int) P();
        }

        public long O() {
            long j10;
            long j11;
            long j12;
            int i10 = this.f8484k;
            int i11 = this.f8482i;
            if (i11 != i10) {
                byte[] bArr = this.f8480g;
                int i12 = i10 + 1;
                byte b10 = bArr[i10];
                if (b10 >= 0) {
                    this.f8484k = i12;
                    return b10;
                }
                if (i11 - i12 >= 9) {
                    int i13 = i10 + 2;
                    int i14 = (bArr[i12] << 7) ^ b10;
                    if (i14 < 0) {
                        j10 = i14 ^ (-128);
                    } else {
                        int i15 = i10 + 3;
                        int i16 = (bArr[i13] << 14) ^ i14;
                        if (i16 >= 0) {
                            j10 = i16 ^ 16256;
                            i13 = i15;
                        } else {
                            int i17 = i10 + 4;
                            int i18 = i16 ^ (bArr[i15] << 21);
                            if (i18 < 0) {
                                long j13 = (-2080896) ^ i18;
                                i13 = i17;
                                j10 = j13;
                            } else {
                                long j14 = i18;
                                i13 = i10 + 5;
                                long j15 = j14 ^ (((long) bArr[i17]) << 28);
                                if (j15 >= 0) {
                                    j12 = 266354560;
                                } else {
                                    int i19 = i10 + 6;
                                    long j16 = j15 ^ (((long) bArr[i13]) << 35);
                                    if (j16 < 0) {
                                        j11 = -34093383808L;
                                    } else {
                                        i13 = i10 + 7;
                                        j15 = j16 ^ (((long) bArr[i19]) << 42);
                                        if (j15 >= 0) {
                                            j12 = 4363953127296L;
                                        } else {
                                            i19 = i10 + 8;
                                            j16 = j15 ^ (((long) bArr[i13]) << 49);
                                            if (j16 < 0) {
                                                j11 = -558586000294016L;
                                            } else {
                                                i13 = i10 + 9;
                                                long j17 = (j16 ^ (((long) bArr[i19]) << 56)) ^ 71499008037633920L;
                                                if (j17 < 0) {
                                                    int i20 = i10 + 10;
                                                    if (bArr[i13] >= 0) {
                                                        i13 = i20;
                                                    }
                                                }
                                                j10 = j17;
                                            }
                                        }
                                    }
                                    j10 = j16 ^ j11;
                                    i13 = i19;
                                }
                                j10 = j15 ^ j12;
                            }
                        }
                    }
                    this.f8484k = i13;
                    return j10;
                }
            }
            return P();
        }

        long P() throws InvalidProtocolBufferException {
            long j10 = 0;
            for (int i10 = 0; i10 < 64; i10 += 7) {
                byte bJ = J();
                j10 |= ((long) (bJ & 127)) << i10;
                if ((bJ & 128) == 0) {
                    return j10;
                }
            }
            throw InvalidProtocolBufferException.malformedVarint();
        }

        public void R(int i10) throws InvalidProtocolBufferException {
            if (i10 >= 0) {
                int i11 = this.f8482i;
                int i12 = this.f8484k;
                if (i10 <= i11 - i12) {
                    this.f8484k = i12 + i10;
                    return;
                }
            }
            if (i10 >= 0) {
                throw InvalidProtocolBufferException.truncatedMessage();
            }
            throw InvalidProtocolBufferException.negativeSize();
        }

        @Override
        public void a(int i10) throws InvalidProtocolBufferException {
            if (this.f8486m != i10) {
                throw InvalidProtocolBufferException.invalidEndTag();
            }
        }

        @Override
        public int e() {
            return this.f8484k - this.f8485l;
        }

        @Override
        public boolean f() {
            return this.f8484k == this.f8482i;
        }

        @Override
        public void n(int i10) {
            this.f8488o = i10;
            Q();
        }

        @Override
        public int o(int i10) throws InvalidProtocolBufferException {
            if (i10 < 0) {
                throw InvalidProtocolBufferException.negativeSize();
            }
            int iE = i10 + e();
            if (iE < 0) {
                throw InvalidProtocolBufferException.parseFailure();
            }
            int i11 = this.f8488o;
            if (iE > i11) {
                throw InvalidProtocolBufferException.truncatedMessage();
            }
            this.f8488o = iE;
            Q();
            return i11;
        }

        @Override
        public boolean p() {
            return O() != 0;
        }

        @Override
        public ByteString q() {
            int iN = N();
            if (iN > 0) {
                int i10 = this.f8482i;
                int i11 = this.f8484k;
                if (iN <= i10 - i11) {
                    ByteString byteStringWrap = (this.f8481h && this.f8487n) ? ByteString.wrap(this.f8480g, i11, iN) : ByteString.copyFrom(this.f8480g, i11, iN);
                    this.f8484k += iN;
                    return byteStringWrap;
                }
            }
            return iN == 0 ? ByteString.EMPTY : ByteString.wrap(K(iN));
        }

        @Override
        public double r() {
            return Double.longBitsToDouble(M());
        }

        @Override
        public int s() {
            return N();
        }

        @Override
        public int t() {
            return L();
        }

        @Override
        public long u() {
            return M();
        }

        @Override
        public float v() {
            return Float.intBitsToFloat(L());
        }

        @Override
        public int w() {
            return N();
        }

        @Override
        public long x() {
            return O();
        }

        @Override
        public int y() {
            return L();
        }

        @Override
        public long z() {
            return M();
        }

        private b(byte[] bArr, int i10, int i11, boolean z10) {
            super();
            this.f8488o = Integer.MAX_VALUE;
            this.f8480g = bArr;
            this.f8482i = i11 + i10;
            this.f8484k = i10;
            this.f8485l = i10;
            this.f8481h = z10;
        }
    }

    private static final class c extends i {

        private final Iterable f8489g;

        private final Iterator f8490h;

        private ByteBuffer f8491i;

        private final boolean f8492j;

        private boolean f8493k;

        private int f8494l;

        private int f8495m;

        private int f8496n;

        private int f8497o;

        private int f8498p;

        private int f8499q;

        private long f8500r;

        private long f8501s;

        private long f8502t;

        private long f8503u;

        private long J() {
            return this.f8503u - this.f8500r;
        }

        private void K() throws InvalidProtocolBufferException {
            if (!this.f8490h.hasNext()) {
                throw InvalidProtocolBufferException.truncatedMessage();
            }
            X();
        }

        private void M(byte[] bArr, int i10, int i11) throws InvalidProtocolBufferException {
            if (i11 < 0 || i11 > T()) {
                if (i11 > 0) {
                    throw InvalidProtocolBufferException.truncatedMessage();
                }
                if (i11 != 0) {
                    throw InvalidProtocolBufferException.negativeSize();
                }
                return;
            }
            int i12 = i11;
            while (i12 > 0) {
                if (J() == 0) {
                    K();
                }
                int iMin = Math.min(i12, (int) J());
                long j10 = iMin;
                k1.p(this.f8500r, bArr, (i11 - i12) + i10, j10);
                i12 -= iMin;
                this.f8500r += j10;
            }
        }

        private void S() {
            int i10 = this.f8494l + this.f8495m;
            this.f8494l = i10;
            int i11 = i10 - this.f8499q;
            int i12 = this.f8496n;
            if (i11 <= i12) {
                this.f8495m = 0;
                return;
            }
            int i13 = i11 - i12;
            this.f8495m = i13;
            this.f8494l = i10 - i13;
        }

        private int T() {
            return (int) ((((long) (this.f8494l - this.f8498p)) - this.f8500r) + this.f8501s);
        }

        private void V() throws InvalidProtocolBufferException {
            for (int i10 = 0; i10 < 10; i10++) {
                if (L() >= 0) {
                    return;
                }
            }
            throw InvalidProtocolBufferException.malformedVarint();
        }

        private ByteBuffer W(int i10, int i11) {
            int iPosition = this.f8491i.position();
            int iLimit = this.f8491i.limit();
            ByteBuffer byteBuffer = this.f8491i;
            try {
                try {
                    byteBuffer.position(i10);
                    byteBuffer.limit(i11);
                    ByteBuffer byteBufferSlice = this.f8491i.slice();
                    byteBuffer.position(iPosition);
                    byteBuffer.limit(iLimit);
                    return byteBufferSlice;
                } catch (IllegalArgumentException unused) {
                    throw InvalidProtocolBufferException.truncatedMessage();
                }
            } catch (Throwable th2) {
                byteBuffer.position(iPosition);
                byteBuffer.limit(iLimit);
                throw th2;
            }
        }

        private void X() {
            ByteBuffer byteBuffer = (ByteBuffer) this.f8490h.next();
            this.f8491i = byteBuffer;
            this.f8498p += (int) (this.f8500r - this.f8501s);
            long jPosition = byteBuffer.position();
            this.f8500r = jPosition;
            this.f8501s = jPosition;
            this.f8503u = this.f8491i.limit();
            long jK = k1.k(this.f8491i);
            this.f8502t = jK;
            this.f8500r += jK;
            this.f8501s += jK;
            this.f8503u += jK;
        }

        @Override
        public int A() {
            return i.c(P());
        }

        @Override
        public long B() {
            return i.d(Q());
        }

        @Override
        public String C() throws InvalidProtocolBufferException {
            int iP = P();
            if (iP > 0) {
                long j10 = iP;
                long j11 = this.f8503u;
                long j12 = this.f8500r;
                if (j10 <= j11 - j12) {
                    byte[] bArr = new byte[iP];
                    k1.p(j12, bArr, 0L, j10);
                    String str = new String(bArr, w.f8604b);
                    this.f8500r += j10;
                    return str;
                }
            }
            if (iP > 0 && iP <= T()) {
                byte[] bArr2 = new byte[iP];
                M(bArr2, 0, iP);
                return new String(bArr2, w.f8604b);
            }
            if (iP == 0) {
                return "";
            }
            if (iP < 0) {
                throw InvalidProtocolBufferException.negativeSize();
            }
            throw InvalidProtocolBufferException.truncatedMessage();
        }

        @Override
        public String D() throws InvalidProtocolBufferException {
            int iP = P();
            if (iP > 0) {
                long j10 = iP;
                long j11 = this.f8503u;
                long j12 = this.f8500r;
                if (j10 <= j11 - j12) {
                    String strG = Utf8.g(this.f8491i, (int) (j12 - this.f8501s), iP);
                    this.f8500r += j10;
                    return strG;
                }
            }
            if (iP >= 0 && iP <= T()) {
                byte[] bArr = new byte[iP];
                M(bArr, 0, iP);
                return Utf8.h(bArr, 0, iP);
            }
            if (iP == 0) {
                return "";
            }
            if (iP <= 0) {
                throw InvalidProtocolBufferException.negativeSize();
            }
            throw InvalidProtocolBufferException.truncatedMessage();
        }

        @Override
        public int E() throws InvalidProtocolBufferException {
            if (f()) {
                this.f8497o = 0;
                return 0;
            }
            int iP = P();
            this.f8497o = iP;
            if (WireFormat.a(iP) != 0) {
                return this.f8497o;
            }
            throw InvalidProtocolBufferException.invalidTag();
        }

        @Override
        public int F() {
            return P();
        }

        @Override
        public long G() {
            return Q();
        }

        @Override
        public boolean H(int i10) throws InvalidProtocolBufferException {
            int iB = WireFormat.b(i10);
            if (iB == 0) {
                V();
                return true;
            }
            if (iB == 1) {
                U(8);
                return true;
            }
            if (iB == 2) {
                U(P());
                return true;
            }
            if (iB == 3) {
                I();
                a(WireFormat.c(WireFormat.a(i10), 4));
                return true;
            }
            if (iB == 4) {
                return false;
            }
            if (iB != 5) {
                throw InvalidProtocolBufferException.invalidWireType();
            }
            U(4);
            return true;
        }

        public byte L() throws InvalidProtocolBufferException {
            if (J() == 0) {
                K();
            }
            long j10 = this.f8500r;
            this.f8500r = 1 + j10;
            return k1.w(j10);
        }

        public int N() {
            if (J() < 4) {
                return (L() & 255) | ((L() & 255) << 8) | ((L() & 255) << 16) | ((L() & 255) << 24);
            }
            long j10 = this.f8500r;
            this.f8500r = 4 + j10;
            return ((k1.w(j10 + 3) & 255) << 24) | (k1.w(j10) & 255) | ((k1.w(1 + j10) & 255) << 8) | ((k1.w(2 + j10) & 255) << 16);
        }

        public long O() throws InvalidProtocolBufferException {
            long jL;
            byte bL;
            if (J() >= 8) {
                long j10 = this.f8500r;
                this.f8500r = 8 + j10;
                jL = (((long) k1.w(j10)) & 255) | ((((long) k1.w(1 + j10)) & 255) << 8) | ((((long) k1.w(2 + j10)) & 255) << 16) | ((((long) k1.w(3 + j10)) & 255) << 24) | ((((long) k1.w(4 + j10)) & 255) << 32) | ((((long) k1.w(5 + j10)) & 255) << 40) | ((((long) k1.w(6 + j10)) & 255) << 48);
                bL = k1.w(j10 + 7);
            } else {
                jL = (((long) L()) & 255) | ((((long) L()) & 255) << 8) | ((((long) L()) & 255) << 16) | ((((long) L()) & 255) << 24) | ((((long) L()) & 255) << 32) | ((((long) L()) & 255) << 40) | ((((long) L()) & 255) << 48);
                bL = L();
            }
            return ((((long) bL) & 255) << 56) | jL;
        }

        public int P() {
            int i10;
            long j10 = this.f8500r;
            if (this.f8503u != j10) {
                long j11 = j10 + 1;
                byte bW = k1.w(j10);
                if (bW >= 0) {
                    this.f8500r++;
                    return bW;
                }
                if (this.f8503u - this.f8500r >= 10) {
                    long j12 = 2 + j10;
                    int iW = (k1.w(j11) << 7) ^ bW;
                    if (iW < 0) {
                        i10 = iW ^ (-128);
                    } else {
                        long j13 = 3 + j10;
                        int iW2 = (k1.w(j12) << 14) ^ iW;
                        if (iW2 >= 0) {
                            i10 = iW2 ^ 16256;
                        } else {
                            long j14 = 4 + j10;
                            int iW3 = iW2 ^ (k1.w(j13) << 21);
                            if (iW3 < 0) {
                                i10 = (-2080896) ^ iW3;
                            } else {
                                j13 = 5 + j10;
                                byte bW2 = k1.w(j14);
                                int i11 = (iW3 ^ (bW2 << 28)) ^ 266354560;
                                if (bW2 < 0) {
                                    j14 = 6 + j10;
                                    if (k1.w(j13) < 0) {
                                        j13 = 7 + j10;
                                        if (k1.w(j14) < 0) {
                                            j14 = 8 + j10;
                                            if (k1.w(j13) < 0) {
                                                j13 = 9 + j10;
                                                if (k1.w(j14) < 0) {
                                                    long j15 = j10 + 10;
                                                    if (k1.w(j13) >= 0) {
                                                        i10 = i11;
                                                        j12 = j15;
                                                    }
                                                }
                                            }
                                        }
                                    }
                                    i10 = i11;
                                }
                                i10 = i11;
                            }
                            j12 = j14;
                        }
                        j12 = j13;
                    }
                    this.f8500r = j12;
                    return i10;
                }
            }
            return (int) R();
        }

        public long Q() {
            long j10;
            long j11;
            long j12;
            long j13 = this.f8500r;
            if (this.f8503u != j13) {
                long j14 = j13 + 1;
                byte bW = k1.w(j13);
                if (bW >= 0) {
                    this.f8500r++;
                    return bW;
                }
                if (this.f8503u - this.f8500r >= 10) {
                    long j15 = 2 + j13;
                    int iW = (k1.w(j14) << 7) ^ bW;
                    if (iW < 0) {
                        j10 = iW ^ (-128);
                    } else {
                        long j16 = 3 + j13;
                        int iW2 = (k1.w(j15) << 14) ^ iW;
                        if (iW2 >= 0) {
                            j10 = iW2 ^ 16256;
                            j15 = j16;
                        } else {
                            long j17 = 4 + j13;
                            int iW3 = iW2 ^ (k1.w(j16) << 21);
                            if (iW3 < 0) {
                                j10 = (-2080896) ^ iW3;
                                j15 = j17;
                            } else {
                                long j18 = 5 + j13;
                                long jW = (((long) k1.w(j17)) << 28) ^ ((long) iW3);
                                if (jW >= 0) {
                                    j12 = 266354560;
                                } else {
                                    long j19 = 6 + j13;
                                    long jW2 = jW ^ (((long) k1.w(j18)) << 35);
                                    if (jW2 < 0) {
                                        j11 = -34093383808L;
                                    } else {
                                        j18 = 7 + j13;
                                        jW = jW2 ^ (((long) k1.w(j19)) << 42);
                                        if (jW >= 0) {
                                            j12 = 4363953127296L;
                                        } else {
                                            j19 = 8 + j13;
                                            jW2 = jW ^ (((long) k1.w(j18)) << 49);
                                            if (jW2 < 0) {
                                                j11 = -558586000294016L;
                                            } else {
                                                j18 = 9 + j13;
                                                long jW3 = (jW2 ^ (((long) k1.w(j19)) << 56)) ^ 71499008037633920L;
                                                if (jW3 < 0) {
                                                    long j20 = j13 + 10;
                                                    if (k1.w(j18) >= 0) {
                                                        j10 = jW3;
                                                        j15 = j20;
                                                    }
                                                } else {
                                                    j10 = jW3;
                                                    j15 = j18;
                                                }
                                            }
                                        }
                                    }
                                    j10 = j11 ^ jW2;
                                    j15 = j19;
                                }
                                j10 = j12 ^ jW;
                                j15 = j18;
                            }
                        }
                    }
                    this.f8500r = j15;
                    return j10;
                }
            }
            return R();
        }

        long R() throws InvalidProtocolBufferException {
            long j10 = 0;
            for (int i10 = 0; i10 < 64; i10 += 7) {
                byte bL = L();
                j10 |= ((long) (bL & 127)) << i10;
                if ((bL & 128) == 0) {
                    return j10;
                }
            }
            throw InvalidProtocolBufferException.malformedVarint();
        }

        public void U(int i10) throws InvalidProtocolBufferException {
            if (i10 < 0 || i10 > (((long) (this.f8494l - this.f8498p)) - this.f8500r) + this.f8501s) {
                if (i10 >= 0) {
                    throw InvalidProtocolBufferException.truncatedMessage();
                }
                throw InvalidProtocolBufferException.negativeSize();
            }
            while (i10 > 0) {
                if (J() == 0) {
                    K();
                }
                int iMin = Math.min(i10, (int) J());
                i10 -= iMin;
                this.f8500r += (long) iMin;
            }
        }

        @Override
        public void a(int i10) throws InvalidProtocolBufferException {
            if (this.f8497o != i10) {
                throw InvalidProtocolBufferException.invalidEndTag();
            }
        }

        @Override
        public int e() {
            return (int) ((((long) (this.f8498p - this.f8499q)) + this.f8500r) - this.f8501s);
        }

        @Override
        public boolean f() {
            return (((long) this.f8498p) + this.f8500r) - this.f8501s == ((long) this.f8494l);
        }

        @Override
        public void n(int i10) {
            this.f8496n = i10;
            S();
        }

        @Override
        public int o(int i10) throws InvalidProtocolBufferException {
            if (i10 < 0) {
                throw InvalidProtocolBufferException.negativeSize();
            }
            int iE = i10 + e();
            int i11 = this.f8496n;
            if (iE > i11) {
                throw InvalidProtocolBufferException.truncatedMessage();
            }
            this.f8496n = iE;
            S();
            return i11;
        }

        @Override
        public boolean p() {
            return Q() != 0;
        }

        @Override
        public ByteString q() throws InvalidProtocolBufferException {
            int iP = P();
            if (iP > 0) {
                long j10 = iP;
                long j11 = this.f8503u;
                long j12 = this.f8500r;
                if (j10 <= j11 - j12) {
                    if (this.f8492j && this.f8493k) {
                        int i10 = (int) (j12 - this.f8502t);
                        ByteString byteStringWrap = ByteString.wrap(W(i10, iP + i10));
                        this.f8500r += j10;
                        return byteStringWrap;
                    }
                    byte[] bArr = new byte[iP];
                    k1.p(j12, bArr, 0L, j10);
                    this.f8500r += j10;
                    return ByteString.wrap(bArr);
                }
            }
            if (iP <= 0 || iP > T()) {
                if (iP == 0) {
                    return ByteString.EMPTY;
                }
                if (iP < 0) {
                    throw InvalidProtocolBufferException.negativeSize();
                }
                throw InvalidProtocolBufferException.truncatedMessage();
            }
            if (!this.f8492j || !this.f8493k) {
                byte[] bArr2 = new byte[iP];
                M(bArr2, 0, iP);
                return ByteString.wrap(bArr2);
            }
            ArrayList arrayList = new ArrayList();
            while (iP > 0) {
                if (J() == 0) {
                    K();
                }
                int iMin = Math.min(iP, (int) J());
                int i11 = (int) (this.f8500r - this.f8502t);
                arrayList.add(ByteString.wrap(W(i11, i11 + iMin)));
                iP -= iMin;
                this.f8500r += (long) iMin;
            }
            return ByteString.copyFrom(arrayList);
        }

        @Override
        public double r() {
            return Double.longBitsToDouble(O());
        }

        @Override
        public int s() {
            return P();
        }

        @Override
        public int t() {
            return N();
        }

        @Override
        public long u() {
            return O();
        }

        @Override
        public float v() {
            return Float.intBitsToFloat(N());
        }

        @Override
        public int w() {
            return P();
        }

        @Override
        public long x() {
            return Q();
        }

        @Override
        public int y() {
            return N();
        }

        @Override
        public long z() {
            return O();
        }

        private c(Iterable iterable, int i10, boolean z10) {
            super();
            this.f8496n = Integer.MAX_VALUE;
            this.f8494l = i10;
            this.f8489g = iterable;
            this.f8490h = iterable.iterator();
            this.f8492j = z10;
            this.f8498p = 0;
            this.f8499q = 0;
            if (i10 != 0) {
                X();
                return;
            }
            this.f8491i = w.f8607e;
            this.f8500r = 0L;
            this.f8501s = 0L;
            this.f8503u = 0L;
            this.f8502t = 0L;
        }
    }

    private static final class d extends i {

        private final InputStream f8504g;

        private final byte[] f8505h;

        private int f8506i;

        private int f8507j;

        private int f8508k;

        private int f8509l;

        private int f8510m;

        private int f8511n;

        private static int J(InputStream inputStream) throws InvalidProtocolBufferException {
            try {
                return inputStream.available();
            } catch (InvalidProtocolBufferException e10) {
                e10.setThrownFromInputStream();
                throw e10;
            }
        }

        private static int K(InputStream inputStream, byte[] bArr, int i10, int i11) throws InvalidProtocolBufferException {
            try {
                return inputStream.read(bArr, i10, i11);
            } catch (InvalidProtocolBufferException e10) {
                e10.setThrownFromInputStream();
                throw e10;
            }
        }

        private ByteString L(int i10) throws IOException {
            byte[] bArrO = O(i10);
            if (bArrO != null) {
                return ByteString.copyFrom(bArrO);
            }
            int i11 = this.f8508k;
            int i12 = this.f8506i;
            int length = i12 - i11;
            this.f8510m += i12;
            this.f8508k = 0;
            this.f8506i = 0;
            List<byte[]> listP = P(i10 - length);
            byte[] bArr = new byte[i10];
            System.arraycopy(this.f8505h, i11, bArr, 0, length);
            for (byte[] bArr2 : listP) {
                System.arraycopy(bArr2, 0, bArr, length, bArr2.length);
                length += bArr2.length;
            }
            return ByteString.wrap(bArr);
        }

        private byte[] N(int i10, boolean z10) throws IOException {
            byte[] bArrO = O(i10);
            if (bArrO != null) {
                return z10 ? (byte[]) bArrO.clone() : bArrO;
            }
            int i11 = this.f8508k;
            int i12 = this.f8506i;
            int length = i12 - i11;
            this.f8510m += i12;
            this.f8508k = 0;
            this.f8506i = 0;
            List<byte[]> listP = P(i10 - length);
            byte[] bArr = new byte[i10];
            System.arraycopy(this.f8505h, i11, bArr, 0, length);
            for (byte[] bArr2 : listP) {
                System.arraycopy(bArr2, 0, bArr, length, bArr2.length);
                length += bArr2.length;
            }
            return bArr;
        }

        private byte[] O(int i10) throws InvalidProtocolBufferException {
            if (i10 == 0) {
                return w.f8606d;
            }
            if (i10 < 0) {
                throw InvalidProtocolBufferException.negativeSize();
            }
            int i11 = this.f8510m;
            int i12 = this.f8508k;
            int i13 = i11 + i12 + i10;
            if (i13 - this.f8477c > 0) {
                throw InvalidProtocolBufferException.sizeLimitExceeded();
            }
            int i14 = this.f8511n;
            if (i13 > i14) {
                Y((i14 - i11) - i12);
                throw InvalidProtocolBufferException.truncatedMessage();
            }
            int i15 = this.f8506i - i12;
            int i16 = i10 - i15;
            if (i16 >= 4096 && i16 > J(this.f8504g)) {
                return null;
            }
            byte[] bArr = new byte[i10];
            System.arraycopy(this.f8505h, this.f8508k, bArr, 0, i15);
            this.f8510m += this.f8506i;
            this.f8508k = 0;
            this.f8506i = 0;
            while (i15 < i10) {
                int iK = K(this.f8504g, bArr, i15, i10 - i15);
                if (iK == -1) {
                    throw InvalidProtocolBufferException.truncatedMessage();
                }
                this.f8510m += iK;
                i15 += iK;
            }
            return bArr;
        }

        private List P(int i10) throws IOException {
            ArrayList arrayList = new ArrayList();
            while (i10 > 0) {
                int iMin = Math.min(i10, 4096);
                byte[] bArr = new byte[iMin];
                int i11 = 0;
                while (i11 < iMin) {
                    int i12 = this.f8504g.read(bArr, i11, iMin - i11);
                    if (i12 == -1) {
                        throw InvalidProtocolBufferException.truncatedMessage();
                    }
                    this.f8510m += i12;
                    i11 += i12;
                }
                i10 -= iMin;
                arrayList.add(bArr);
            }
            return arrayList;
        }

        private void V() {
            int i10 = this.f8506i + this.f8507j;
            this.f8506i = i10;
            int i11 = this.f8510m + i10;
            int i12 = this.f8511n;
            if (i11 <= i12) {
                this.f8507j = 0;
                return;
            }
            int i13 = i11 - i12;
            this.f8507j = i13;
            this.f8506i = i10 - i13;
        }

        private void W(int i10) throws InvalidProtocolBufferException {
            if (d0(i10)) {
                return;
            }
            if (i10 <= (this.f8477c - this.f8510m) - this.f8508k) {
                throw InvalidProtocolBufferException.truncatedMessage();
            }
            throw InvalidProtocolBufferException.sizeLimitExceeded();
        }

        private static long X(InputStream inputStream, long j10) throws InvalidProtocolBufferException {
            try {
                return inputStream.skip(j10);
            } catch (InvalidProtocolBufferException e10) {
                e10.setThrownFromInputStream();
                throw e10;
            }
        }

        private void Z(int i10) throws InvalidProtocolBufferException {
            if (i10 < 0) {
                throw InvalidProtocolBufferException.negativeSize();
            }
            int i11 = this.f8510m;
            int i12 = this.f8508k;
            int i13 = i11 + i12 + i10;
            int i14 = this.f8511n;
            if (i13 > i14) {
                Y((i14 - i11) - i12);
                throw InvalidProtocolBufferException.truncatedMessage();
            }
            this.f8510m = i11 + i12;
            int i15 = this.f8506i - i12;
            this.f8506i = 0;
            this.f8508k = 0;
            while (i15 < i10) {
                try {
                    long j10 = i10 - i15;
                    long jX = X(this.f8504g, j10);
                    if (jX < 0 || jX > j10) {
                        throw new IllegalStateException(this.f8504g.getClass() + "#skip returned invalid result: " + jX + "\nThe InputStream implementation is buggy.");
                    }
                    if (jX == 0) {
                        break;
                    } else {
                        i15 += (int) jX;
                    }
                } catch (Throwable th2) {
                    this.f8510m += i15;
                    V();
                    throw th2;
                }
            }
            this.f8510m += i15;
            V();
            if (i15 >= i10) {
                return;
            }
            int i16 = this.f8506i;
            int i17 = i16 - this.f8508k;
            this.f8508k = i16;
            W(1);
            while (true) {
                int i18 = i10 - i17;
                int i19 = this.f8506i;
                if (i18 <= i19) {
                    this.f8508k = i18;
                    return;
                } else {
                    i17 += i19;
                    this.f8508k = i19;
                    W(1);
                }
            }
        }

        private void a0() throws InvalidProtocolBufferException {
            if (this.f8506i - this.f8508k >= 10) {
                b0();
            } else {
                c0();
            }
        }

        private void b0() throws InvalidProtocolBufferException {
            for (int i10 = 0; i10 < 10; i10++) {
                byte[] bArr = this.f8505h;
                int i11 = this.f8508k;
                this.f8508k = i11 + 1;
                if (bArr[i11] >= 0) {
                    return;
                }
            }
            throw InvalidProtocolBufferException.malformedVarint();
        }

        private void c0() throws InvalidProtocolBufferException {
            for (int i10 = 0; i10 < 10; i10++) {
                if (M() >= 0) {
                    return;
                }
            }
            throw InvalidProtocolBufferException.malformedVarint();
        }

        private boolean d0(int i10) throws InvalidProtocolBufferException {
            int i11 = this.f8508k;
            int i12 = i11 + i10;
            int i13 = this.f8506i;
            if (i12 <= i13) {
                throw new IllegalStateException("refillBuffer() called when " + i10 + " bytes were already available in buffer");
            }
            int i14 = this.f8477c;
            int i15 = this.f8510m;
            if (i10 > (i14 - i15) - i11 || i15 + i11 + i10 > this.f8511n) {
                return false;
            }
            if (i11 > 0) {
                if (i13 > i11) {
                    byte[] bArr = this.f8505h;
                    System.arraycopy(bArr, i11, bArr, 0, i13 - i11);
                }
                this.f8510m += i11;
                this.f8506i -= i11;
                this.f8508k = 0;
            }
            InputStream inputStream = this.f8504g;
            byte[] bArr2 = this.f8505h;
            int i16 = this.f8506i;
            int iK = K(inputStream, bArr2, i16, Math.min(bArr2.length - i16, (this.f8477c - this.f8510m) - i16));
            if (iK == 0 || iK < -1 || iK > this.f8505h.length) {
                throw new IllegalStateException(this.f8504g.getClass() + "#read(byte[]) returned invalid result: " + iK + "\nThe InputStream implementation is buggy.");
            }
            if (iK <= 0) {
                return false;
            }
            this.f8506i += iK;
            V();
            if (this.f8506i >= i10) {
                return true;
            }
            return d0(i10);
        }

        @Override
        public int A() {
            return i.c(S());
        }

        @Override
        public long B() {
            return i.d(T());
        }

        @Override
        public String C() throws InvalidProtocolBufferException {
            int iS = S();
            if (iS > 0) {
                int i10 = this.f8506i;
                int i11 = this.f8508k;
                if (iS <= i10 - i11) {
                    String str = new String(this.f8505h, i11, iS, w.f8604b);
                    this.f8508k += iS;
                    return str;
                }
            }
            if (iS == 0) {
                return "";
            }
            if (iS < 0) {
                throw InvalidProtocolBufferException.negativeSize();
            }
            if (iS > this.f8506i) {
                return new String(N(iS, false), w.f8604b);
            }
            W(iS);
            String str2 = new String(this.f8505h, this.f8508k, iS, w.f8604b);
            this.f8508k += iS;
            return str2;
        }

        @Override
        public String D() throws IOException {
            byte[] bArrN;
            int iS = S();
            int i10 = this.f8508k;
            int i11 = this.f8506i;
            if (iS <= i11 - i10 && iS > 0) {
                bArrN = this.f8505h;
                this.f8508k = i10 + iS;
            } else {
                if (iS == 0) {
                    return "";
                }
                if (iS < 0) {
                    throw InvalidProtocolBufferException.negativeSize();
                }
                i10 = 0;
                if (iS <= i11) {
                    W(iS);
                    bArrN = this.f8505h;
                    this.f8508k = iS;
                } else {
                    bArrN = N(iS, false);
                }
            }
            return Utf8.h(bArrN, i10, iS);
        }

        @Override
        public int E() throws InvalidProtocolBufferException {
            if (f()) {
                this.f8509l = 0;
                return 0;
            }
            int iS = S();
            this.f8509l = iS;
            if (WireFormat.a(iS) != 0) {
                return this.f8509l;
            }
            throw InvalidProtocolBufferException.invalidTag();
        }

        @Override
        public int F() {
            return S();
        }

        @Override
        public long G() {
            return T();
        }

        @Override
        public boolean H(int i10) throws InvalidProtocolBufferException {
            int iB = WireFormat.b(i10);
            if (iB == 0) {
                a0();
                return true;
            }
            if (iB == 1) {
                Y(8);
                return true;
            }
            if (iB == 2) {
                Y(S());
                return true;
            }
            if (iB == 3) {
                I();
                a(WireFormat.c(WireFormat.a(i10), 4));
                return true;
            }
            if (iB == 4) {
                return false;
            }
            if (iB != 5) {
                throw InvalidProtocolBufferException.invalidWireType();
            }
            Y(4);
            return true;
        }

        public byte M() throws InvalidProtocolBufferException {
            if (this.f8508k == this.f8506i) {
                W(1);
            }
            byte[] bArr = this.f8505h;
            int i10 = this.f8508k;
            this.f8508k = i10 + 1;
            return bArr[i10];
        }

        public int Q() throws InvalidProtocolBufferException {
            int i10 = this.f8508k;
            if (this.f8506i - i10 < 4) {
                W(4);
                i10 = this.f8508k;
            }
            byte[] bArr = this.f8505h;
            this.f8508k = i10 + 4;
            return ((bArr[i10 + 3] & 255) << 24) | (bArr[i10] & 255) | ((bArr[i10 + 1] & 255) << 8) | ((bArr[i10 + 2] & 255) << 16);
        }

        public long R() throws InvalidProtocolBufferException {
            int i10 = this.f8508k;
            if (this.f8506i - i10 < 8) {
                W(8);
                i10 = this.f8508k;
            }
            byte[] bArr = this.f8505h;
            this.f8508k = i10 + 8;
            return ((((long) bArr[i10 + 7]) & 255) << 56) | (((long) bArr[i10]) & 255) | ((((long) bArr[i10 + 1]) & 255) << 8) | ((((long) bArr[i10 + 2]) & 255) << 16) | ((((long) bArr[i10 + 3]) & 255) << 24) | ((((long) bArr[i10 + 4]) & 255) << 32) | ((((long) bArr[i10 + 5]) & 255) << 40) | ((((long) bArr[i10 + 6]) & 255) << 48);
        }

        public int S() {
            int i10;
            int i11 = this.f8508k;
            int i12 = this.f8506i;
            if (i12 != i11) {
                byte[] bArr = this.f8505h;
                int i13 = i11 + 1;
                byte b10 = bArr[i11];
                if (b10 >= 0) {
                    this.f8508k = i13;
                    return b10;
                }
                if (i12 - i13 >= 9) {
                    int i14 = i11 + 2;
                    int i15 = (bArr[i13] << 7) ^ b10;
                    if (i15 < 0) {
                        i10 = i15 ^ (-128);
                    } else {
                        int i16 = i11 + 3;
                        int i17 = (bArr[i14] << 14) ^ i15;
                        if (i17 >= 0) {
                            i10 = i17 ^ 16256;
                        } else {
                            int i18 = i11 + 4;
                            int i19 = i17 ^ (bArr[i16] << 21);
                            if (i19 < 0) {
                                i10 = (-2080896) ^ i19;
                            } else {
                                i16 = i11 + 5;
                                byte b11 = bArr[i18];
                                int i20 = (i19 ^ (b11 << 28)) ^ 266354560;
                                if (b11 < 0) {
                                    i18 = i11 + 6;
                                    if (bArr[i16] < 0) {
                                        i16 = i11 + 7;
                                        if (bArr[i18] < 0) {
                                            i18 = i11 + 8;
                                            if (bArr[i16] < 0) {
                                                i16 = i11 + 9;
                                                if (bArr[i18] < 0) {
                                                    int i21 = i11 + 10;
                                                    if (bArr[i16] >= 0) {
                                                        i14 = i21;
                                                        i10 = i20;
                                                    }
                                                }
                                            }
                                        }
                                    }
                                    i10 = i20;
                                }
                                i10 = i20;
                            }
                            i14 = i18;
                        }
                        i14 = i16;
                    }
                    this.f8508k = i14;
                    return i10;
                }
            }
            return (int) U();
        }

        public long T() {
            long j10;
            long j11;
            long j12;
            int i10 = this.f8508k;
            int i11 = this.f8506i;
            if (i11 != i10) {
                byte[] bArr = this.f8505h;
                int i12 = i10 + 1;
                byte b10 = bArr[i10];
                if (b10 >= 0) {
                    this.f8508k = i12;
                    return b10;
                }
                if (i11 - i12 >= 9) {
                    int i13 = i10 + 2;
                    int i14 = (bArr[i12] << 7) ^ b10;
                    if (i14 < 0) {
                        j10 = i14 ^ (-128);
                    } else {
                        int i15 = i10 + 3;
                        int i16 = (bArr[i13] << 14) ^ i14;
                        if (i16 >= 0) {
                            j10 = i16 ^ 16256;
                            i13 = i15;
                        } else {
                            int i17 = i10 + 4;
                            int i18 = i16 ^ (bArr[i15] << 21);
                            if (i18 < 0) {
                                long j13 = (-2080896) ^ i18;
                                i13 = i17;
                                j10 = j13;
                            } else {
                                long j14 = i18;
                                i13 = i10 + 5;
                                long j15 = j14 ^ (((long) bArr[i17]) << 28);
                                if (j15 >= 0) {
                                    j12 = 266354560;
                                } else {
                                    int i19 = i10 + 6;
                                    long j16 = j15 ^ (((long) bArr[i13]) << 35);
                                    if (j16 < 0) {
                                        j11 = -34093383808L;
                                    } else {
                                        i13 = i10 + 7;
                                        j15 = j16 ^ (((long) bArr[i19]) << 42);
                                        if (j15 >= 0) {
                                            j12 = 4363953127296L;
                                        } else {
                                            i19 = i10 + 8;
                                            j16 = j15 ^ (((long) bArr[i13]) << 49);
                                            if (j16 < 0) {
                                                j11 = -558586000294016L;
                                            } else {
                                                i13 = i10 + 9;
                                                long j17 = (j16 ^ (((long) bArr[i19]) << 56)) ^ 71499008037633920L;
                                                if (j17 < 0) {
                                                    int i20 = i10 + 10;
                                                    if (bArr[i13] >= 0) {
                                                        i13 = i20;
                                                    }
                                                }
                                                j10 = j17;
                                            }
                                        }
                                    }
                                    j10 = j16 ^ j11;
                                    i13 = i19;
                                }
                                j10 = j15 ^ j12;
                            }
                        }
                    }
                    this.f8508k = i13;
                    return j10;
                }
            }
            return U();
        }

        long U() throws InvalidProtocolBufferException {
            long j10 = 0;
            for (int i10 = 0; i10 < 64; i10 += 7) {
                byte bM = M();
                j10 |= ((long) (bM & 127)) << i10;
                if ((bM & 128) == 0) {
                    return j10;
                }
            }
            throw InvalidProtocolBufferException.malformedVarint();
        }

        public void Y(int i10) throws InvalidProtocolBufferException {
            int i11 = this.f8506i;
            int i12 = this.f8508k;
            if (i10 > i11 - i12 || i10 < 0) {
                Z(i10);
            } else {
                this.f8508k = i12 + i10;
            }
        }

        @Override
        public void a(int i10) throws InvalidProtocolBufferException {
            if (this.f8509l != i10) {
                throw InvalidProtocolBufferException.invalidEndTag();
            }
        }

        @Override
        public int e() {
            return this.f8510m + this.f8508k;
        }

        @Override
        public boolean f() {
            return this.f8508k == this.f8506i && !d0(1);
        }

        @Override
        public void n(int i10) {
            this.f8511n = i10;
            V();
        }

        @Override
        public int o(int i10) throws InvalidProtocolBufferException {
            if (i10 < 0) {
                throw InvalidProtocolBufferException.negativeSize();
            }
            int i11 = i10 + this.f8510m + this.f8508k;
            if (i11 < 0) {
                throw InvalidProtocolBufferException.parseFailure();
            }
            int i12 = this.f8511n;
            if (i11 > i12) {
                throw InvalidProtocolBufferException.truncatedMessage();
            }
            this.f8511n = i11;
            V();
            return i12;
        }

        @Override
        public boolean p() {
            return T() != 0;
        }

        @Override
        public ByteString q() throws InvalidProtocolBufferException {
            int iS = S();
            int i10 = this.f8506i;
            int i11 = this.f8508k;
            if (iS <= i10 - i11 && iS > 0) {
                ByteString byteStringCopyFrom = ByteString.copyFrom(this.f8505h, i11, iS);
                this.f8508k += iS;
                return byteStringCopyFrom;
            }
            if (iS == 0) {
                return ByteString.EMPTY;
            }
            if (iS >= 0) {
                return L(iS);
            }
            throw InvalidProtocolBufferException.negativeSize();
        }

        @Override
        public double r() {
            return Double.longBitsToDouble(R());
        }

        @Override
        public int s() {
            return S();
        }

        @Override
        public int t() {
            return Q();
        }

        @Override
        public long u() {
            return R();
        }

        @Override
        public float v() {
            return Float.intBitsToFloat(Q());
        }

        @Override
        public int w() {
            return S();
        }

        @Override
        public long x() {
            return T();
        }

        @Override
        public int y() {
            return Q();
        }

        @Override
        public long z() {
            return R();
        }

        private d(InputStream inputStream, int i10) {
            super();
            this.f8511n = Integer.MAX_VALUE;
            w.b(inputStream, "input");
            this.f8504g = inputStream;
            this.f8505h = new byte[i10];
            this.f8506i = 0;
            this.f8508k = 0;
            this.f8510m = 0;
        }
    }

    private static final class e extends i {

        private final ByteBuffer f8512g;

        private final boolean f8513h;

        private final long f8514i;

        private long f8515j;

        private long f8516k;

        private long f8517l;

        private int f8518m;

        private int f8519n;

        private boolean f8520o;

        private int f8521p;

        private int J(long j10) {
            return (int) (j10 - this.f8514i);
        }

        static boolean K() {
            return k1.J();
        }

        private void R() {
            long j10 = this.f8515j + ((long) this.f8518m);
            this.f8515j = j10;
            int i10 = (int) (j10 - this.f8517l);
            int i11 = this.f8521p;
            if (i10 <= i11) {
                this.f8518m = 0;
                return;
            }
            int i12 = i10 - i11;
            this.f8518m = i12;
            this.f8515j = j10 - ((long) i12);
        }

        private int S() {
            return (int) (this.f8515j - this.f8516k);
        }

        private void U() throws InvalidProtocolBufferException {
            if (S() >= 10) {
                V();
            } else {
                W();
            }
        }

        private void V() throws InvalidProtocolBufferException {
            for (int i10 = 0; i10 < 10; i10++) {
                long j10 = this.f8516k;
                this.f8516k = 1 + j10;
                if (k1.w(j10) >= 0) {
                    return;
                }
            }
            throw InvalidProtocolBufferException.malformedVarint();
        }

        private void W() throws InvalidProtocolBufferException {
            for (int i10 = 0; i10 < 10; i10++) {
                if (L() >= 0) {
                    return;
                }
            }
            throw InvalidProtocolBufferException.malformedVarint();
        }

        private ByteBuffer X(long j10, long j11) {
            int iPosition = this.f8512g.position();
            int iLimit = this.f8512g.limit();
            ByteBuffer byteBuffer = this.f8512g;
            try {
                try {
                    byteBuffer.position(J(j10));
                    byteBuffer.limit(J(j11));
                    ByteBuffer byteBufferSlice = this.f8512g.slice();
                    byteBuffer.position(iPosition);
                    byteBuffer.limit(iLimit);
                    return byteBufferSlice;
                } catch (IllegalArgumentException e10) {
                    InvalidProtocolBufferException invalidProtocolBufferExceptionTruncatedMessage = InvalidProtocolBufferException.truncatedMessage();
                    invalidProtocolBufferExceptionTruncatedMessage.initCause(e10);
                    throw invalidProtocolBufferExceptionTruncatedMessage;
                }
            } catch (Throwable th2) {
                byteBuffer.position(iPosition);
                byteBuffer.limit(iLimit);
                throw th2;
            }
        }

        @Override
        public int A() {
            return i.c(O());
        }

        @Override
        public long B() {
            return i.d(P());
        }

        @Override
        public String C() throws InvalidProtocolBufferException {
            int iO = O();
            if (iO <= 0 || iO > S()) {
                if (iO == 0) {
                    return "";
                }
                if (iO < 0) {
                    throw InvalidProtocolBufferException.negativeSize();
                }
                throw InvalidProtocolBufferException.truncatedMessage();
            }
            byte[] bArr = new byte[iO];
            long j10 = iO;
            k1.p(this.f8516k, bArr, 0L, j10);
            String str = new String(bArr, w.f8604b);
            this.f8516k += j10;
            return str;
        }

        @Override
        public String D() throws InvalidProtocolBufferException {
            int iO = O();
            if (iO > 0 && iO <= S()) {
                String strG = Utf8.g(this.f8512g, J(this.f8516k), iO);
                this.f8516k += (long) iO;
                return strG;
            }
            if (iO == 0) {
                return "";
            }
            if (iO <= 0) {
                throw InvalidProtocolBufferException.negativeSize();
            }
            throw InvalidProtocolBufferException.truncatedMessage();
        }

        @Override
        public int E() throws InvalidProtocolBufferException {
            if (f()) {
                this.f8519n = 0;
                return 0;
            }
            int iO = O();
            this.f8519n = iO;
            if (WireFormat.a(iO) != 0) {
                return this.f8519n;
            }
            throw InvalidProtocolBufferException.invalidTag();
        }

        @Override
        public int F() {
            return O();
        }

        @Override
        public long G() {
            return P();
        }

        @Override
        public boolean H(int i10) throws InvalidProtocolBufferException {
            int iB = WireFormat.b(i10);
            if (iB == 0) {
                U();
                return true;
            }
            if (iB == 1) {
                T(8);
                return true;
            }
            if (iB == 2) {
                T(O());
                return true;
            }
            if (iB == 3) {
                I();
                a(WireFormat.c(WireFormat.a(i10), 4));
                return true;
            }
            if (iB == 4) {
                return false;
            }
            if (iB != 5) {
                throw InvalidProtocolBufferException.invalidWireType();
            }
            T(4);
            return true;
        }

        public byte L() throws InvalidProtocolBufferException {
            long j10 = this.f8516k;
            if (j10 == this.f8515j) {
                throw InvalidProtocolBufferException.truncatedMessage();
            }
            this.f8516k = 1 + j10;
            return k1.w(j10);
        }

        public int M() throws InvalidProtocolBufferException {
            long j10 = this.f8516k;
            if (this.f8515j - j10 < 4) {
                throw InvalidProtocolBufferException.truncatedMessage();
            }
            this.f8516k = 4 + j10;
            return ((k1.w(j10 + 3) & 255) << 24) | (k1.w(j10) & 255) | ((k1.w(1 + j10) & 255) << 8) | ((k1.w(2 + j10) & 255) << 16);
        }

        public long N() throws InvalidProtocolBufferException {
            long j10 = this.f8516k;
            if (this.f8515j - j10 < 8) {
                throw InvalidProtocolBufferException.truncatedMessage();
            }
            this.f8516k = 8 + j10;
            return ((((long) k1.w(j10 + 7)) & 255) << 56) | (((long) k1.w(j10)) & 255) | ((((long) k1.w(1 + j10)) & 255) << 8) | ((((long) k1.w(2 + j10)) & 255) << 16) | ((((long) k1.w(3 + j10)) & 255) << 24) | ((((long) k1.w(4 + j10)) & 255) << 32) | ((((long) k1.w(5 + j10)) & 255) << 40) | ((((long) k1.w(6 + j10)) & 255) << 48);
        }

        /* JADX WARN: Code restructure failed: missing block: B:33:0x008c, code lost:
        
            if (androidx.datastore.preferences.protobuf.k1.w(r3) < 0) goto L34;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public int O() {
            int i10;
            long j10 = this.f8516k;
            if (this.f8515j != j10) {
                long j11 = 1 + j10;
                byte bW = k1.w(j10);
                if (bW >= 0) {
                    this.f8516k = j11;
                    return bW;
                }
                if (this.f8515j - j11 >= 9) {
                    long j12 = 2 + j10;
                    int iW = (k1.w(j11) << 7) ^ bW;
                    if (iW < 0) {
                        i10 = iW ^ (-128);
                    } else {
                        long j13 = 3 + j10;
                        int iW2 = iW ^ (k1.w(j12) << 14);
                        if (iW2 >= 0) {
                            i10 = iW2 ^ 16256;
                        } else {
                            j12 = 4 + j10;
                            int iW3 = iW2 ^ (k1.w(j13) << 21);
                            if (iW3 < 0) {
                                i10 = (-2080896) ^ iW3;
                            } else {
                                j13 = 5 + j10;
                                byte bW2 = k1.w(j12);
                                int i11 = (iW3 ^ (bW2 << 28)) ^ 266354560;
                                if (bW2 < 0) {
                                    j12 = 6 + j10;
                                    if (k1.w(j13) < 0) {
                                        j13 = 7 + j10;
                                        if (k1.w(j12) < 0) {
                                            j12 = 8 + j10;
                                            if (k1.w(j13) < 0) {
                                                j13 = j10 + 9;
                                                if (k1.w(j12) < 0) {
                                                    j12 = 10 + j10;
                                                }
                                            }
                                        }
                                    }
                                    i10 = i11;
                                }
                                i10 = i11;
                            }
                        }
                        j12 = j13;
                    }
                    this.f8516k = j12;
                    return i10;
                }
            }
            return (int) Q();
        }

        public long P() {
            long j10;
            long j11;
            long j12;
            int i10;
            long j13 = this.f8516k;
            if (this.f8515j != j13) {
                long j14 = 1 + j13;
                byte bW = k1.w(j13);
                if (bW >= 0) {
                    this.f8516k = j14;
                    return bW;
                }
                if (this.f8515j - j14 >= 9) {
                    long j15 = 2 + j13;
                    int iW = (k1.w(j14) << 7) ^ bW;
                    if (iW >= 0) {
                        long j16 = 3 + j13;
                        int iW2 = iW ^ (k1.w(j15) << 14);
                        if (iW2 >= 0) {
                            j10 = iW2 ^ 16256;
                            j15 = j16;
                        } else {
                            j15 = 4 + j13;
                            int iW3 = iW2 ^ (k1.w(j16) << 21);
                            if (iW3 < 0) {
                                i10 = (-2080896) ^ iW3;
                            } else {
                                long j17 = 5 + j13;
                                long jW = ((long) iW3) ^ (((long) k1.w(j15)) << 28);
                                if (jW >= 0) {
                                    j12 = 266354560;
                                } else {
                                    long j18 = 6 + j13;
                                    long jW2 = jW ^ (((long) k1.w(j17)) << 35);
                                    if (jW2 < 0) {
                                        j11 = -34093383808L;
                                    } else {
                                        j17 = 7 + j13;
                                        jW = jW2 ^ (((long) k1.w(j18)) << 42);
                                        if (jW >= 0) {
                                            j12 = 4363953127296L;
                                        } else {
                                            j18 = 8 + j13;
                                            jW2 = jW ^ (((long) k1.w(j17)) << 49);
                                            if (jW2 < 0) {
                                                j11 = -558586000294016L;
                                            } else {
                                                long j19 = j13 + 9;
                                                long jW3 = (jW2 ^ (((long) k1.w(j18)) << 56)) ^ 71499008037633920L;
                                                if (jW3 < 0) {
                                                    long j20 = j13 + 10;
                                                    if (k1.w(j19) >= 0) {
                                                        j15 = j20;
                                                        j10 = jW3;
                                                    }
                                                } else {
                                                    j10 = jW3;
                                                    j15 = j19;
                                                }
                                            }
                                        }
                                    }
                                    j10 = j11 ^ jW2;
                                    j15 = j18;
                                }
                                j10 = j12 ^ jW;
                                j15 = j17;
                            }
                        }
                        this.f8516k = j15;
                        return j10;
                    }
                    i10 = iW ^ (-128);
                    j10 = i10;
                    this.f8516k = j15;
                    return j10;
                }
            }
            return Q();
        }

        long Q() throws InvalidProtocolBufferException {
            long j10 = 0;
            for (int i10 = 0; i10 < 64; i10 += 7) {
                byte bL = L();
                j10 |= ((long) (bL & 127)) << i10;
                if ((bL & 128) == 0) {
                    return j10;
                }
            }
            throw InvalidProtocolBufferException.malformedVarint();
        }

        public void T(int i10) throws InvalidProtocolBufferException {
            if (i10 >= 0 && i10 <= S()) {
                this.f8516k += (long) i10;
            } else {
                if (i10 >= 0) {
                    throw InvalidProtocolBufferException.truncatedMessage();
                }
                throw InvalidProtocolBufferException.negativeSize();
            }
        }

        @Override
        public void a(int i10) throws InvalidProtocolBufferException {
            if (this.f8519n != i10) {
                throw InvalidProtocolBufferException.invalidEndTag();
            }
        }

        @Override
        public int e() {
            return (int) (this.f8516k - this.f8517l);
        }

        @Override
        public boolean f() {
            return this.f8516k == this.f8515j;
        }

        @Override
        public void n(int i10) {
            this.f8521p = i10;
            R();
        }

        @Override
        public int o(int i10) throws InvalidProtocolBufferException {
            if (i10 < 0) {
                throw InvalidProtocolBufferException.negativeSize();
            }
            int iE = i10 + e();
            int i11 = this.f8521p;
            if (iE > i11) {
                throw InvalidProtocolBufferException.truncatedMessage();
            }
            this.f8521p = iE;
            R();
            return i11;
        }

        @Override
        public boolean p() {
            return P() != 0;
        }

        @Override
        public ByteString q() throws InvalidProtocolBufferException {
            int iO = O();
            if (iO <= 0 || iO > S()) {
                if (iO == 0) {
                    return ByteString.EMPTY;
                }
                if (iO < 0) {
                    throw InvalidProtocolBufferException.negativeSize();
                }
                throw InvalidProtocolBufferException.truncatedMessage();
            }
            if (this.f8513h && this.f8520o) {
                long j10 = this.f8516k;
                long j11 = iO;
                ByteBuffer byteBufferX = X(j10, j10 + j11);
                this.f8516k += j11;
                return ByteString.wrap(byteBufferX);
            }
            byte[] bArr = new byte[iO];
            long j12 = iO;
            k1.p(this.f8516k, bArr, 0L, j12);
            this.f8516k += j12;
            return ByteString.wrap(bArr);
        }

        @Override
        public double r() {
            return Double.longBitsToDouble(N());
        }

        @Override
        public int s() {
            return O();
        }

        @Override
        public int t() {
            return M();
        }

        @Override
        public long u() {
            return N();
        }

        @Override
        public float v() {
            return Float.intBitsToFloat(M());
        }

        @Override
        public int w() {
            return O();
        }

        @Override
        public long x() {
            return P();
        }

        @Override
        public int y() {
            return M();
        }

        @Override
        public long z() {
            return N();
        }

        private e(ByteBuffer byteBuffer, boolean z10) {
            super();
            this.f8521p = Integer.MAX_VALUE;
            this.f8512g = byteBuffer;
            long jK = k1.k(byteBuffer);
            this.f8514i = jK;
            this.f8515j = ((long) byteBuffer.limit()) + jK;
            long jPosition = jK + ((long) byteBuffer.position());
            this.f8516k = jPosition;
            this.f8517l = jPosition;
            this.f8513h = z10;
        }
    }

    public static int c(int i10) {
        return (-(i10 & 1)) ^ (i10 >>> 1);
    }

    public static long d(long j10) {
        return (-(j10 & 1)) ^ (j10 >>> 1);
    }

    public static i g(InputStream inputStream) {
        return h(inputStream, 4096);
    }

    public static i h(InputStream inputStream, int i10) {
        if (i10 > 0) {
            return inputStream == null ? k(w.f8606d) : new d(inputStream, i10);
        }
        throw new IllegalArgumentException("bufferSize must be > 0");
    }

    static i i(Iterable iterable, boolean z10) {
        Iterator it = iterable.iterator();
        int i10 = 0;
        int iRemaining = 0;
        while (it.hasNext()) {
            ByteBuffer byteBuffer = (ByteBuffer) it.next();
            iRemaining += byteBuffer.remaining();
            if (byteBuffer.hasArray()) {
                i10 |= 1;
            } else {
                i10 = byteBuffer.isDirect() ? i10 | 2 : i10 | 4;
            }
        }
        return i10 == 2 ? new c(iterable, iRemaining, z10) : g(new x(iterable));
    }

    static i j(ByteBuffer byteBuffer, boolean z10) {
        if (byteBuffer.hasArray()) {
            return m(byteBuffer.array(), byteBuffer.arrayOffset() + byteBuffer.position(), byteBuffer.remaining(), z10);
        }
        if (byteBuffer.isDirect() && e.K()) {
            return new e(byteBuffer, z10);
        }
        int iRemaining = byteBuffer.remaining();
        byte[] bArr = new byte[iRemaining];
        byteBuffer.duplicate().get(bArr);
        return m(bArr, 0, iRemaining, true);
    }

    public static i k(byte[] bArr) {
        return l(bArr, 0, bArr.length);
    }

    public static i l(byte[] bArr, int i10, int i11) {
        return m(bArr, i10, i11, false);
    }

    static i m(byte[] bArr, int i10, int i11, boolean z10) {
        b bVar = new b(bArr, i10, i11, z10);
        try {
            bVar.o(i11);
            return bVar;
        } catch (InvalidProtocolBufferException e10) {
            throw new IllegalArgumentException(e10);
        }
    }

    public abstract int A();

    public abstract long B();

    public abstract String C();

    public abstract String D();

    public abstract int E();

    public abstract int F();

    public abstract long G();

    public abstract boolean H(int i10);

    public void I() throws InvalidProtocolBufferException {
        boolean zH;
        do {
            int iE = E();
            if (iE == 0) {
                return;
            }
            b();
            this.f8475a++;
            zH = H(iE);
            this.f8475a--;
        } while (zH);
    }

    public abstract void a(int i10);

    public void b() throws InvalidProtocolBufferException {
        if (this.f8475a >= this.f8476b) {
            throw InvalidProtocolBufferException.recursionLimitExceeded();
        }
    }

    public abstract int e();

    public abstract boolean f();

    public abstract void n(int i10);

    public abstract int o(int i10);

    public abstract boolean p();

    public abstract ByteString q();

    public abstract double r();

    public abstract int s();

    public abstract int t();

    public abstract long u();

    public abstract float v();

    public abstract int w();

    public abstract long x();

    public abstract int y();

    public abstract long z();

    private i() {
        this.f8476b = f8474f;
        this.f8477c = Integer.MAX_VALUE;
        this.f8479e = false;
    }
}

package androidx.datastore.preferences.protobuf;

abstract class e {

    private static volatile int f8432a = 100;

    static final class a {

        public int f8433a;

        public long f8434b;

        public Object f8435c;

        public final o f8436d;

        public int f8437e;

        a(o oVar) {
            oVar.getClass();
            this.f8436d = oVar;
        }
    }

    static int A(int i10, byte[] bArr, int i11, int i12, w.d dVar, a aVar) {
        v vVar = (v) dVar;
        int I = I(bArr, i11, aVar);
        vVar.addInt(i.c(aVar.f8433a));
        while (I < i12) {
            int I2 = I(bArr, I, aVar);
            if (i10 != aVar.f8433a) {
                break;
            }
            I = I(bArr, I2, aVar);
            vVar.addInt(i.c(aVar.f8433a));
        }
        return I;
    }

    static int B(int i10, byte[] bArr, int i11, int i12, w.d dVar, a aVar) {
        f0 f0Var = (f0) dVar;
        int iL = L(bArr, i11, aVar);
        f0Var.addLong(i.d(aVar.f8434b));
        while (iL < i12) {
            int I = I(bArr, iL, aVar);
            if (i10 != aVar.f8433a) {
                break;
            }
            iL = L(bArr, I, aVar);
            f0Var.addLong(i.d(aVar.f8434b));
        }
        return iL;
    }

    static int C(byte[] bArr, int i10, a aVar) throws InvalidProtocolBufferException {
        int I = I(bArr, i10, aVar);
        int i11 = aVar.f8433a;
        if (i11 < 0) {
            throw InvalidProtocolBufferException.negativeSize();
        }
        if (i11 == 0) {
            aVar.f8435c = "";
            return I;
        }
        aVar.f8435c = new String(bArr, I, i11, w.f8604b);
        return I + i11;
    }

    static int D(int i10, byte[] bArr, int i11, int i12, w.d dVar, a aVar) throws InvalidProtocolBufferException {
        int I = I(bArr, i11, aVar);
        int i13 = aVar.f8433a;
        if (i13 < 0) {
            throw InvalidProtocolBufferException.negativeSize();
        }
        if (i13 == 0) {
            dVar.add("");
        } else {
            dVar.add(new String(bArr, I, i13, w.f8604b));
            I += i13;
        }
        while (I < i12) {
            int I2 = I(bArr, I, aVar);
            if (i10 != aVar.f8433a) {
                break;
            }
            I = I(bArr, I2, aVar);
            int i14 = aVar.f8433a;
            if (i14 < 0) {
                throw InvalidProtocolBufferException.negativeSize();
            }
            if (i14 == 0) {
                dVar.add("");
            } else {
                dVar.add(new String(bArr, I, i14, w.f8604b));
                I += i14;
            }
        }
        return I;
    }

    static int E(int i10, byte[] bArr, int i11, int i12, w.d dVar, a aVar) throws InvalidProtocolBufferException {
        int I = I(bArr, i11, aVar);
        int i13 = aVar.f8433a;
        if (i13 < 0) {
            throw InvalidProtocolBufferException.negativeSize();
        }
        if (i13 == 0) {
            dVar.add("");
        } else {
            int i14 = I + i13;
            if (!Utf8.s(bArr, I, i14)) {
                throw InvalidProtocolBufferException.invalidUtf8();
            }
            dVar.add(new String(bArr, I, i13, w.f8604b));
            I = i14;
        }
        while (I < i12) {
            int I2 = I(bArr, I, aVar);
            if (i10 != aVar.f8433a) {
                break;
            }
            I = I(bArr, I2, aVar);
            int i15 = aVar.f8433a;
            if (i15 < 0) {
                throw InvalidProtocolBufferException.negativeSize();
            }
            if (i15 == 0) {
                dVar.add("");
            } else {
                int i16 = I + i15;
                if (!Utf8.s(bArr, I, i16)) {
                    throw InvalidProtocolBufferException.invalidUtf8();
                }
                dVar.add(new String(bArr, I, i15, w.f8604b));
                I = i16;
            }
        }
        return I;
    }

    static int F(byte[] bArr, int i10, a aVar) throws InvalidProtocolBufferException {
        int I = I(bArr, i10, aVar);
        int i11 = aVar.f8433a;
        if (i11 < 0) {
            throw InvalidProtocolBufferException.negativeSize();
        }
        if (i11 == 0) {
            aVar.f8435c = "";
            return I;
        }
        aVar.f8435c = Utf8.h(bArr, I, i11);
        return I + i11;
    }

    static int G(int i10, byte[] bArr, int i11, int i12, i1 i1Var, a aVar) throws InvalidProtocolBufferException {
        if (WireFormat.a(i10) == 0) {
            throw InvalidProtocolBufferException.invalidTag();
        }
        int iB = WireFormat.b(i10);
        if (iB == 0) {
            int iL = L(bArr, i11, aVar);
            i1Var.n(i10, Long.valueOf(aVar.f8434b));
            return iL;
        }
        if (iB == 1) {
            i1Var.n(i10, Long.valueOf(j(bArr, i11)));
            return i11 + 8;
        }
        if (iB == 2) {
            int I = I(bArr, i11, aVar);
            int i13 = aVar.f8433a;
            if (i13 < 0) {
                throw InvalidProtocolBufferException.negativeSize();
            }
            if (i13 > bArr.length - I) {
                throw InvalidProtocolBufferException.truncatedMessage();
            }
            if (i13 == 0) {
                i1Var.n(i10, ByteString.EMPTY);
            } else {
                i1Var.n(i10, ByteString.copyFrom(bArr, I, i13));
            }
            return I + i13;
        }
        if (iB != 3) {
            if (iB != 5) {
                throw InvalidProtocolBufferException.invalidTag();
            }
            i1Var.n(i10, Integer.valueOf(h(bArr, i11)));
            return i11 + 4;
        }
        i1 i1VarK = i1.k();
        int i14 = (i10 & (-8)) | 4;
        int i15 = aVar.f8437e + 1;
        aVar.f8437e = i15;
        a(i15);
        int i16 = 0;
        while (i11 < i12) {
            int I2 = I(bArr, i11, aVar);
            int i17 = aVar.f8433a;
            if (i17 == i14) {
                i16 = i17;
                i11 = I2;
                break;
            }
            i16 = i17;
            i11 = G(i17, bArr, I2, i12, i1VarK, aVar);
        }
        aVar.f8437e--;
        if (i11 > i12 || i16 != i14) {
            throw InvalidProtocolBufferException.parseFailure();
        }
        i1Var.n(i10, i1VarK);
        return i11;
    }

    static int H(int i10, byte[] bArr, int i11, a aVar) {
        int i12 = i10 & 127;
        int i13 = i11 + 1;
        byte b10 = bArr[i11];
        if (b10 >= 0) {
            aVar.f8433a = i12 | (b10 << 7);
            return i13;
        }
        int i14 = i12 | ((b10 & 127) << 7);
        int i15 = i11 + 2;
        byte b11 = bArr[i13];
        if (b11 >= 0) {
            aVar.f8433a = i14 | (b11 << 14);
            return i15;
        }
        int i16 = i14 | ((b11 & 127) << 14);
        int i17 = i11 + 3;
        byte b12 = bArr[i15];
        if (b12 >= 0) {
            aVar.f8433a = i16 | (b12 << 21);
            return i17;
        }
        int i18 = i16 | ((b12 & 127) << 21);
        int i19 = i11 + 4;
        byte b13 = bArr[i17];
        if (b13 >= 0) {
            aVar.f8433a = i18 | (b13 << 28);
            return i19;
        }
        int i20 = i18 | ((b13 & 127) << 28);
        while (true) {
            int i21 = i19 + 1;
            if (bArr[i19] >= 0) {
                aVar.f8433a = i20;
                return i21;
            }
            i19 = i21;
        }
    }

    static int I(byte[] bArr, int i10, a aVar) {
        int i11 = i10 + 1;
        byte b10 = bArr[i10];
        if (b10 < 0) {
            return H(b10, bArr, i11, aVar);
        }
        aVar.f8433a = b10;
        return i11;
    }

    static int J(int i10, byte[] bArr, int i11, int i12, w.d dVar, a aVar) {
        v vVar = (v) dVar;
        int I = I(bArr, i11, aVar);
        vVar.addInt(aVar.f8433a);
        while (I < i12) {
            int I2 = I(bArr, I, aVar);
            if (i10 != aVar.f8433a) {
                break;
            }
            I = I(bArr, I2, aVar);
            vVar.addInt(aVar.f8433a);
        }
        return I;
    }

    static int K(long j10, byte[] bArr, int i10, a aVar) {
        int i11 = i10 + 1;
        byte b10 = bArr[i10];
        long j11 = (j10 & 127) | (((long) (b10 & 127)) << 7);
        int i12 = 7;
        while (b10 < 0) {
            int i13 = i11 + 1;
            byte b11 = bArr[i11];
            i12 += 7;
            j11 |= ((long) (b11 & 127)) << i12;
            i11 = i13;
            b10 = b11;
        }
        aVar.f8434b = j11;
        return i11;
    }

    static int L(byte[] bArr, int i10, a aVar) {
        int i11 = i10 + 1;
        long j10 = bArr[i10];
        if (j10 < 0) {
            return K(j10, bArr, i11, aVar);
        }
        aVar.f8434b = j10;
        return i11;
    }

    static int M(int i10, byte[] bArr, int i11, int i12, w.d dVar, a aVar) {
        f0 f0Var = (f0) dVar;
        int iL = L(bArr, i11, aVar);
        f0Var.addLong(aVar.f8434b);
        while (iL < i12) {
            int I = I(bArr, iL, aVar);
            if (i10 != aVar.f8433a) {
                break;
            }
            iL = L(bArr, I, aVar);
            f0Var.addLong(aVar.f8434b);
        }
        return iL;
    }

    static int N(Object obj, b1 b1Var, byte[] bArr, int i10, int i11, int i12, a aVar) throws InvalidProtocolBufferException {
        q0 q0Var = (q0) b1Var;
        int i13 = aVar.f8437e + 1;
        aVar.f8437e = i13;
        a(i13);
        int iX = q0Var.X(obj, bArr, i10, i11, i12, aVar);
        aVar.f8437e--;
        aVar.f8435c = obj;
        return iX;
    }

    static int O(Object obj, b1 b1Var, byte[] bArr, int i10, int i11, a aVar) throws InvalidProtocolBufferException {
        int iH = i10 + 1;
        int i12 = bArr[i10];
        if (i12 < 0) {
            iH = H(i12, bArr, iH, aVar);
            i12 = aVar.f8433a;
        }
        int i13 = iH;
        if (i12 < 0 || i12 > i11 - i13) {
            throw InvalidProtocolBufferException.truncatedMessage();
        }
        int i14 = aVar.f8437e + 1;
        aVar.f8437e = i14;
        a(i14);
        int i15 = i12 + i13;
        b1Var.c(obj, bArr, i13, i15, aVar);
        aVar.f8437e--;
        aVar.f8435c = obj;
        return i15;
    }

    static int P(int i10, byte[] bArr, int i11, int i12, a aVar) throws InvalidProtocolBufferException {
        if (WireFormat.a(i10) == 0) {
            throw InvalidProtocolBufferException.invalidTag();
        }
        int iB = WireFormat.b(i10);
        if (iB == 0) {
            return L(bArr, i11, aVar);
        }
        if (iB == 1) {
            return i11 + 8;
        }
        if (iB == 2) {
            return I(bArr, i11, aVar) + aVar.f8433a;
        }
        if (iB != 3) {
            if (iB == 5) {
                return i11 + 4;
            }
            throw InvalidProtocolBufferException.invalidTag();
        }
        int i13 = (i10 & (-8)) | 4;
        int i14 = 0;
        while (i11 < i12) {
            i11 = I(bArr, i11, aVar);
            i14 = aVar.f8433a;
            if (i14 == i13) {
                break;
            }
            i11 = P(i14, bArr, i11, i12, aVar);
        }
        if (i11 > i12 || i14 != i13) {
            throw InvalidProtocolBufferException.parseFailure();
        }
        return i11;
    }

    private static void a(int i10) throws InvalidProtocolBufferException {
        if (i10 >= f8432a) {
            throw InvalidProtocolBufferException.recursionLimitExceeded();
        }
    }

    static int b(int i10, byte[] bArr, int i11, int i12, w.d dVar, a aVar) {
        f fVar = (f) dVar;
        int iL = L(bArr, i11, aVar);
        fVar.addBoolean(aVar.f8434b != 0);
        while (iL < i12) {
            int I = I(bArr, iL, aVar);
            if (i10 != aVar.f8433a) {
                break;
            }
            iL = L(bArr, I, aVar);
            fVar.addBoolean(aVar.f8434b != 0);
        }
        return iL;
    }

    static int c(byte[] bArr, int i10, a aVar) throws InvalidProtocolBufferException {
        int I = I(bArr, i10, aVar);
        int i11 = aVar.f8433a;
        if (i11 < 0) {
            throw InvalidProtocolBufferException.negativeSize();
        }
        if (i11 > bArr.length - I) {
            throw InvalidProtocolBufferException.truncatedMessage();
        }
        if (i11 == 0) {
            aVar.f8435c = ByteString.EMPTY;
            return I;
        }
        aVar.f8435c = ByteString.copyFrom(bArr, I, i11);
        return I + i11;
    }

    static int d(int i10, byte[] bArr, int i11, int i12, w.d dVar, a aVar) throws InvalidProtocolBufferException {
        int I = I(bArr, i11, aVar);
        int i13 = aVar.f8433a;
        if (i13 < 0) {
            throw InvalidProtocolBufferException.negativeSize();
        }
        if (i13 > bArr.length - I) {
            throw InvalidProtocolBufferException.truncatedMessage();
        }
        if (i13 == 0) {
            dVar.add(ByteString.EMPTY);
        } else {
            dVar.add(ByteString.copyFrom(bArr, I, i13));
            I += i13;
        }
        while (I < i12) {
            int I2 = I(bArr, I, aVar);
            if (i10 != aVar.f8433a) {
                break;
            }
            I = I(bArr, I2, aVar);
            int i14 = aVar.f8433a;
            if (i14 < 0) {
                throw InvalidProtocolBufferException.negativeSize();
            }
            if (i14 > bArr.length - I) {
                throw InvalidProtocolBufferException.truncatedMessage();
            }
            if (i14 == 0) {
                dVar.add(ByteString.EMPTY);
            } else {
                dVar.add(ByteString.copyFrom(bArr, I, i14));
                I += i14;
            }
        }
        return I;
    }

    static double e(byte[] bArr, int i10) {
        return Double.longBitsToDouble(j(bArr, i10));
    }

    static int f(int i10, byte[] bArr, int i11, int i12, w.d dVar, a aVar) {
        l lVar = (l) dVar;
        lVar.addDouble(e(bArr, i11));
        int i13 = i11 + 8;
        while (i13 < i12) {
            int I = I(bArr, i13, aVar);
            if (i10 != aVar.f8433a) {
                break;
            }
            lVar.addDouble(e(bArr, I));
            i13 = I + 8;
        }
        return i13;
    }

    static int g(int i10, byte[] bArr, int i11, int i12, Object obj, n0 n0Var, h1 h1Var, a aVar) {
        aVar.f8436d.a(n0Var, i10 >>> 3);
        return G(i10, bArr, i11, i12, q0.q(obj), aVar);
    }

    static int h(byte[] bArr, int i10) {
        return ((bArr[i10 + 3] & 255) << 24) | (bArr[i10] & 255) | ((bArr[i10 + 1] & 255) << 8) | ((bArr[i10 + 2] & 255) << 16);
    }

    static int i(int i10, byte[] bArr, int i11, int i12, w.d dVar, a aVar) {
        v vVar = (v) dVar;
        vVar.addInt(h(bArr, i11));
        int i13 = i11 + 4;
        while (i13 < i12) {
            int I = I(bArr, i13, aVar);
            if (i10 != aVar.f8433a) {
                break;
            }
            vVar.addInt(h(bArr, I));
            i13 = I + 4;
        }
        return i13;
    }

    static long j(byte[] bArr, int i10) {
        return ((((long) bArr[i10 + 7]) & 255) << 56) | (((long) bArr[i10]) & 255) | ((((long) bArr[i10 + 1]) & 255) << 8) | ((((long) bArr[i10 + 2]) & 255) << 16) | ((((long) bArr[i10 + 3]) & 255) << 24) | ((((long) bArr[i10 + 4]) & 255) << 32) | ((((long) bArr[i10 + 5]) & 255) << 40) | ((((long) bArr[i10 + 6]) & 255) << 48);
    }

    static int k(int i10, byte[] bArr, int i11, int i12, w.d dVar, a aVar) {
        f0 f0Var = (f0) dVar;
        f0Var.addLong(j(bArr, i11));
        int i13 = i11 + 8;
        while (i13 < i12) {
            int I = I(bArr, i13, aVar);
            if (i10 != aVar.f8433a) {
                break;
            }
            f0Var.addLong(j(bArr, I));
            i13 = I + 8;
        }
        return i13;
    }

    static float l(byte[] bArr, int i10) {
        return Float.intBitsToFloat(h(bArr, i10));
    }

    static int m(int i10, byte[] bArr, int i11, int i12, w.d dVar, a aVar) {
        t tVar = (t) dVar;
        tVar.addFloat(l(bArr, i11));
        int i13 = i11 + 4;
        while (i13 < i12) {
            int I = I(bArr, i13, aVar);
            if (i10 != aVar.f8433a) {
                break;
            }
            tVar.addFloat(l(bArr, I));
            i13 = I + 4;
        }
        return i13;
    }

    static int n(b1 b1Var, byte[] bArr, int i10, int i11, int i12, a aVar) throws InvalidProtocolBufferException {
        Object objNewInstance = b1Var.newInstance();
        int iN = N(objNewInstance, b1Var, bArr, i10, i11, i12, aVar);
        b1Var.makeImmutable(objNewInstance);
        aVar.f8435c = objNewInstance;
        return iN;
    }

    static int o(b1 b1Var, int i10, byte[] bArr, int i11, int i12, w.d dVar, a aVar) throws InvalidProtocolBufferException {
        int i13 = (i10 & (-8)) | 4;
        int iN = n(b1Var, bArr, i11, i12, i13, aVar);
        dVar.add(aVar.f8435c);
        while (iN < i12) {
            int I = I(bArr, iN, aVar);
            if (i10 != aVar.f8433a) {
                break;
            }
            iN = n(b1Var, bArr, I, i12, i13, aVar);
            dVar.add(aVar.f8435c);
        }
        return iN;
    }

    static int p(b1 b1Var, byte[] bArr, int i10, int i11, a aVar) throws InvalidProtocolBufferException {
        Object objNewInstance = b1Var.newInstance();
        int iO = O(objNewInstance, b1Var, bArr, i10, i11, aVar);
        b1Var.makeImmutable(objNewInstance);
        aVar.f8435c = objNewInstance;
        return iO;
    }

    static int q(b1 b1Var, int i10, byte[] bArr, int i11, int i12, w.d dVar, a aVar) throws InvalidProtocolBufferException {
        int iP = p(b1Var, bArr, i11, i12, aVar);
        dVar.add(aVar.f8435c);
        while (iP < i12) {
            int I = I(bArr, iP, aVar);
            if (i10 != aVar.f8433a) {
                break;
            }
            iP = p(b1Var, bArr, I, i12, aVar);
            dVar.add(aVar.f8435c);
        }
        return iP;
    }

    static int r(byte[] bArr, int i10, w.d dVar, a aVar) throws InvalidProtocolBufferException {
        f fVar = (f) dVar;
        int I = I(bArr, i10, aVar);
        int i11 = aVar.f8433a + I;
        while (I < i11) {
            I = L(bArr, I, aVar);
            fVar.addBoolean(aVar.f8434b != 0);
        }
        if (I == i11) {
            return I;
        }
        throw InvalidProtocolBufferException.truncatedMessage();
    }

    static int s(byte[] bArr, int i10, w.d dVar, a aVar) throws InvalidProtocolBufferException {
        l lVar = (l) dVar;
        int I = I(bArr, i10, aVar);
        int i11 = aVar.f8433a + I;
        while (I < i11) {
            lVar.addDouble(e(bArr, I));
            I += 8;
        }
        if (I == i11) {
            return I;
        }
        throw InvalidProtocolBufferException.truncatedMessage();
    }

    static int t(byte[] bArr, int i10, w.d dVar, a aVar) throws InvalidProtocolBufferException {
        v vVar = (v) dVar;
        int I = I(bArr, i10, aVar);
        int i11 = aVar.f8433a + I;
        while (I < i11) {
            vVar.addInt(h(bArr, I));
            I += 4;
        }
        if (I == i11) {
            return I;
        }
        throw InvalidProtocolBufferException.truncatedMessage();
    }

    static int u(byte[] bArr, int i10, w.d dVar, a aVar) throws InvalidProtocolBufferException {
        f0 f0Var = (f0) dVar;
        int I = I(bArr, i10, aVar);
        int i11 = aVar.f8433a + I;
        while (I < i11) {
            f0Var.addLong(j(bArr, I));
            I += 8;
        }
        if (I == i11) {
            return I;
        }
        throw InvalidProtocolBufferException.truncatedMessage();
    }

    static int v(byte[] bArr, int i10, w.d dVar, a aVar) throws InvalidProtocolBufferException {
        t tVar = (t) dVar;
        int I = I(bArr, i10, aVar);
        int i11 = aVar.f8433a + I;
        while (I < i11) {
            tVar.addFloat(l(bArr, I));
            I += 4;
        }
        if (I == i11) {
            return I;
        }
        throw InvalidProtocolBufferException.truncatedMessage();
    }

    static int w(byte[] bArr, int i10, w.d dVar, a aVar) throws InvalidProtocolBufferException {
        v vVar = (v) dVar;
        int I = I(bArr, i10, aVar);
        int i11 = aVar.f8433a + I;
        while (I < i11) {
            I = I(bArr, I, aVar);
            vVar.addInt(i.c(aVar.f8433a));
        }
        if (I == i11) {
            return I;
        }
        throw InvalidProtocolBufferException.truncatedMessage();
    }

    static int x(byte[] bArr, int i10, w.d dVar, a aVar) throws InvalidProtocolBufferException {
        f0 f0Var = (f0) dVar;
        int I = I(bArr, i10, aVar);
        int i11 = aVar.f8433a + I;
        while (I < i11) {
            I = L(bArr, I, aVar);
            f0Var.addLong(i.d(aVar.f8434b));
        }
        if (I == i11) {
            return I;
        }
        throw InvalidProtocolBufferException.truncatedMessage();
    }

    static int y(byte[] bArr, int i10, w.d dVar, a aVar) throws InvalidProtocolBufferException {
        v vVar = (v) dVar;
        int I = I(bArr, i10, aVar);
        int i11 = aVar.f8433a + I;
        while (I < i11) {
            I = I(bArr, I, aVar);
            vVar.addInt(aVar.f8433a);
        }
        if (I == i11) {
            return I;
        }
        throw InvalidProtocolBufferException.truncatedMessage();
    }

    static int z(byte[] bArr, int i10, w.d dVar, a aVar) throws InvalidProtocolBufferException {
        f0 f0Var = (f0) dVar;
        int I = I(bArr, i10, aVar);
        int i11 = aVar.f8433a + I;
        while (I < i11) {
            I = L(bArr, I, aVar);
            f0Var.addLong(aVar.f8434b);
        }
        if (I == i11) {
            return I;
        }
        throw InvalidProtocolBufferException.truncatedMessage();
    }
}

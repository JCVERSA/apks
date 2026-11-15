package defpackage;

import com.google.android.gms.internal.play_billing.zzfp;
import com.google.android.gms.internal.play_billing.zzhb;

public abstract class qph {
    public static volatile int a = 100;

    public static int a(byte[] bArr, int i, qoh qohVar) throws zzhb {
        int i2 = i(bArr, i, qohVar);
        int i3 = qohVar.a;
        if (i3 < 0) {
            throw new zzhb("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
        }
        if (i3 > bArr.length - i2) {
            throw new zzhb("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
        }
        if (i3 == 0) {
            qohVar.c = zzfp.zza;
            return i2;
        }
        qohVar.c = zzfp.zzk(bArr, i2, i3);
        return i2 + i3;
    }

    public static int b(byte[] bArr, int i) {
        int i2 = bArr[i] & 255;
        int i3 = bArr[i + 1] & 255;
        int i4 = bArr[i + 2] & 255;
        return ((bArr[i + 3] & 255) << 24) | (i3 << 8) | i2 | (i4 << 16);
    }

    public static int c(u1j u1jVar, byte[] bArr, int i, int i2, int i3, qoh qohVar) throws zzhb {
        Object objZze = u1jVar.zze();
        int iM = m(objZze, u1jVar, bArr, i, i2, i3, qohVar);
        u1jVar.a(objZze);
        qohVar.c = objZze;
        return iM;
    }

    public static int d(u1j u1jVar, byte[] bArr, int i, int i2, qoh qohVar) throws zzhb {
        Object objZze = u1jVar.zze();
        int iN = n(objZze, u1jVar, bArr, i, i2, qohVar);
        u1jVar.a(objZze);
        qohVar.c = objZze;
        return iN;
    }

    public static int e(u1j u1jVar, int i, byte[] bArr, int i2, int i3, npi npiVar, qoh qohVar) throws zzhb {
        int iD = d(u1jVar, bArr, i2, i3, qohVar);
        npiVar.add(qohVar.c);
        while (iD < i3) {
            int i4 = i(bArr, iD, qohVar);
            if (i != qohVar.a) {
                break;
            }
            iD = d(u1jVar, bArr, i4, i3, qohVar);
            npiVar.add(qohVar.c);
        }
        return iD;
    }

    public static int f(byte[] bArr, int i, npi npiVar, qoh qohVar) throws zzhb {
        mmi mmiVar = (mmi) npiVar;
        int i2 = i(bArr, i, qohVar);
        int i3 = qohVar.a;
        if (i3 < 0) {
            throw new zzhb("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
        }
        if (i3 > bArr.length - i2) {
            throw new zzhb("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
        }
        int i4 = i3 + i2;
        while (i2 < i4) {
            i2 = i(bArr, i2, qohVar);
            mmiVar.zzh(qohVar.a);
        }
        if (i2 == i4) {
            return i2;
        }
        throw new zzhb("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
    }

    public static int g(byte[] bArr, int i, qoh qohVar) throws zzhb {
        int i2;
        int i3 = i(bArr, i, qohVar);
        int i4 = qohVar.a;
        if (i4 < 0) {
            throw new zzhb("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
        }
        if (i4 == 0) {
            qohVar.c = "";
            return i3;
        }
        int i5 = l4j.a;
        int length = bArr.length;
        if ((((length - i3) - i4) | i3 | i4) < 0) {
            throw new ArrayIndexOutOfBoundsException(String.format("buffer length=%d, index=%d, size=%d", Integer.valueOf(length), Integer.valueOf(i3), Integer.valueOf(i4)));
        }
        int i6 = i3 + i4;
        char[] cArr = new char[i4];
        int i7 = 0;
        while (i3 < i6) {
            byte b = bArr[i3];
            if (!a4j.d(b)) {
                break;
            }
            i3++;
            cArr[i7] = (char) b;
            i7++;
        }
        int i8 = i7;
        while (i3 < i6) {
            int i9 = i3 + 1;
            byte b2 = bArr[i3];
            if (a4j.d(b2)) {
                cArr[i8] = (char) b2;
                i8++;
                i3 = i9;
                while (i3 < i6) {
                    byte b3 = bArr[i3];
                    if (!a4j.d(b3)) {
                        break;
                    }
                    i3++;
                    cArr[i8] = (char) b3;
                    i8++;
                }
            } else {
                if (b2 < -32) {
                    if (i9 >= i6) {
                        throw new zzhb("Protocol message had invalid UTF-8.");
                    }
                    i2 = i8 + 1;
                    i3 += 2;
                    a4j.c(b2, bArr[i9], cArr, i8);
                } else if (b2 < -16) {
                    if (i9 >= i6 - 1) {
                        throw new zzhb("Protocol message had invalid UTF-8.");
                    }
                    i2 = i8 + 1;
                    int i10 = i3 + 2;
                    i3 += 3;
                    a4j.b(b2, bArr[i9], bArr[i10], cArr, i8);
                } else {
                    if (i9 >= i6 - 2) {
                        throw new zzhb("Protocol message had invalid UTF-8.");
                    }
                    byte b4 = bArr[i9];
                    int i11 = i3 + 3;
                    byte b5 = bArr[i3 + 2];
                    i3 += 4;
                    a4j.a(b2, b4, b5, bArr[i11], cArr, i8);
                    i8 += 2;
                }
                i8 = i2;
            }
        }
        qohVar.c = new String(cArr, 0, i8);
        return i6;
    }

    public static int h(int i, byte[] bArr, int i2, int i3, i3j i3jVar, qoh qohVar) throws zzhb {
        if ((i >>> 3) == 0) {
            throw new zzhb("Protocol message contained an invalid tag (zero).");
        }
        int i4 = i & 7;
        if (i4 == 0) {
            int iL = l(bArr, i2, qohVar);
            i3jVar.j(i, Long.valueOf(qohVar.b));
            return iL;
        }
        if (i4 == 1) {
            i3jVar.j(i, Long.valueOf(p(bArr, i2)));
            return i2 + 8;
        }
        if (i4 == 2) {
            int i5 = i(bArr, i2, qohVar);
            int i6 = qohVar.a;
            if (i6 < 0) {
                throw new zzhb("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
            }
            if (i6 > bArr.length - i5) {
                throw new zzhb("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
            }
            if (i6 == 0) {
                i3jVar.j(i, zzfp.zza);
            } else {
                i3jVar.j(i, zzfp.zzk(bArr, i5, i6));
            }
            return i5 + i6;
        }
        if (i4 != 3) {
            if (i4 != 5) {
                throw new zzhb("Protocol message contained an invalid tag (zero).");
            }
            i3jVar.j(i, Integer.valueOf(b(bArr, i2)));
            return i2 + 4;
        }
        int i7 = (i & (-8)) | 4;
        i3j i3jVarF = i3j.f();
        int i8 = qohVar.e + 1;
        qohVar.e = i8;
        q(i8);
        int i9 = 0;
        while (i2 < i3) {
            int i10 = i(bArr, i2, qohVar);
            i9 = qohVar.a;
            if (i9 == i7) {
                i2 = i10;
                break;
            }
            i2 = h(i9, bArr, i10, i3, i3jVarF, qohVar);
        }
        qohVar.e--;
        if (i2 > i3 || i9 != i7) {
            throw new zzhb("Failed to parse the message.");
        }
        i3jVar.j(i, i3jVarF);
        return i2;
    }

    public static int i(byte[] bArr, int i, qoh qohVar) {
        int i2 = i + 1;
        byte b = bArr[i];
        if (b < 0) {
            return j(b, bArr, i2, qohVar);
        }
        qohVar.a = b;
        return i2;
    }

    public static int j(int i, byte[] bArr, int i2, qoh qohVar) {
        byte b = bArr[i2];
        int i3 = i2 + 1;
        int i4 = i & 127;
        if (b >= 0) {
            qohVar.a = i4 | (b << 7);
            return i3;
        }
        int i5 = i4 | ((b & 127) << 7);
        int i6 = i2 + 2;
        byte b2 = bArr[i3];
        if (b2 >= 0) {
            qohVar.a = i5 | (b2 << 14);
            return i6;
        }
        int i7 = i5 | ((b2 & 127) << 14);
        int i8 = i2 + 3;
        byte b3 = bArr[i6];
        if (b3 >= 0) {
            qohVar.a = i7 | (b3 << 21);
            return i8;
        }
        int i9 = i7 | ((b3 & 127) << 21);
        int i10 = i2 + 4;
        byte b4 = bArr[i8];
        if (b4 >= 0) {
            qohVar.a = i9 | (b4 << 28);
            return i10;
        }
        int i11 = i9 | ((b4 & 127) << 28);
        while (true) {
            int i12 = i10 + 1;
            if (bArr[i10] >= 0) {
                qohVar.a = i11;
                return i12;
            }
            i10 = i12;
        }
    }

    public static int k(int i, byte[] bArr, int i2, int i3, npi npiVar, qoh qohVar) {
        mmi mmiVar = (mmi) npiVar;
        int i4 = i(bArr, i2, qohVar);
        mmiVar.zzh(qohVar.a);
        while (i4 < i3) {
            int i5 = i(bArr, i4, qohVar);
            if (i != qohVar.a) {
                break;
            }
            i4 = i(bArr, i5, qohVar);
            mmiVar.zzh(qohVar.a);
        }
        return i4;
    }

    public static int l(byte[] bArr, int i, qoh qohVar) {
        long j = bArr[i];
        int i2 = i + 1;
        if (j >= 0) {
            qohVar.b = j;
            return i2;
        }
        int i3 = i + 2;
        byte b = bArr[i2];
        long j2 = (j & 127) | (((long) (b & 127)) << 7);
        int i4 = 7;
        while (b < 0) {
            int i5 = i3 + 1;
            byte b2 = bArr[i3];
            i4 += 7;
            j2 |= ((long) (b2 & 127)) << i4;
            b = b2;
            i3 = i5;
        }
        qohVar.b = j2;
        return i3;
    }

    public static int m(Object obj, u1j u1jVar, byte[] bArr, int i, int i2, int i3, qoh qohVar) throws zzhb {
        q0j q0jVar = (q0j) u1jVar;
        int i4 = qohVar.e + 1;
        qohVar.e = i4;
        q(i4);
        int iW = q0jVar.w(obj, bArr, i, i2, i3, qohVar);
        qohVar.e--;
        qohVar.c = obj;
        return iW;
    }

    public static int n(Object obj, u1j u1jVar, byte[] bArr, int i, int i2, qoh qohVar) throws zzhb {
        int iJ = i + 1;
        int i3 = bArr[i];
        if (i3 < 0) {
            iJ = j(i3, bArr, iJ, qohVar);
            i3 = qohVar.a;
        }
        int i4 = iJ;
        if (i3 < 0 || i3 > i2 - i4) {
            throw new zzhb("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
        }
        int i5 = qohVar.e + 1;
        qohVar.e = i5;
        q(i5);
        int i6 = i3 + i4;
        u1jVar.c(obj, bArr, i4, i6, qohVar);
        qohVar.e--;
        qohVar.c = obj;
        return i6;
    }

    public static int o(int i, byte[] bArr, int i2, int i3, qoh qohVar) throws zzhb {
        if ((i >>> 3) == 0) {
            throw new zzhb("Protocol message contained an invalid tag (zero).");
        }
        int i4 = i & 7;
        if (i4 == 0) {
            return l(bArr, i2, qohVar);
        }
        if (i4 == 1) {
            return i2 + 8;
        }
        if (i4 == 2) {
            return i(bArr, i2, qohVar) + qohVar.a;
        }
        if (i4 != 3) {
            if (i4 == 5) {
                return i2 + 4;
            }
            throw new zzhb("Protocol message contained an invalid tag (zero).");
        }
        int i5 = (i & (-8)) | 4;
        int i6 = qohVar.e + 1;
        qohVar.e = i6;
        q(i6);
        int i7 = 0;
        while (i2 < i3) {
            i2 = i(bArr, i2, qohVar);
            i7 = qohVar.a;
            if (i7 == i5) {
                break;
            }
            i2 = o(i7, bArr, i2, i3, qohVar);
        }
        qohVar.e--;
        if (i2 > i3 || i7 != i5) {
            throw new zzhb("Failed to parse the message.");
        }
        return i2;
    }

    public static long p(byte[] bArr, int i) {
        return (((long) bArr[i]) & 255) | ((((long) bArr[i + 1]) & 255) << 8) | ((((long) bArr[i + 2]) & 255) << 16) | ((((long) bArr[i + 3]) & 255) << 24) | ((((long) bArr[i + 4]) & 255) << 32) | ((((long) bArr[i + 5]) & 255) << 40) | ((((long) bArr[i + 6]) & 255) << 48) | ((((long) bArr[i + 7]) & 255) << 56);
    }

    public static void q(int i) throws zzhb {
        if (i >= a) {
            throw new zzhb("Protocol message had too many levels of nesting.  May be malicious.  Use setRecursionLimit() to increase the recursion depth limit.");
        }
    }
}

package defpackage;

import com.google.android.gms.internal.ads.ka;
import com.google.android.gms.internal.ads.zzgwn;
import com.google.android.gms.internal.ads.zzgyk;

public abstract class nri {
    public static volatile int a = 100;

    public static int a(byte[] bArr, int i, mri mriVar) throws zzgyk {
        int iH = h(bArr, i, mriVar);
        int i2 = mriVar.a;
        if (i2 < 0) {
            throw new zzgyk("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
        }
        if (i2 > bArr.length - iH) {
            throw new zzgyk("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
        }
        if (i2 == 0) {
            mriVar.c = zzgwn.zzb;
            return iH;
        }
        mriVar.c = zzgwn.zzv(bArr, iH, i2);
        return iH + i2;
    }

    public static int b(byte[] bArr, int i) {
        int i2 = bArr[i] & 255;
        int i3 = bArr[i + 1] & 255;
        int i4 = bArr[i + 2] & 255;
        return ((bArr[i + 3] & 255) << 24) | (i3 << 8) | i2 | (i4 << 16);
    }

    public static int c(cui cuiVar, byte[] bArr, int i, int i2, int i3, mri mriVar) throws zzgyk {
        Object objZze = cuiVar.zze();
        int iL = l(objZze, cuiVar, bArr, i, i2, i3, mriVar);
        cuiVar.a(objZze);
        mriVar.c = objZze;
        return iL;
    }

    public static int d(cui cuiVar, byte[] bArr, int i, int i2, mri mriVar) throws zzgyk {
        Object objZze = cuiVar.zze();
        int iM = m(objZze, cuiVar, bArr, i, i2, mriVar);
        cuiVar.a(objZze);
        mriVar.c = objZze;
        return iM;
    }

    public static int e(cui cuiVar, int i, byte[] bArr, int i2, int i3, ysi ysiVar, mri mriVar) throws zzgyk {
        int iD = d(cuiVar, bArr, i2, i3, mriVar);
        ysiVar.add(mriVar.c);
        while (iD < i3) {
            int iH = h(bArr, iD, mriVar);
            if (i != mriVar.a) {
                break;
            }
            iD = d(cuiVar, bArr, iH, i3, mriVar);
            ysiVar.add(mriVar.c);
        }
        return iD;
    }

    public static int f(byte[] bArr, int i, ysi ysiVar, mri mriVar) throws zzgyk {
        osi osiVar = (osi) ysiVar;
        int iH = h(bArr, i, mriVar);
        int i2 = mriVar.a + iH;
        while (iH < i2) {
            iH = h(bArr, iH, mriVar);
            osiVar.zzi(mriVar.a);
        }
        if (iH == i2) {
            return iH;
        }
        throw new zzgyk("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
    }

    public static int g(int i, byte[] bArr, int i2, int i3, qui quiVar, mri mriVar) throws zzgyk {
        if ((i >>> 3) == 0) {
            throw new zzgyk("Protocol message contained an invalid tag (zero).");
        }
        int i4 = i & 7;
        if (i4 == 0) {
            int iK = k(bArr, i2, mriVar);
            quiVar.j(i, Long.valueOf(mriVar.b));
            return iK;
        }
        if (i4 == 1) {
            quiVar.j(i, Long.valueOf(n(bArr, i2)));
            return i2 + 8;
        }
        if (i4 == 2) {
            int iH = h(bArr, i2, mriVar);
            int i5 = mriVar.a;
            if (i5 < 0) {
                throw new zzgyk("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
            }
            if (i5 > bArr.length - iH) {
                throw new zzgyk("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
            }
            if (i5 == 0) {
                quiVar.j(i, zzgwn.zzb);
            } else {
                quiVar.j(i, zzgwn.zzv(bArr, iH, i5));
            }
            return iH + i5;
        }
        if (i4 != 3) {
            if (i4 != 5) {
                throw new zzgyk("Protocol message contained an invalid tag (zero).");
            }
            quiVar.j(i, Integer.valueOf(b(bArr, i2)));
            return i2 + 4;
        }
        int i6 = (i & (-8)) | 4;
        qui quiVarF = qui.f();
        int i7 = mriVar.e + 1;
        mriVar.e = i7;
        o(i7);
        int i8 = 0;
        while (i2 < i3) {
            int iH2 = h(bArr, i2, mriVar);
            i8 = mriVar.a;
            if (i8 == i6) {
                i2 = iH2;
                break;
            }
            i2 = g(i8, bArr, iH2, i3, quiVarF, mriVar);
        }
        mriVar.e--;
        if (i2 > i3 || i8 != i6) {
            throw new zzgyk("Failed to parse the message.");
        }
        quiVar.j(i, quiVarF);
        return i2;
    }

    public static int h(byte[] bArr, int i, mri mriVar) {
        int i2 = i + 1;
        byte b = bArr[i];
        if (b < 0) {
            return i(b, bArr, i2, mriVar);
        }
        mriVar.a = b;
        return i2;
    }

    public static int i(int i, byte[] bArr, int i2, mri mriVar) {
        byte b = bArr[i2];
        int i3 = i2 + 1;
        int i4 = i & 127;
        if (b >= 0) {
            mriVar.a = i4 | (b << 7);
            return i3;
        }
        int i5 = i4 | ((b & 127) << 7);
        int i6 = i2 + 2;
        byte b2 = bArr[i3];
        if (b2 >= 0) {
            mriVar.a = i5 | (b2 << 14);
            return i6;
        }
        int i7 = i5 | ((b2 & 127) << 14);
        int i8 = i2 + 3;
        byte b3 = bArr[i6];
        if (b3 >= 0) {
            mriVar.a = i7 | (b3 << 21);
            return i8;
        }
        int i9 = i7 | ((b3 & 127) << 21);
        int i10 = i2 + 4;
        byte b4 = bArr[i8];
        if (b4 >= 0) {
            mriVar.a = i9 | (b4 << 28);
            return i10;
        }
        int i11 = i9 | ((b4 & 127) << 28);
        while (true) {
            int i12 = i10 + 1;
            if (bArr[i10] >= 0) {
                mriVar.a = i11;
                return i12;
            }
            i10 = i12;
        }
    }

    public static int j(int i, byte[] bArr, int i2, int i3, ysi ysiVar, mri mriVar) {
        osi osiVar = (osi) ysiVar;
        int iH = h(bArr, i2, mriVar);
        osiVar.zzi(mriVar.a);
        while (iH < i3) {
            int iH2 = h(bArr, iH, mriVar);
            if (i != mriVar.a) {
                break;
            }
            iH = h(bArr, iH2, mriVar);
            osiVar.zzi(mriVar.a);
        }
        return iH;
    }

    public static int k(byte[] bArr, int i, mri mriVar) {
        long j = bArr[i];
        int i2 = i + 1;
        if (j >= 0) {
            mriVar.b = j;
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
        mriVar.b = j2;
        return i3;
    }

    public static int l(Object obj, cui cuiVar, byte[] bArr, int i, int i2, int i3, mri mriVar) throws zzgyk {
        ka kaVar = (ka) cuiVar;
        int i4 = mriVar.e + 1;
        mriVar.e = i4;
        o(i4);
        int iB = kaVar.B(obj, bArr, i, i2, i3, mriVar);
        mriVar.e--;
        mriVar.c = obj;
        return iB;
    }

    public static int m(Object obj, cui cuiVar, byte[] bArr, int i, int i2, mri mriVar) throws zzgyk {
        int i3 = i + 1;
        int i4 = bArr[i];
        if (i4 < 0) {
            i3 = i(i4, bArr, i3, mriVar);
            i4 = mriVar.a;
        }
        int i5 = i3;
        if (i4 < 0 || i4 > i2 - i5) {
            throw new zzgyk("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
        }
        int i6 = mriVar.e + 1;
        mriVar.e = i6;
        o(i6);
        int i7 = i4 + i5;
        cuiVar.d(obj, bArr, i5, i7, mriVar);
        mriVar.e--;
        mriVar.c = obj;
        return i7;
    }

    public static long n(byte[] bArr, int i) {
        return (((long) bArr[i]) & 255) | ((((long) bArr[i + 1]) & 255) << 8) | ((((long) bArr[i + 2]) & 255) << 16) | ((((long) bArr[i + 3]) & 255) << 24) | ((((long) bArr[i + 4]) & 255) << 32) | ((((long) bArr[i + 5]) & 255) << 40) | ((((long) bArr[i + 6]) & 255) << 48) | ((((long) bArr[i + 7]) & 255) << 56);
    }

    public static void o(int i) throws zzgyk {
        if (i >= a) {
            throw new zzgyk("Protocol message had too many levels of nesting.  May be malicious.  Use setRecursionLimit() to increase the recursion depth limit.");
        }
    }
}

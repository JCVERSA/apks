package defpackage;

import androidx.media3.muxer.MuxerUtil;
import kotlin.KotlinNothingValueException;
import kotlin.text.a;

public abstract class hfb {
    public static final byte a(String str) {
        y45.j(str, "<this>");
        zdb zdbVarB = b(str);
        if (zdbVarB != null) {
            return zdbVarB.g();
        }
        f1a.q(str);
        throw new KotlinNothingValueException();
    }

    public static final zdb b(String str) {
        y45.j(str, "<this>");
        return c(str, 10);
    }

    public static final zdb c(String str, int i) {
        y45.j(str, "<this>");
        keb kebVarF = f(str, i);
        if (kebVarF == null) {
            return null;
        }
        int iG = kebVarF.g();
        if (Integer.compareUnsigned(iG, keb.b(255)) > 0) {
            return null;
        }
        return zdb.a(zdb.b((byte) iG));
    }

    public static final int d(String str) {
        y45.j(str, "<this>");
        keb kebVarE = e(str);
        if (kebVarE != null) {
            return kebVarE.g();
        }
        f1a.q(str);
        throw new KotlinNothingValueException();
    }

    public static final keb e(String str) {
        y45.j(str, "<this>");
        return f(str, 10);
    }

    public static final keb f(String str, int i) {
        int i2;
        y45.j(str, "<this>");
        a.a(i);
        int length = str.length();
        if (length == 0) {
            return null;
        }
        int i3 = 0;
        char cCharAt = str.charAt(0);
        if (y45.l(cCharAt, 48) < 0) {
            i2 = 1;
            if (length == 1 || cCharAt != '+') {
                return null;
            }
        } else {
            i2 = 0;
        }
        int iB = keb.b(i);
        int iDivideUnsigned = 119304647;
        while (i2 < length) {
            int iB2 = a.b(str.charAt(i2), i);
            if (iB2 < 0) {
                return null;
            }
            if (Integer.compareUnsigned(i3, iDivideUnsigned) > 0) {
                if (iDivideUnsigned == 119304647) {
                    iDivideUnsigned = Integer.divideUnsigned(-1, iB);
                    if (Integer.compareUnsigned(i3, iDivideUnsigned) > 0) {
                    }
                }
                return null;
            }
            int iB3 = keb.b(i3 * iB);
            int iB4 = keb.b(keb.b(iB2) + iB3);
            if (Integer.compareUnsigned(iB4, iB3) < 0) {
                return null;
            }
            i2++;
            i3 = iB4;
        }
        return keb.a(i3);
    }

    public static final long g(String str) {
        y45.j(str, "<this>");
        qeb qebVarH = h(str);
        if (qebVarH != null) {
            return qebVarH.g();
        }
        f1a.q(str);
        throw new KotlinNothingValueException();
    }

    public static final qeb h(String str) {
        y45.j(str, "<this>");
        return i(str, 10);
    }

    public static final qeb i(String str, int i) {
        y45.j(str, "<this>");
        a.a(i);
        int length = str.length();
        if (length == 0) {
            return null;
        }
        int i2 = 0;
        char cCharAt = str.charAt(0);
        if (y45.l(cCharAt, 48) < 0) {
            i2 = 1;
            if (length == 1 || cCharAt != '+') {
                return null;
            }
        }
        long jB = qeb.b(i);
        long j = 0;
        long jDivideUnsigned = 512409557603043100L;
        while (i2 < length) {
            int iB = a.b(str.charAt(i2), i);
            if (iB < 0) {
                return null;
            }
            if (Long.compareUnsigned(j, jDivideUnsigned) > 0) {
                if (jDivideUnsigned == 512409557603043100L) {
                    jDivideUnsigned = Long.divideUnsigned(-1L, jB);
                    if (Long.compareUnsigned(j, jDivideUnsigned) > 0) {
                    }
                }
                return null;
            }
            long jB2 = qeb.b(j * jB);
            long jB3 = qeb.b(qeb.b(((long) keb.b(iB)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) + jB2);
            if (Long.compareUnsigned(jB3, jB2) < 0) {
                return null;
            }
            i2++;
            j = jB3;
        }
        return qeb.a(j);
    }

    public static final short j(String str) {
        y45.j(str, "<this>");
        bfb bfbVarK = k(str);
        if (bfbVarK != null) {
            return bfbVarK.g();
        }
        f1a.q(str);
        throw new KotlinNothingValueException();
    }

    public static final bfb k(String str) {
        y45.j(str, "<this>");
        return l(str, 10);
    }

    public static final bfb l(String str, int i) {
        y45.j(str, "<this>");
        keb kebVarF = f(str, i);
        if (kebVarF == null) {
            return null;
        }
        int iG = kebVarF.g();
        if (Integer.compareUnsigned(iG, keb.b(65535)) > 0) {
            return null;
        }
        return bfb.a(bfb.b((short) iG));
    }
}

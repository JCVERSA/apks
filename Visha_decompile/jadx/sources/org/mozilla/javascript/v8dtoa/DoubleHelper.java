package org.mozilla.javascript.v8dtoa;

import androidx.media3.muxer.MuxerUtil;
import defpackage.fw2;

public class DoubleHelper {
    static final boolean $assertionsDisabled = false;
    private static final int kDenormalExponent = -1074;
    private static final int kExponentBias = 1075;
    static final long kExponentMask = 9218868437227405312L;
    static final long kHiddenBit = 4503599627370496L;
    static final long kSignMask = Long.MIN_VALUE;
    static final long kSignificandMask = 4503599627370495L;
    private static final int kSignificandSize = 52;

    public static fw2 asDiyFp(long j) {
        return new fw2(significand(j), exponent(j));
    }

    public static fw2 asNormalizedDiyFp(long j) {
        long jSignificand = significand(j);
        int iExponent = exponent(j);
        while ((kHiddenBit & jSignificand) == 0) {
            jSignificand <<= 1;
            iExponent--;
        }
        return new fw2(jSignificand << 11, iExponent - 11);
    }

    public static int exponent(long j) {
        return isDenormal(j) ? kDenormalExponent : ((int) (((j & kExponentMask) >>> 52) & MuxerUtil.UNSIGNED_INT_MAX_VALUE)) - 1075;
    }

    public static boolean isDenormal(long j) {
        return (j & kExponentMask) == 0;
    }

    public static boolean isInfinite(long j) {
        return (j & kExponentMask) == kExponentMask && (j & kSignificandMask) == 0;
    }

    public static boolean isNan(long j) {
        return (j & kExponentMask) == kExponentMask && (j & kSignificandMask) != 0;
    }

    public static boolean isSpecial(long j) {
        return (j & kExponentMask) == kExponentMask;
    }

    public static void normalizedBoundaries(long j, fw2 fw2Var, fw2 fw2Var2) {
        fw2 fw2VarAsDiyFp = asDiyFp(j);
        boolean z = fw2VarAsDiyFp.b() == kHiddenBit;
        fw2Var2.g((fw2VarAsDiyFp.b() << 1) + 1);
        fw2Var2.f(fw2VarAsDiyFp.a() - 1);
        fw2Var2.e();
        if (!z || fw2VarAsDiyFp.a() == kDenormalExponent) {
            fw2Var.g((fw2VarAsDiyFp.b() << 1) - 1);
            fw2Var.f(fw2VarAsDiyFp.a() - 1);
        } else {
            fw2Var.g((fw2VarAsDiyFp.b() << 2) - 1);
            fw2Var.f(fw2VarAsDiyFp.a() - 2);
        }
        fw2Var.g(fw2Var.b() << (fw2Var.a() - fw2Var2.a()));
        fw2Var.f(fw2Var2.a());
    }

    public static int sign(long j) {
        return (j & Long.MIN_VALUE) == 0 ? 1 : -1;
    }

    public static long significand(long j) {
        long j2 = kSignificandMask & j;
        return !isDenormal(j) ? j2 + kHiddenBit : j2;
    }
}

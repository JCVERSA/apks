package org.mozilla.javascript.v8dtoa;

import androidx.media3.muxer.MuxerUtil;
import defpackage.fw2;

public class FastDtoa {
    static final boolean $assertionsDisabled = false;
    static final int kFastDtoaMaximalLength = 17;
    static final int kTen4 = 10000;
    static final int kTen5 = 100000;
    static final int kTen6 = 1000000;
    static final int kTen7 = 10000000;
    static final int kTen8 = 100000000;
    static final int kTen9 = 1000000000;
    static final int maximal_target_exponent = -32;
    static final int minimal_target_exponent = -60;

    public static long biggestPowerTen(int i, int i2) {
        int i3;
        int i4 = 1;
        int i5 = 0;
        switch (i2) {
            case 30:
            case 31:
            case 32:
                i3 = 1000000000;
                if (1000000000 <= i) {
                    i4 = 9;
                }
                i5 = i4;
                i4 = i3;
            case 27:
            case 28:
            case 29:
                i3 = kTen8;
                if (kTen8 <= i) {
                    i4 = 8;
                }
                i5 = i4;
                i4 = i3;
            case 24:
            case 25:
            case 26:
                i3 = 10000000;
                if (10000000 <= i) {
                    i4 = 7;
                }
                i5 = i4;
                i4 = i3;
            case 20:
            case 21:
            case 22:
            case 23:
                i3 = 1000000;
                if (1000000 <= i) {
                    i4 = 6;
                }
                i5 = i4;
                i4 = i3;
            case 17:
            case 18:
            case 19:
                i3 = 100000;
                if (100000 <= i) {
                    i4 = 5;
                }
                i5 = i4;
                i4 = i3;
            case 14:
            case 15:
            case 16:
                i3 = 10000;
                if (10000 <= i) {
                    i4 = 4;
                }
                i5 = i4;
                i4 = i3;
            case 10:
            case 11:
            case 12:
            case 13:
                i3 = 1000;
                if (1000 <= i) {
                    i4 = 3;
                }
                i5 = i4;
                i4 = i3;
            case 7:
            case 8:
            case 9:
                i3 = 100;
                if (100 <= i) {
                    i4 = 2;
                }
                i5 = i4;
                i4 = i3;
            case 4:
            case 5:
            case 6:
                i3 = 10;
                if (10 <= i) {
                    i5 = i4;
                    i4 = i3;
                    break;
                }
            case 1:
            case 2:
            case 3:
                if (1 > i) {
                }
            case 0:
                i5 = -1;
                i4 = 0;
                break;
            default:
                i4 = 0;
                break;
        }
        return (((long) i4) << 32) | (((long) i5) & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
    }

    public static boolean digitGen(fw2 fw2Var, fw2 fw2Var2, fw2 fw2Var3, FastDtoaBuilder fastDtoaBuilder, int i) {
        long j = 1;
        fw2 fw2Var4 = new fw2(fw2Var.b() - 1, fw2Var.a());
        fw2 fw2Var5 = new fw2(fw2Var3.b() + 1, fw2Var3.a());
        fw2 fw2VarC = fw2.c(fw2Var5, fw2Var4);
        fw2 fw2Var6 = new fw2(1 << (-fw2Var2.a()), fw2Var2.a());
        int iB = (int) ((fw2Var5.b() >>> (-fw2Var6.a())) & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
        long jB = fw2Var5.b() & (fw2Var6.b() - 1);
        long jBiggestPowerTen = biggestPowerTen(iB, 64 - (-fw2Var6.a()));
        int i2 = (int) ((jBiggestPowerTen >>> 32) & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
        int i3 = ((int) (jBiggestPowerTen & MuxerUtil.UNSIGNED_INT_MAX_VALUE)) + 1;
        while (i3 > 0) {
            fastDtoaBuilder.append((char) ((iB / i2) + 48));
            iB %= i2;
            i3--;
            long j2 = (((long) iB) << (-fw2Var6.a())) + jB;
            if (j2 < fw2VarC.b()) {
                fastDtoaBuilder.point = (fastDtoaBuilder.end - i) + i3;
                return roundWeed(fastDtoaBuilder, fw2.c(fw2Var5, fw2Var2).b(), fw2VarC.b(), j2, ((long) i2) << (-fw2Var6.a()), 1L);
            }
            i2 /= 10;
        }
        do {
            long j3 = jB * 5;
            j *= 5;
            fw2VarC.g(fw2VarC.b() * 5);
            fw2VarC.f(fw2VarC.a() + 1);
            fw2Var6.g(fw2Var6.b() >>> 1);
            fw2Var6.f(fw2Var6.a() + 1);
            fastDtoaBuilder.append((char) (((int) ((j3 >>> (-fw2Var6.a())) & MuxerUtil.UNSIGNED_INT_MAX_VALUE)) + 48));
            jB = j3 & (fw2Var6.b() - 1);
            i3--;
        } while (jB >= fw2VarC.b());
        fastDtoaBuilder.point = (fastDtoaBuilder.end - i) + i3;
        return roundWeed(fastDtoaBuilder, fw2.c(fw2Var5, fw2Var2).b() * j, fw2VarC.b(), jB, fw2Var6.b(), j);
    }

    public static boolean dtoa(double d, FastDtoaBuilder fastDtoaBuilder) {
        return grisu3(d, fastDtoaBuilder);
    }

    public static boolean grisu3(double d, FastDtoaBuilder fastDtoaBuilder) {
        long jDoubleToLongBits = Double.doubleToLongBits(d);
        fw2 fw2VarAsNormalizedDiyFp = DoubleHelper.asNormalizedDiyFp(jDoubleToLongBits);
        fw2 fw2Var = new fw2();
        fw2 fw2Var2 = new fw2();
        DoubleHelper.normalizedBoundaries(jDoubleToLongBits, fw2Var, fw2Var2);
        fw2 fw2Var3 = new fw2();
        int cachedPower = CachedPowers.getCachedPower(fw2VarAsNormalizedDiyFp.a() + 64, minimal_target_exponent, maximal_target_exponent, fw2Var3);
        return digitGen(fw2.i(fw2Var, fw2Var3), fw2.i(fw2VarAsNormalizedDiyFp, fw2Var3), fw2.i(fw2Var2, fw2Var3), fastDtoaBuilder, cachedPower);
    }

    public static String numberToString(double d) {
        FastDtoaBuilder fastDtoaBuilder = new FastDtoaBuilder();
        if (numberToString(d, fastDtoaBuilder)) {
            return fastDtoaBuilder.format();
        }
        return null;
    }

    public static boolean roundWeed(FastDtoaBuilder fastDtoaBuilder, long j, long j2, long j3, long j4, long j5) {
        long j6 = j - j5;
        long j7 = j + j5;
        long j8 = j3;
        while (j8 < j6 && j2 - j8 >= j4) {
            long j9 = j8 + j4;
            if (j9 >= j6 && j6 - j8 < j9 - j6) {
                break;
            }
            fastDtoaBuilder.decreaseLast();
            j8 = j9;
        }
        if (j8 < j7 && j2 - j8 >= j4) {
            long j10 = j8 + j4;
            if (j10 < j7 || j7 - j8 > j10 - j7) {
                return false;
            }
        }
        return 2 * j5 <= j8 && j8 <= j2 - (4 * j5);
    }

    private static boolean uint64_lte(long j, long j2) {
        if (j == j2) {
            return true;
        }
        return (((j > 0L ? 1 : (j == 0L ? 0 : -1)) < 0) ^ ((j > j2 ? 1 : (j == j2 ? 0 : -1)) < 0)) ^ ((j2 > 0L ? 1 : (j2 == 0L ? 0 : -1)) < 0);
    }

    public static boolean numberToString(double d, FastDtoaBuilder fastDtoaBuilder) {
        fastDtoaBuilder.reset();
        if (d < 0.0d) {
            fastDtoaBuilder.append('-');
            d = -d;
        }
        return dtoa(d, fastDtoaBuilder);
    }
}

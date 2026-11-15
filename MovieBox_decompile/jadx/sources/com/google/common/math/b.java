package com.google.common.math;

import com.google.common.base.m;
import java.math.RoundingMode;

public abstract class b {

    private static final double f30060a = Math.log(2.0d);

    static final double[] f30061b = {1.0d, 2.0922789888E13d, 2.631308369336935E35d, 1.2413915592536073E61d, 1.2688693218588417E89d, 7.156945704626381E118d, 9.916779348709496E149d, 1.974506857221074E182d, 3.856204823625804E215d, 5.5502938327393044E249d, 4.7147236359920616E284d};

    static class a {

        static final int[] f30062a;

        static {
            int[] iArr = new int[RoundingMode.values().length];
            f30062a = iArr;
            try {
                iArr[RoundingMode.UNNECESSARY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f30062a[RoundingMode.FLOOR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f30062a[RoundingMode.CEILING.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f30062a[RoundingMode.DOWN.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f30062a[RoundingMode.UP.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f30062a[RoundingMode.HALF_EVEN.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f30062a[RoundingMode.HALF_UP.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f30062a[RoundingMode.HALF_DOWN.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    public static boolean a(double d10, double d11, double d12) {
        g.d("tolerance", d12);
        return Math.copySign(d10 - d11, 1.0d) <= d12 || d10 == d11 || (Double.isNaN(d10) && Double.isNaN(d11));
    }

    public static boolean b(double d10) {
        return c.c(d10) && (d10 == 0.0d || 52 - Long.numberOfTrailingZeros(c.b(d10)) <= Math.getExponent(d10));
    }

    public static boolean c(double d10) {
        if (d10 <= 0.0d || !c.c(d10)) {
            return false;
        }
        long jB = c.b(d10);
        return (jB & (jB - 1)) == 0;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:29:0x006a  */
    /* JADX WARN: Code duplicated, block: B:31:? A[RETURN, SYNTHETIC] */
    public static int d(double d10, RoundingMode roundingMode) {
        boolean zC;
        boolean z10 = false;
        m.e(d10 > 0.0d && c.c(d10), "x must be positive and finite");
        int exponent = Math.getExponent(d10);
        if (!c.d(d10)) {
            return d(d10 * 4.503599627370496E15d, roundingMode) - 52;
        }
        switch (a.f30062a[roundingMode.ordinal()]) {
            case 1:
                g.g(c(d10));
                if (z10) {
                    return exponent + 1;
                }
                return exponent;
            case 2:
                if (z10) {
                    return exponent + 1;
                }
                return exponent;
            case 3:
                z10 = !c(d10);
                if (z10) {
                    return exponent + 1;
                }
                return exponent;
            case 4:
                z10 = exponent < 0;
                zC = c(d10);
                z10 &= !zC;
                if (z10) {
                    return exponent + 1;
                }
                return exponent;
            case 5:
                z10 = exponent >= 0;
                zC = c(d10);
                z10 &= !zC;
                if (z10) {
                    return exponent + 1;
                }
                return exponent;
            case 6:
            case 7:
            case 8:
                double dE = c.e(d10);
                if (dE * dE > 2.0d) {
                    z10 = true;
                }
                if (z10) {
                    return exponent + 1;
                }
                return exponent;
            default:
                throw new AssertionError();
        }
    }

    static double e(double d10, RoundingMode roundingMode) {
        if (!c.c(d10)) {
            throw new ArithmeticException("input is infinite or NaN");
        }
        switch (a.f30062a[roundingMode.ordinal()]) {
            case 1:
                g.g(b(d10));
                return d10;
            case 2:
                return (d10 >= 0.0d || b(d10)) ? d10 : ((long) d10) - 1;
            case 3:
                return (d10 <= 0.0d || b(d10)) ? d10 : ((long) d10) + 1;
            case 4:
                return d10;
            case 5:
                if (b(d10)) {
                    return d10;
                }
                return ((long) d10) + ((long) (d10 > 0.0d ? 1 : -1));
            case 6:
                return Math.rint(d10);
            case 7:
                double dRint = Math.rint(d10);
                return Math.abs(d10 - dRint) == 0.5d ? d10 + Math.copySign(0.5d, d10) : dRint;
            case 8:
                double dRint2 = Math.rint(d10);
                return Math.abs(d10 - dRint2) == 0.5d ? d10 : dRint2;
            default:
                throw new AssertionError();
        }
    }

    public static long f(double d10, RoundingMode roundingMode) {
        double dE = e(d10, roundingMode);
        g.a(((-9.223372036854776E18d) - dE < 1.0d) & (dE < 9.223372036854776E18d), d10, roundingMode);
        return (long) dE;
    }
}

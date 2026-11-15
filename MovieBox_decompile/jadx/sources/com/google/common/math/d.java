package com.google.common.math;

import com.google.common.base.m;
import com.google.common.primitives.Ints;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.ogg.DefaultOggSeeker;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.math.RoundingMode;
import okhttp3.internal.http2.Http2Connection;

public abstract class d {

    static final byte[] f30063a = {9, 9, 9, 8, 8, 8, 7, 7, 7, 6, 6, 6, 6, 5, 5, 5, 4, 4, 4, 3, 3, 3, 3, 2, 2, 2, 1, 1, 1, 0, 0, 0, 0};

    static final int[] f30064b = {1, 10, 100, 1000, 10000, DefaultOggSeeker.MATCH_BYTE_RANGE, 1000000, 10000000, 100000000, Http2Connection.DEGRADED_PONG_TIMEOUT_NS};

    static final int[] f30065c = {3, 31, Sdk$SDKError.Reason.GENERATE_JSON_DATA_ERROR_VALUE, 3162, 31622, 316227, 3162277, 31622776, 316227766, Integer.MAX_VALUE};

    private static final int[] f30066d = {1, 1, 2, 6, 24, 120, 720, 5040, 40320, 362880, 3628800, 39916800, 479001600};

    static int[] f30067e = {Integer.MAX_VALUE, Integer.MAX_VALUE, 65536, 2345, 477, 193, 110, 75, 58, 49, 43, 39, 37, 35, 34, 34, 33};

    static class a {

        static final int[] f30068a;

        static {
            int[] iArr = new int[RoundingMode.values().length];
            f30068a = iArr;
            try {
                iArr[RoundingMode.UNNECESSARY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f30068a[RoundingMode.DOWN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f30068a[RoundingMode.FLOOR.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f30068a[RoundingMode.UP.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f30068a[RoundingMode.CEILING.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f30068a[RoundingMode.HALF_DOWN.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f30068a[RoundingMode.HALF_UP.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f30068a[RoundingMode.HALF_EVEN.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    public static int a(int i10, int i11) {
        long j10 = ((long) i10) + ((long) i11);
        int i12 = (int) j10;
        g.b(j10 == ((long) i12), "checkedAdd", i10, i11);
        return i12;
    }

    public static int b(int i10, int i11) {
        long j10 = ((long) i10) * ((long) i11);
        int i12 = (int) j10;
        g.b(j10 == ((long) i12), "checkedMultiply", i10, i11);
        return i12;
    }

    public static int c(int i10, int i11, RoundingMode roundingMode) {
        m.o(roundingMode);
        if (i11 == 0) {
            throw new ArithmeticException("/ by zero");
        }
        int i12 = i10 / i11;
        int i13 = i10 - (i11 * i12);
        if (i13 == 0) {
            return i12;
        }
        int i14 = ((i10 ^ i11) >> 31) | 1;
        switch (a.f30068a[roundingMode.ordinal()]) {
            case 1:
                g.g(i13 == 0);
                return i12;
            case 2:
                return i12;
            case 3:
                if (i14 >= 0) {
                    return i12;
                }
                break;
            case 4:
                break;
            case 5:
                if (i14 <= 0) {
                    return i12;
                }
                break;
            case 6:
            case 7:
            case 8:
                int iAbs = Math.abs(i13);
                int iAbs2 = iAbs - (Math.abs(i11) - iAbs);
                if (iAbs2 == 0) {
                    if (roundingMode != RoundingMode.HALF_UP) {
                        if (!((roundingMode == RoundingMode.HALF_EVEN) & ((i12 & 1) != 0))) {
                            return i12;
                        }
                    }
                } else if (iAbs2 <= 0) {
                    return i12;
                }
            default:
                throw new AssertionError();
        }
        return i12 + i14;
    }

    public static boolean d(int i10) {
        return (i10 > 0) & ((i10 & (i10 + (-1))) == 0);
    }

    static int e(int i10, int i11) {
        return (~(~(i10 - i11))) >>> 31;
    }

    public static int f(int i10, RoundingMode roundingMode) {
        g.f("x", i10);
        switch (a.f30068a[roundingMode.ordinal()]) {
            case 1:
                g.g(d(i10));
                break;
            case 2:
            case 3:
                break;
            case 4:
            case 5:
                return 32 - Integer.numberOfLeadingZeros(i10 - 1);
            case 6:
            case 7:
            case 8:
                int iNumberOfLeadingZeros = Integer.numberOfLeadingZeros(i10);
                return (31 - iNumberOfLeadingZeros) + e((-1257966797) >>> iNumberOfLeadingZeros, i10);
            default:
                throw new AssertionError();
        }
        return 31 - Integer.numberOfLeadingZeros(i10);
    }

    public static int g(int i10, int i11) {
        if (i11 > 0) {
            int i12 = i10 % i11;
            return i12 >= 0 ? i12 : i12 + i11;
        }
        throw new ArithmeticException("Modulus " + i11 + " must be > 0");
    }

    public static int h(int i10, int i11) {
        return Ints.n(((long) i10) + ((long) i11));
    }

    public static int i(int i10, int i11) {
        return Ints.n(((long) i10) * ((long) i11));
    }
}

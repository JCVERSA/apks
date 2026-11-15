package com.alibaba.fastjson.util;

import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.lang.reflect.Array;
import java.math.BigInteger;
import okhttp3.internal.connection.RealConnection;

public final class j {

    private static final int[][] f17644a;

    private static final int[][] f17645b;

    static {
        Class cls = Integer.TYPE;
        f17644a = (int[][]) Array.newInstance((Class<?>) cls, 326, 4);
        f17645b = (int[][]) Array.newInstance((Class<?>) cls, 291, 4);
        BigInteger bigInteger = BigInteger.ONE;
        BigInteger bigIntegerSubtract = bigInteger.shiftLeft(31).subtract(bigInteger);
        BigInteger bigIntegerSubtract2 = bigInteger.shiftLeft(31).subtract(bigInteger);
        int i10 = 0;
        while (i10 < 326) {
            BigInteger bigIntegerPow = BigInteger.valueOf(5L).pow(i10);
            int iBitLength = bigIntegerPow.bitLength();
            int i11 = i10 == 0 ? 1 : (int) (((((long) i10) * 23219280) + 9999999) / 10000000);
            if (i11 != iBitLength) {
                throw new IllegalStateException(iBitLength + " != " + i11);
            }
            if (i10 < f17644a.length) {
                for (int i12 = 0; i12 < 4; i12++) {
                    f17644a[i10][i12] = bigIntegerPow.shiftRight((iBitLength - 121) + ((3 - i12) * 31)).and(bigIntegerSubtract).intValue();
                }
            }
            if (i10 < f17645b.length) {
                int i13 = iBitLength + Sdk$SDKError.Reason.TPAT_ERROR_VALUE;
                BigInteger bigInteger2 = BigInteger.ONE;
                BigInteger bigIntegerAdd = bigInteger2.shiftLeft(i13).divide(bigIntegerPow).add(bigInteger2);
                for (int i14 = 0; i14 < 4; i14++) {
                    if (i14 == 0) {
                        f17645b[i10][i14] = bigIntegerAdd.shiftRight((3 - i14) * 31).intValue();
                    } else {
                        f17645b[i10][i14] = bigIntegerAdd.shiftRight((3 - i14) * 31).and(bigIntegerSubtract2).intValue();
                    }
                }
            }
            i10++;
        }
    }

    public static int a(double d10, char[] cArr, int i10) {
        int i11;
        boolean z10;
        int i12;
        long j10;
        boolean z11;
        boolean z12;
        long j11;
        long j12;
        long j13;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        boolean z13;
        boolean z14;
        int i18;
        int i19;
        int i20;
        int i21;
        if (Double.isNaN(d10)) {
            cArr[i10] = 'N';
            cArr[i10 + 1] = 'a';
            i21 = i10 + 3;
            cArr[i10 + 2] = 'N';
        } else {
            if (d10 == Double.POSITIVE_INFINITY) {
                cArr[i10] = 'I';
                cArr[i10 + 1] = 'n';
                cArr[i10 + 2] = 'f';
                cArr[i10 + 3] = 'i';
                cArr[i10 + 4] = 'n';
                cArr[i10 + 5] = 'i';
                cArr[i10 + 6] = 't';
                cArr[i10 + 7] = 'y';
                return (i10 + 8) - i10;
            }
            if (d10 == Double.NEGATIVE_INFINITY) {
                cArr[i10] = '-';
                cArr[i10 + 1] = 'I';
                cArr[i10 + 2] = 'n';
                cArr[i10 + 3] = 'f';
                cArr[i10 + 4] = 'i';
                cArr[i10 + 5] = 'n';
                cArr[i10 + 6] = 'i';
                cArr[i10 + 7] = 't';
                i21 = i10 + 9;
                cArr[i10 + 8] = 'y';
            } else {
                long jDoubleToLongBits = Double.doubleToLongBits(d10);
                if (jDoubleToLongBits != 0) {
                    if (jDoubleToLongBits == Long.MIN_VALUE) {
                        cArr[i10] = '-';
                        cArr[i10 + 1] = '0';
                        cArr[i10 + 2] = '.';
                        i17 = i10 + 4;
                        cArr[i10 + 3] = '0';
                    } else {
                        int i22 = (int) ((jDoubleToLongBits >>> 52) & 2047);
                        long j14 = jDoubleToLongBits & 4503599627370495L;
                        if (i22 == 0) {
                            i11 = -1074;
                        } else {
                            i11 = i22 - 1075;
                            j14 |= 4503599627370496L;
                        }
                        boolean z15 = jDoubleToLongBits < 0;
                        boolean z16 = (j14 & 1) == 0;
                        long j15 = 4 * j14;
                        long j16 = j15 + 2;
                        int i23 = (j14 != 4503599627370496L || i22 <= 1) ? 1 : 0;
                        long j17 = (j15 - 1) - ((long) i23);
                        int i24 = i11 - 2;
                        int i25 = 3;
                        if (i24 >= 0) {
                            int iMax = Math.max(0, ((int) ((((long) i24) * 3010299) / 10000000)) - 1);
                            int i26 = (((-i24) + iMax) + ((iMax == 0 ? 1 : (int) (((((long) iMax) * 23219280) + 9999999) / 10000000)) + Sdk$SDKError.Reason.TPAT_ERROR_VALUE)) - 114;
                            if (i26 < 0) {
                                throw new IllegalArgumentException("" + i26);
                            }
                            int[] iArr = f17645b[iMax];
                            long j18 = j15 >>> 31;
                            long j19 = j15 & 2147483647L;
                            int i27 = iArr[0];
                            int i28 = iArr[1];
                            int i29 = iArr[2];
                            z10 = z16;
                            int i30 = iArr[3];
                            long j20 = ((((((((((((j19 * ((long) i30)) >>> 31) + (((long) i29) * j19)) + (j18 * ((long) i30))) >>> 31) + (((long) i28) * j19)) + (((long) i29) * j18)) >>> 31) + (((long) i27) * j19)) + (((long) i28) * j18)) >>> 21) + ((((long) i27) * j18) << 10)) >>> i26;
                            long j21 = j16 >>> 31;
                            long j22 = j16 & 2147483647L;
                            long j23 = ((((((((((((j22 * ((long) i30)) >>> 31) + (((long) i29) * j22)) + (j21 * ((long) i30))) >>> 31) + (((long) i28) * j22)) + (((long) i29) * j21)) >>> 31) + (((long) i27) * j22)) + (((long) i28) * j21)) >>> 21) + ((((long) i27) * j21) << 10)) >>> i26;
                            long j24 = j17 >>> 31;
                            long j25 = j17 & 2147483647L;
                            j10 = j23;
                            long j26 = ((((((((((((j25 * ((long) i30)) >>> 31) + (((long) i29) * j25)) + (j24 * ((long) i30))) >>> 31) + (((long) i28) * j25)) + (((long) i29) * j24)) >>> 31) + (((long) i27) * j25)) + (((long) i28) * j24)) >>> 21) + ((((long) i27) * j24) << 10)) >>> i26;
                            if (iMax <= 21) {
                                long j27 = j15 % 5;
                                if (j27 == 0) {
                                    if (j27 != 0) {
                                        i20 = 0;
                                    } else if (j15 % 25 != 0) {
                                        i20 = 1;
                                    } else if (j15 % 125 != 0) {
                                        i20 = 2;
                                    } else if (j15 % 625 != 0) {
                                        i20 = 3;
                                    } else {
                                        long j28 = j15 / 625;
                                        i20 = 4;
                                        for (long j29 = 0; j28 > j29 && j28 % 5 == j29; j29 = 0) {
                                            j28 /= 5;
                                            i20++;
                                        }
                                    }
                                    z14 = i20 >= iMax;
                                    z13 = false;
                                } else if (z10) {
                                    if (j17 % 5 != 0) {
                                        i19 = 0;
                                    } else if (j17 % 25 != 0) {
                                        i19 = 1;
                                    } else if (j17 % 125 != 0) {
                                        i19 = 2;
                                    } else if (j17 % 625 != 0) {
                                        i19 = 3;
                                    } else {
                                        long j30 = j17 / 625;
                                        i19 = 4;
                                        for (long j31 = 0; j30 > j31 && j30 % 5 == j31; j31 = 0) {
                                            j30 /= 5;
                                            i19++;
                                        }
                                    }
                                    z13 = i19 >= iMax;
                                    z14 = false;
                                } else {
                                    if (j16 % 5 != 0) {
                                        i18 = 0;
                                    } else if (j16 % 25 != 0) {
                                        i18 = 1;
                                    } else if (j16 % 125 != 0) {
                                        i18 = 2;
                                    } else if (j16 % 625 != 0) {
                                        i18 = 3;
                                    } else {
                                        long j32 = j16 / 625;
                                        i18 = 4;
                                        for (long j33 = 0; j32 > j33 && j32 % 5 == j33; j33 = 0) {
                                            j32 /= 5;
                                            i18++;
                                        }
                                    }
                                    if (i18 >= iMax) {
                                        j10--;
                                    }
                                }
                                z13 = false;
                            } else {
                                z13 = false;
                            }
                            z12 = z14;
                            z11 = z13;
                            i12 = iMax;
                            j11 = j26;
                            j12 = j20;
                        } else {
                            z10 = z16;
                            int i31 = -i24;
                            int iMax2 = Math.max(0, ((int) ((((long) i31) * 6989700) / 10000000)) - 1);
                            int i32 = i31 - iMax2;
                            int i33 = (iMax2 - ((i32 == 0 ? 1 : (int) (((((long) i32) * 23219280) + 9999999) / 10000000)) - Sdk$SDKError.Reason.TPAT_ERROR_VALUE)) - 114;
                            if (i33 < 0) {
                                throw new IllegalArgumentException("" + i33);
                            }
                            int[] iArr2 = f17644a[i32];
                            long j34 = j15 >>> 31;
                            long j35 = j15 & 2147483647L;
                            int i34 = iArr2[0];
                            int i35 = iArr2[1];
                            int i36 = i23;
                            int i37 = iArr2[2];
                            int i38 = iArr2[3];
                            long j36 = ((((((((((((j35 * ((long) i38)) >>> 31) + (((long) i37) * j35)) + (j34 * ((long) i38))) >>> 31) + (((long) i35) * j35)) + (((long) i37) * j34)) >>> 31) + (((long) i34) * j35)) + (((long) i35) * j34)) >>> 21) + ((((long) i34) * j34) << 10)) >>> i33;
                            long j37 = j16 >>> 31;
                            long j38 = j16 & 2147483647L;
                            long j39 = ((((((((((((((long) i38) * j38) >>> 31) + (((long) i37) * j38)) + (j37 * ((long) i38))) >>> 31) + (((long) i35) * j38)) + (((long) i37) * j37)) >>> 31) + (((long) i34) * j38)) + (((long) i35) * j37)) >>> 21) + ((((long) i34) * j37) << 10)) >>> i33;
                            long j40 = j17 >>> 31;
                            long j41 = j17 & 2147483647L;
                            long j42 = ((((((((((((((long) i38) * j41) >>> 31) + (((long) i37) * j41)) + (j40 * ((long) i38))) >>> 31) + (((long) i35) * j41)) + (((long) i37) * j40)) >>> 31) + (((long) i34) * j41)) + (((long) i35) * j40)) >>> 21) + ((((long) i34) * j40) << 10)) >>> i33;
                            i12 = iMax2 + i24;
                            if (iMax2 <= 1) {
                                if (z10) {
                                    i12 = i12;
                                    z12 = true;
                                    j10 = j39;
                                    z11 = i36 == 1;
                                } else {
                                    j10 = j39 - 1;
                                    z12 = true;
                                    z11 = false;
                                }
                            } else if (iMax2 < 63) {
                                z12 = (j15 & ((1 << (iMax2 - 1)) - 1)) == 0;
                                j10 = j39;
                                z11 = false;
                            } else {
                                i12 = i12;
                                j10 = j39;
                                z11 = false;
                                z12 = false;
                            }
                            j11 = j42;
                            j12 = j36;
                        }
                        if (j10 >= 1000000000000000000L) {
                            i25 = 19;
                        } else if (j10 >= 100000000000000000L) {
                            i25 = 18;
                        } else if (j10 >= 10000000000000000L) {
                            i25 = 17;
                        } else if (j10 >= 1000000000000000L) {
                            i25 = 16;
                        } else if (j10 >= 100000000000000L) {
                            i25 = 15;
                        } else if (j10 >= 10000000000000L) {
                            i25 = 14;
                        } else if (j10 >= 1000000000000L) {
                            i25 = 13;
                        } else if (j10 >= 100000000000L) {
                            i25 = 12;
                        } else if (j10 >= RealConnection.IDLE_CONNECTION_HEALTHY_NS) {
                            i25 = 11;
                        } else if (j10 >= C.NANOS_PER_SECOND) {
                            i25 = 10;
                        } else if (j10 >= 100000000) {
                            i25 = 9;
                        } else if (j10 >= 10000000) {
                            i25 = 8;
                        } else if (j10 >= 1000000) {
                            i25 = 7;
                        } else if (j10 >= 100000) {
                            i25 = 6;
                        } else if (j10 >= 10000) {
                            i25 = 5;
                        } else if (j10 >= 1000) {
                            i25 = 4;
                        } else if (j10 < 100) {
                            i25 = j10 >= 10 ? 2 : 1;
                        }
                        int i39 = i12 + i25;
                        int i40 = i39 - 1;
                        boolean z17 = i40 < -3 || i40 >= 7;
                        if (z11 || z12) {
                            boolean z18 = z11;
                            boolean z19 = z12;
                            int i41 = 0;
                            int i42 = 0;
                            while (true) {
                                long j43 = j10 / 10;
                                long j44 = j11 / 10;
                                if (j43 <= j44 || (j10 < 100 && z17)) {
                                    break;
                                }
                                z18 &= j11 % 10 == 0;
                                z19 &= i41 == 0;
                                i41 = (int) (j12 % 10);
                                j12 /= 10;
                                i42++;
                                j10 = j43;
                                j11 = j44;
                            }
                            if (z18 && z10) {
                                while (j11 % 10 == 0 && (j10 >= 100 || !z17)) {
                                    z19 &= i41 == 0;
                                    i41 = (int) (j12 % 10);
                                    j10 /= 10;
                                    j12 /= 10;
                                    j11 /= 10;
                                    i42++;
                                }
                            }
                            if (z19 && i41 == 5 && j12 % 2 == 0) {
                                i41 = 4;
                            }
                            j13 = j12 + ((long) (((j12 != j11 || (z18 && z10)) && i41 < 5) ? 0 : 1));
                            i13 = i42;
                        } else {
                            i13 = 0;
                            int i43 = 0;
                            while (true) {
                                long j45 = j10 / 10;
                                long j46 = j11 / 10;
                                if (j45 <= j46 || (j10 < 100 && z17)) {
                                    break;
                                }
                                i43 = (int) (j12 % 10);
                                j12 /= 10;
                                i13++;
                                j10 = j45;
                                j11 = j46;
                            }
                            j13 = j12 + ((long) ((j12 == j11 || i43 >= 5) ? 1 : 0));
                        }
                        int i44 = i25 - i13;
                        if (z15) {
                            i14 = i10 + 1;
                            cArr[i10] = '-';
                        } else {
                            i14 = i10;
                        }
                        if (!z17) {
                            char c10 = '0';
                            if (i40 < 0) {
                                int i45 = i14 + 1;
                                cArr[i14] = '0';
                                int i46 = i14 + 2;
                                cArr[i45] = '.';
                                int i47 = -1;
                                while (i47 > i40) {
                                    cArr[i46] = c10;
                                    i47--;
                                    i46++;
                                    c10 = '0';
                                }
                                i15 = i46;
                                for (int i48 = 0; i48 < i44; i48++) {
                                    cArr[((i46 + i44) - i48) - 1] = (char) ((j13 % 10) + 48);
                                    j13 /= 10;
                                    i15++;
                                }
                            } else if (i39 >= i44) {
                                for (int i49 = 0; i49 < i44; i49++) {
                                    cArr[((i14 + i44) - i49) - 1] = (char) ((j13 % 10) + 48);
                                    j13 /= 10;
                                }
                                int i50 = i14 + i44;
                                while (i44 < i39) {
                                    cArr[i50] = '0';
                                    i44++;
                                    i50++;
                                }
                                cArr[i50] = '.';
                                i15 = i50 + 2;
                                cArr[i50 + 1] = '0';
                            } else {
                                int i51 = i14 + 1;
                                for (int i52 = 0; i52 < i44; i52++) {
                                    if ((i44 - i52) - 1 == i40) {
                                        cArr[((i51 + i44) - i52) - 1] = '.';
                                        i51--;
                                    }
                                    cArr[((i51 + i44) - i52) - 1] = (char) ((j13 % 10) + 48);
                                    j13 /= 10;
                                }
                                i15 = i14 + i44 + 1;
                            }
                            return i15 - i10;
                        }
                        for (int i53 = 0; i53 < i44 - 1; i53++) {
                            int i54 = (int) (j13 % 10);
                            j13 /= 10;
                            cArr[(i14 + i44) - i53] = (char) (i54 + 48);
                        }
                        cArr[i14] = (char) ((j13 % 10) + 48);
                        cArr[i14 + 1] = '.';
                        int i55 = i14 + i44 + 1;
                        if (i44 == 1) {
                            cArr[i55] = '0';
                            i55++;
                        }
                        int i56 = i55 + 1;
                        cArr[i55] = 'E';
                        if (i40 < 0) {
                            cArr[i56] = '-';
                            i40 = -i40;
                            i56 = i55 + 2;
                        }
                        if (i40 >= 100) {
                            int i57 = i56 + 1;
                            i16 = 48;
                            cArr[i56] = (char) ((i40 / 100) + 48);
                            i40 %= 100;
                            i56 += 2;
                            cArr[i57] = (char) ((i40 / 10) + 48);
                        } else {
                            i16 = 48;
                            if (i40 >= 10) {
                                cArr[i56] = (char) ((i40 / 10) + 48);
                                i56++;
                            }
                        }
                        i17 = i56 + 1;
                        cArr[i56] = (char) ((i40 % 10) + i16);
                    }
                    return i17 - i10;
                }
                cArr[i10] = '0';
                cArr[i10 + 1] = '.';
                i21 = i10 + 3;
                cArr[i10 + 2] = '0';
            }
        }
        return i21 - i10;
    }

    public static String b(double d10) {
        char[] cArr = new char[24];
        return new String(cArr, 0, a(d10, cArr, 0));
    }
}

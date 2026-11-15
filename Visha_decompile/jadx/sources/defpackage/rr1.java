package defpackage;

import androidx.media3.muxer.MuxerUtil;
import java.math.BigInteger;

public abstract class rr1 {
    public static final double[] a = {1.0d, 10.0d, 100.0d, 1000.0d, 10000.0d, 100000.0d, 1000000.0d, 1.0E7d, 1.0E8d, 1.0E9d, 1.0E10d, 1.0E11d, 1.0E12d, 1.0E13d, 1.0E14d, 1.0E15d, 1.0E16d, 1.0E17d, 1.0E18d, 1.0E19d, 1.0E20d, 1.0E21d, 1.0E22d};
    public static final double[] b = {1.0E16d, 1.0E32d, 1.0E64d, 1.0E128d, 1.0E256d};
    public static final int[] c = {0, 0, 3, 2, 2};

    public static char a(int i) {
        return (char) (i >= 10 ? i + 87 : i + 48);
    }

    /* JADX WARN: Code duplicated, block: B:113:0x0218  */
    /* JADX WARN: Code duplicated, block: B:115:0x0220  */
    /* JADX WARN: Code duplicated, block: B:117:0x0229  */
    /* JADX WARN: Code duplicated, block: B:119:0x0231  */
    /* JADX WARN: Code duplicated, block: B:121:0x023c  */
    /* JADX WARN: Code duplicated, block: B:122:0x023f  */
    /* JADX WARN: Code duplicated, block: B:124:0x0244  */
    /* JADX WARN: Code duplicated, block: B:126:0x0248  */
    /* JADX WARN: Code duplicated, block: B:131:0x0271  */
    /* JADX WARN: Code duplicated, block: B:136:0x0291  */
    /* JADX WARN: Code duplicated, block: B:141:0x02a3  */
    /* JADX WARN: Code duplicated, block: B:145:0x02ab A[LOOP:1: B:127:0x025a->B:145:0x02ab, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:146:0x02b4  */
    /* JADX WARN: Code duplicated, block: B:151:0x02de A[LOOP:9: B:151:0x02de->B:421:?, LOOP_START] */
    /* JADX WARN: Code duplicated, block: B:154:0x02f6  */
    /* JADX WARN: Code duplicated, block: B:159:0x0308  */
    /* JADX WARN: Code duplicated, block: B:161:0x0311  */
    /* JADX WARN: Code duplicated, block: B:163:0x0317 A[LOOP:8: B:147:0x02c8->B:163:0x0317, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:164:0x031f  */
    /* JADX WARN: Code duplicated, block: B:167:0x032d  */
    /* JADX WARN: Code duplicated, block: B:168:0x0331  */
    /* JADX WARN: Code duplicated, block: B:169:0x0336  */
    /* JADX WARN: Code duplicated, block: B:173:0x0350  */
    /* JADX WARN: Code duplicated, block: B:213:0x03dc  */
    /* JADX WARN: Code duplicated, block: B:215:0x03df A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:216:0x03e1  */
    /* JADX WARN: Code duplicated, block: B:217:0x03e5  */
    /* JADX WARN: Code duplicated, block: B:219:0x03f1  */
    /* JADX WARN: Code duplicated, block: B:221:0x03f5  */
    /* JADX WARN: Code duplicated, block: B:222:0x03ff  */
    /* JADX WARN: Code duplicated, block: B:224:0x0407  */
    /* JADX WARN: Code duplicated, block: B:225:0x040b  */
    /* JADX WARN: Code duplicated, block: B:227:0x0417  */
    /* JADX WARN: Code duplicated, block: B:229:0x0422 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:231:0x0426  */
    /* JADX WARN: Code duplicated, block: B:232:0x0428  */
    /* JADX WARN: Code duplicated, block: B:235:0x042e A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:236:0x0430 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:237:0x0432  */
    /* JADX WARN: Code duplicated, block: B:240:0x043d  */
    /* JADX WARN: Code duplicated, block: B:241:0x0442  */
    /* JADX WARN: Code duplicated, block: B:244:0x044c  */
    /* JADX WARN: Code duplicated, block: B:247:0x0453  */
    /* JADX WARN: Code duplicated, block: B:254:0x0472  */
    /* JADX WARN: Code duplicated, block: B:258:0x047c  */
    /* JADX WARN: Code duplicated, block: B:260:0x0481  */
    /* JADX WARN: Code duplicated, block: B:263:0x048b  */
    /* JADX WARN: Code duplicated, block: B:264:0x0494  */
    /* JADX WARN: Code duplicated, block: B:267:0x049a  */
    /* JADX WARN: Code duplicated, block: B:270:0x049f  */
    /* JADX WARN: Code duplicated, block: B:272:0x04a5 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:273:0x04a7  */
    /* JADX WARN: Code duplicated, block: B:275:0x04ac  */
    /* JADX WARN: Code duplicated, block: B:277:0x04b2  */
    /* JADX WARN: Code duplicated, block: B:280:0x04ba  */
    /* JADX WARN: Code duplicated, block: B:284:0x04cc  */
    /* JADX WARN: Code duplicated, block: B:287:0x04d8  */
    /* JADX WARN: Code duplicated, block: B:301:0x0508 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:302:0x050a  */
    /* JADX WARN: Code duplicated, block: B:304:0x0510  */
    /* JADX WARN: Code duplicated, block: B:305:0x0515  */
    /* JADX WARN: Code duplicated, block: B:309:0x0536  */
    /* JADX WARN: Code duplicated, block: B:310:0x0538  */
    /* JADX WARN: Code duplicated, block: B:312:0x053e A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:326:0x0568  */
    /* JADX WARN: Code duplicated, block: B:328:0x056b A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:352:0x05cb  */
    /* JADX WARN: Code duplicated, block: B:354:0x05d6 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:355:0x05d8  */
    /* JADX WARN: Code duplicated, block: B:357:0x05dc A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:359:0x05df  */
    /* JADX WARN: Code duplicated, block: B:360:0x05e1  */
    /* JADX WARN: Code duplicated, block: B:361:0x05e3  */
    /* JADX WARN: Code duplicated, block: B:363:0x05ea  */
    /* JADX WARN: Code duplicated, block: B:365:0x05f3  */
    /* JADX WARN: Code duplicated, block: B:368:0x05fd  */
    /* JADX WARN: Code duplicated, block: B:371:0x0604  */
    /* JADX WARN: Code duplicated, block: B:377:0x0628 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:384:0x0636  */
    /* JADX WARN: Code duplicated, block: B:386:0x063c  */
    /* JADX WARN: Code duplicated, block: B:390:0x0646 A[LOOP:6: B:372:0x0606->B:390:0x0646, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:395:0x026d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:396:0x027a A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:397:0x02a6 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:406:0x0486 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:407:0x05c9 A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:414:0x061c A[EDGE_INSN: B:414:0x061c->B:374:0x061c BREAK  A[LOOP:6: B:372:0x0606->B:390:0x0646], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:415:0x028f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:418:0x02d6 A[EDGE_INSN: B:418:0x02d6->B:149:0x02d6 BREAK  A[LOOP:8: B:147:0x02c8->B:163:0x0317], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:419:0x02f4 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:80:0x0161 A[ADDED_TO_REGION] */
    public static int b(double d, int i, boolean z, int i2, boolean[] zArr, StringBuilder sb) {
        double dJ;
        double dJ2;
        int i3;
        boolean z2;
        boolean z3;
        int i4;
        int i5;
        int i6;
        int i7;
        boolean z4;
        int i8;
        int i9;
        int i10;
        boolean z5;
        int i11;
        int i12;
        char c2;
        int[] iArr;
        int i13;
        int i14;
        BigInteger bigIntegerMultiply;
        int i15;
        int i16;
        int i17;
        int i18;
        int i19;
        BigInteger bigIntegerValueOf;
        boolean z6;
        byte[] byteArray;
        int i20;
        int i21;
        int iF;
        int i22;
        int i23;
        char c3;
        int i24;
        int i25;
        BigInteger bigInteger;
        char cIntValue;
        char cIntValue2;
        BigInteger bigInteger2;
        int iCompareTo;
        BigInteger bigIntegerMultiply2;
        int i26;
        int iCompareTo2;
        BigInteger bigIntegerSubtract;
        int iCompareTo3;
        int i27;
        int i28;
        int iCompareTo4;
        char c4;
        int iCompareTo5;
        int i29;
        int i30;
        int i31;
        int i32;
        int i33;
        int i34;
        char c5;
        double d2;
        int i35;
        boolean z7;
        double dJ3;
        double d3;
        double d4;
        int i36;
        char cCharAt;
        char c6;
        double d5;
        double d6;
        int i37;
        char cCharAt2;
        char c7;
        double d7;
        int i38;
        int i39;
        int i40;
        boolean z8;
        boolean z9;
        int i41 = i;
        int[] iArr2 = new int[1];
        int[] iArr3 = new int[1];
        if ((m(d) & Integer.MIN_VALUE) != 0) {
            zArr[0] = true;
            dJ = j(d, m(d) & Integer.MAX_VALUE);
        } else {
            dJ = d;
            zArr[0] = false;
        }
        if ((m(dJ) & 2146435072) == 2146435072) {
            sb.append((n(dJ) == 0 && (m(dJ) & 1048575) == 0) ? "Infinity" : "NaN");
            return 9999;
        }
        if (dJ == 0.0d) {
            sb.setLength(0);
            sb.append('0');
            return 1;
        }
        BigInteger bigIntegerE = e(dJ, iArr2, iArr3);
        int iM = (m(dJ) >>> 20) & 2047;
        if (iM != 0) {
            i3 = iM - 1023;
            z2 = false;
            iArr2 = iArr2;
            dJ2 = j(dJ, (m(dJ) & 1048575) | 1072693248);
        } else {
            int i42 = iArr3[0] + iArr2[0];
            int i43 = i42 + 1074;
            double dM = i43 > 32 ? (((long) m(dJ)) << (64 - i43)) | ((long) (n(dJ) >>> (i42 + 1042))) : ((long) n(dJ)) << (32 - i43);
            dJ2 = j(dM, m(dM) - 32505856);
            i3 = i42 - 1;
            z2 = true;
        }
        double d8 = ((dJ2 - 1.5d) * 0.289529654602168d) + 0.1760912590558d + (((double) i3) * 0.301029995663981d);
        int i44 = (int) d8;
        if (d8 < 0.0d && d8 != i44) {
            i44--;
        }
        if (i44 < 0 || i44 > 22) {
            z3 = true;
        } else {
            if (dJ < a[i44]) {
                i44--;
            }
            z3 = false;
        }
        int i45 = (iArr3[0] - i3) - 1;
        if (i45 >= 0) {
            i5 = i45;
            i4 = 0;
        } else {
            i4 = -i45;
            i5 = 0;
        }
        if (i44 >= 0) {
            i5 += i44;
            i6 = 0;
            i7 = i44;
        } else {
            i4 -= i44;
            i6 = -i44;
            i7 = 0;
        }
        if (i41 < 0 || i41 > 9) {
            i41 = 0;
        }
        if (i41 > 5) {
            i41 -= 4;
            z4 = false;
        } else {
            z4 = true;
        }
        if (i41 != 0 && i41 != 1) {
            if (i41 != 2) {
                if (i41 == 3) {
                    z9 = false;
                } else if (i41 == 4) {
                    z8 = true;
                } else if (i41 != 5) {
                    i9 = i2;
                    i8 = 0;
                    i10 = 0;
                } else {
                    z9 = true;
                }
                int i46 = i2 + i44;
                z5 = z9;
                i8 = i46 + 1;
                i10 = i46;
                i9 = i2;
                if (i8 < 0 && i8 <= 14 && z4) {
                    if (i44 > 0) {
                        double d9 = a[i44 & 15];
                        int i47 = i44 >> 4;
                        if ((i47 & 16) != 0) {
                            d7 = dJ / b[4];
                            i38 = 0;
                            i39 = i47 & 15;
                            i40 = 3;
                        } else {
                            d7 = dJ;
                            i38 = 0;
                            i39 = i47;
                            i40 = 2;
                        }
                        while (i39 != 0) {
                            if ((i39 & 1) != 0) {
                                i40++;
                                d9 *= b[i38];
                            }
                            i39 >>= 1;
                            i38++;
                        }
                        d2 = d7 / d9;
                        i35 = i40;
                    } else {
                        int i48 = -i44;
                        if (i48 != 0) {
                            int i49 = i48 >> 4;
                            d2 = a[i48 & 15] * dJ;
                            i35 = 2;
                            int i50 = 0;
                            while (i49 != 0) {
                                if ((i49 & 1) != 0) {
                                    i35++;
                                    d2 *= b[i50];
                                }
                                i49 >>= 1;
                                i50++;
                            }
                        } else {
                            d2 = dJ;
                            i35 = 2;
                        }
                    }
                    if (z3 && d2 < 1.0d && i8 > 0) {
                        if (i10 <= 0) {
                            z7 = true;
                        } else {
                            d2 *= 10.0d;
                            i35++;
                            dJ = dJ;
                            i44--;
                            i8 = i10;
                            z7 = false;
                        }
                        double d10 = (((double) i35) * d2) + 7.0d;
                        dJ3 = j(d10, m(d10) - 54525952);
                        if (i8 == 0) {
                            d2 -= 5.0d;
                            if (d2 > dJ3) {
                                sb.append('1');
                                return i44 + 2;
                            }
                            if (d2 < (-dJ3)) {
                                sb.setLength(0);
                                sb.append('0');
                                return 1;
                            }
                            z7 = true;
                        }
                        if (z7) {
                            z3 = z3;
                            i4 = i4;
                            i8 = i8;
                            i12 = i7;
                            i11 = i44;
                            iArr = iArr3;
                        } else {
                            if (z5) {
                                d5 = (0.5d / a[i8 - 1]) - dJ3;
                                d6 = d2;
                                i37 = 0;
                                while (true) {
                                    long j = (long) d6;
                                    i12 = i7;
                                    i11 = i44;
                                    d2 = d6 - j;
                                    sb.append((char) (j + 48));
                                    if (d2 < d5) {
                                        return i44 + 1;
                                    }
                                    if (1.0d - d2 < d5) {
                                        do {
                                            cCharAt2 = sb.charAt(sb.length() - 1);
                                            sb.setLength(sb.length() - 1);
                                            if (cCharAt2 != '9') {
                                                c7 = cCharAt2;
                                            }
                                            sb.append((char) (c7 + 1));
                                            return i44 + 1;
                                        } while (sb.length() != 0);
                                        i44++;
                                        c7 = '0';
                                        sb.append((char) (c7 + 1));
                                        return i44 + 1;
                                    }
                                    i37++;
                                    if (i37 >= i8) {
                                        iArr = iArr3;
                                        break;
                                    }
                                    d5 *= 10.0d;
                                    d6 = d2 * 10.0d;
                                    i7 = i12;
                                    i44 = i11;
                                }
                            } else {
                                i12 = i7;
                                i11 = i44;
                                d3 = dJ3 * a[i8 - 1];
                                d4 = d2;
                                i36 = 1;
                                while (true) {
                                    long j2 = (long) d4;
                                    iArr = iArr3;
                                    d2 = d4 - j2;
                                    sb.append((char) (j2 + 48));
                                    if (i36 == i8) {
                                        break;
                                    }
                                    i36++;
                                    d4 = d2 * 10.0d;
                                    iArr3 = iArr;
                                }
                                if (d2 > d3 + 0.5d) {
                                    do {
                                        cCharAt = sb.charAt(sb.length() - 1);
                                        sb.setLength(sb.length() - 1);
                                        if (cCharAt != '9') {
                                            c6 = cCharAt;
                                        }
                                        sb.append((char) (c6 + 1));
                                        return i44 + 1;
                                    } while (sb.length() != 0);
                                    i44++;
                                    c6 = '0';
                                    sb.append((char) (c6 + 1));
                                    return i44 + 1;
                                }
                                if (d2 < 0.5d - d3) {
                                    k(sb);
                                    return i44 + 1;
                                }
                            }
                            z7 = true;
                        }
                        c2 = 0;
                        if (z7) {
                            sb.setLength(0);
                        } else {
                            i13 = i44;
                            dJ = d2;
                        }
                        i14 = iArr2[c2];
                        if (i14 < 0 && i13 <= 14) {
                            double d11 = a[i13];
                            if (i9 < 0 && i8 <= 0) {
                                if (i8 >= 0) {
                                    double d12 = d11 * 5.0d;
                                    if (dJ >= d12 && (z || dJ != d12)) {
                                        sb.append('1');
                                        return i13 + 2;
                                    }
                                }
                                sb.setLength(0);
                                sb.append('0');
                                return 1;
                            }
                            int i51 = 1;
                            while (true) {
                                long j3 = (long) (dJ / d11);
                                double d13 = dJ - (j3 * d11);
                                sb.append((char) (j3 + 48));
                                if (i51 == i8) {
                                    double d14 = d13 + d13;
                                    if (d14 <= d11 && (d14 != d11 || ((j3 & 1) == 0 && !z))) {
                                        i34 = 1;
                                        break;
                                    }
                                    while (true) {
                                        i34 = 1;
                                        char cCharAt3 = sb.charAt(sb.length() - 1);
                                        sb.setLength(sb.length() - 1);
                                        if (cCharAt3 != '9') {
                                            c5 = cCharAt3;
                                            break;
                                        }
                                        if (sb.length() == 0) {
                                            i13++;
                                            c5 = '0';
                                            break;
                                        }
                                    }
                                    sb.append((char) (c5 + 1));
                                    break;
                                }
                                i34 = 1;
                                dJ = d13 * 10.0d;
                                if (dJ == 0.0d) {
                                    break;
                                }
                                i51++;
                            }
                            return i13 + i34;
                        }
                        if (z5) {
                            if (i41 < 2) {
                                if (z2) {
                                    i33 = i14 + 1075;
                                } else {
                                    i33 = 54 - iArr[0];
                                }
                                i32 = i33;
                                i15 = i6;
                                i17 = i4;
                                i19 = i12;
                            } else {
                                i31 = i8 - 1;
                                if (i6 >= i31) {
                                    i19 = i12;
                                    int i52 = i6;
                                    i6 -= i31;
                                    i15 = i52;
                                } else {
                                    int i53 = i31 - i6;
                                    i19 = i12 + i53;
                                    i15 = i6 + i53;
                                    i6 = 0;
                                }
                                if (i8 < 0) {
                                    i17 = i4 - i8;
                                    i32 = 0;
                                } else {
                                    i32 = i8;
                                    i17 = i4;
                                }
                            }
                            i18 = i4 + i32;
                            i16 = i5 + i32;
                            bigIntegerMultiply = BigInteger.valueOf(1L);
                        } else {
                            bigIntegerMultiply = null;
                            i15 = i6;
                            i16 = i5;
                            i17 = i4;
                            i18 = i17;
                            i19 = i12;
                        }
                        if (i17 > 0 && i16 > 0) {
                            if (i17 < i16) {
                                i30 = i17;
                            } else {
                                i30 = i16;
                            }
                            i18 -= i30;
                            i17 -= i30;
                            i16 -= i30;
                        }
                        if (i15 > 0) {
                            if (z5) {
                                if (i6 > 0) {
                                    bigIntegerMultiply = h(bigIntegerMultiply, i6);
                                    bigIntegerE = bigIntegerMultiply.multiply(bigIntegerE);
                                }
                                i29 = i15 - i6;
                                if (i29 != 0) {
                                    bigIntegerE = h(bigIntegerE, i29);
                                }
                            } else {
                                bigIntegerE = h(bigIntegerE, i15);
                            }
                        }
                        bigIntegerValueOf = BigInteger.valueOf(1L);
                        if (i19 > 0) {
                            bigIntegerValueOf = h(bigIntegerValueOf, i19);
                        }
                        if (i41 < 2 || n(dJ) != 0 || (m(dJ) & 1048575) != 0 || (m(dJ) & 2145386496) == 0) {
                            z6 = false;
                        } else {
                            i18++;
                            i16++;
                            z6 = true;
                        }
                        byteArray = bigIntegerValueOf.toByteArray();
                        i21 = 0;
                        for (i20 = 0; i20 < 4; i20++) {
                            i21 <<= 8;
                            if (i20 < byteArray.length) {
                                i21 |= byteArray[i20] & 255;
                            }
                        }
                        if (i19 != 0) {
                            iF = 32 - f(i21);
                        } else {
                            iF = 1;
                        }
                        i22 = (iF + i16) & 31;
                        if (i22 != 0) {
                            i22 = 32 - i22;
                        }
                        if (i22 <= 4) {
                            if (i22 < 4) {
                                i23 = i22 + 28;
                            }
                            if (i18 > 0) {
                                bigIntegerE = bigIntegerE.shiftLeft(i18);
                            }
                            if (i16 > 0) {
                                bigIntegerValueOf = bigIntegerValueOf.shiftLeft(i16);
                            }
                            if (z3 && bigIntegerE.compareTo(bigIntegerValueOf) < 0) {
                                i13--;
                                bigIntegerE = bigIntegerE.multiply(BigInteger.valueOf(10L));
                                if (z5) {
                                    bigIntegerMultiply = bigIntegerMultiply.multiply(BigInteger.valueOf(10L));
                                }
                                i8 = i10;
                            }
                            if (i8 > 0 && i41 > 2) {
                                if (i8 >= 0 && (iCompareTo5 = bigIntegerE.compareTo(bigIntegerValueOf.multiply(BigInteger.valueOf(5L)))) >= 0 && (iCompareTo5 != 0 || z)) {
                                    sb.append('1');
                                    return i13 + 2;
                                }
                                sb.setLength(0);
                                sb.append('0');
                                return 1;
                            }
                            c3 = 1;
                            if (z5) {
                                if (i17 > 0) {
                                    bigIntegerMultiply = bigIntegerMultiply.shiftLeft(i17);
                                }
                                if (z6) {
                                    bigIntegerMultiply2 = bigIntegerMultiply.shiftLeft(1);
                                } else {
                                    bigIntegerMultiply2 = bigIntegerMultiply;
                                }
                                i26 = 1;
                                while (true) {
                                    BigInteger[] bigIntegerArrDivideAndRemainder = bigIntegerE.divideAndRemainder(bigIntegerValueOf);
                                    bigInteger2 = bigIntegerArrDivideAndRemainder[c3];
                                    cIntValue2 = (char) (bigIntegerArrDivideAndRemainder[0].intValue() + 48);
                                    iCompareTo2 = bigInteger2.compareTo(bigIntegerMultiply);
                                    bigIntegerSubtract = bigIntegerValueOf.subtract(bigIntegerMultiply2);
                                    if (bigIntegerSubtract.signum() <= 0) {
                                        iCompareTo3 = 1;
                                    } else {
                                        iCompareTo3 = bigInteger2.compareTo(bigIntegerSubtract);
                                    }
                                    if (iCompareTo3 == 0 || i41 != 0) {
                                        i27 = 1;
                                    } else {
                                        i27 = 1;
                                        if ((n(dJ) & 1) == 0) {
                                            if (cIntValue2 != '9') {
                                                if (iCompareTo2 > 0) {
                                                    cIntValue2 = (char) (cIntValue2 + 1);
                                                }
                                                sb.append(cIntValue2);
                                                return i13 + 1;
                                            }
                                            sb.append('9');
                                            if (i(sb)) {
                                                i13++;
                                                sb.append('1');
                                            }
                                            return i13 + 1;
                                        }
                                    }
                                    if (iCompareTo2 >= 0 || (iCompareTo2 == 0 && i41 == 0 && (n(dJ) & i27) == 0)) {
                                        if (iCompareTo3 <= 0) {
                                            i28 = 1;
                                        } else {
                                            iCompareTo4 = bigInteger2.shiftLeft(1).compareTo(bigIntegerValueOf);
                                            if (iCompareTo4 > 0) {
                                                c4 = (char) (cIntValue2 + 1);
                                                if (cIntValue2 == '9') {
                                                    sb.append('9');
                                                    if (i(sb)) {
                                                        i13++;
                                                        sb.append('1');
                                                    }
                                                    return i13 + 1;
                                                }
                                                i28 = 1;
                                                cIntValue2 = c4;
                                            } else if (iCompareTo4 != 0) {
                                                i28 = 1;
                                            } else if ((cIntValue2 & 1) != 1 || z) {
                                                c4 = (char) (cIntValue2 + 1);
                                                if (cIntValue2 == '9') {
                                                    sb.append('9');
                                                    if (i(sb)) {
                                                        i13++;
                                                        sb.append('1');
                                                    }
                                                    return i13 + 1;
                                                }
                                                i28 = 1;
                                                cIntValue2 = c4;
                                            } else {
                                                i28 = 1;
                                            }
                                        }
                                        sb.append(cIntValue2);
                                        return i13 + i28;
                                    }
                                    if (iCompareTo3 > 0) {
                                        if (cIntValue2 != '9') {
                                            sb.append((char) (cIntValue2 + 1));
                                            return i13 + 1;
                                        }
                                        sb.append('9');
                                        if (i(sb)) {
                                            i13++;
                                            sb.append('1');
                                        }
                                        return i13 + 1;
                                    }
                                    sb.append(cIntValue2);
                                    if (i26 == i8) {
                                        i24 = 1;
                                        break;
                                    }
                                    bigIntegerE = bigInteger2.multiply(BigInteger.valueOf(10L));
                                    if (bigIntegerMultiply == bigIntegerMultiply2) {
                                        bigIntegerMultiply2 = bigIntegerMultiply2.multiply(BigInteger.valueOf(10L));
                                        bigIntegerMultiply = bigIntegerMultiply2;
                                    } else {
                                        bigIntegerMultiply = bigIntegerMultiply.multiply(BigInteger.valueOf(10L));
                                        bigIntegerMultiply2 = bigIntegerMultiply2.multiply(BigInteger.valueOf(10L));
                                    }
                                    i26++;
                                    c3 = 1;
                                }
                            } else {
                                i24 = 1;
                                i25 = 1;
                                while (true) {
                                    BigInteger[] bigIntegerArrDivideAndRemainder2 = bigIntegerE.divideAndRemainder(bigIntegerValueOf);
                                    bigInteger = bigIntegerArrDivideAndRemainder2[i24];
                                    cIntValue = (char) (bigIntegerArrDivideAndRemainder2[0].intValue() + 48);
                                    sb.append(cIntValue);
                                    if (i25 >= i8) {
                                        break;
                                    }
                                    i25++;
                                    bigIntegerE = bigInteger.multiply(BigInteger.valueOf(10L));
                                    i24 = i24;
                                }
                                cIntValue2 = cIntValue;
                                bigInteger2 = bigInteger;
                            }
                            iCompareTo = bigInteger2.shiftLeft(i24).compareTo(bigIntegerValueOf);
                            if (iCompareTo > 0 && !(iCompareTo == 0 && ((cIntValue2 & 1) == i24 || z))) {
                                k(sb);
                            } else if (i(sb)) {
                                sb.append('1');
                                return i13 + 2;
                            }
                            return i13 + 1;
                        }
                        i23 = i22 - 4;
                        i18 += i23;
                        i17 += i23;
                        i16 += i23;
                        if (i18 > 0) {
                            bigIntegerE = bigIntegerE.shiftLeft(i18);
                        }
                        if (i16 > 0) {
                            bigIntegerValueOf = bigIntegerValueOf.shiftLeft(i16);
                        }
                        if (z3) {
                            i13--;
                            bigIntegerE = bigIntegerE.multiply(BigInteger.valueOf(10L));
                            if (z5) {
                                bigIntegerMultiply = bigIntegerMultiply.multiply(BigInteger.valueOf(10L));
                            }
                            i8 = i10;
                        }
                        if (i8 > 0) {
                        }
                        c3 = 1;
                        if (z5) {
                            if (i17 > 0) {
                                bigIntegerMultiply = bigIntegerMultiply.shiftLeft(i17);
                            }
                            if (z6) {
                                bigIntegerMultiply2 = bigIntegerMultiply.shiftLeft(1);
                            } else {
                                bigIntegerMultiply2 = bigIntegerMultiply;
                            }
                            i26 = 1;
                            while (true) {
                                BigInteger[] bigIntegerArrDivideAndRemainder3 = bigIntegerE.divideAndRemainder(bigIntegerValueOf);
                                bigInteger2 = bigIntegerArrDivideAndRemainder3[c3];
                                cIntValue2 = (char) (bigIntegerArrDivideAndRemainder3[0].intValue() + 48);
                                iCompareTo2 = bigInteger2.compareTo(bigIntegerMultiply);
                                bigIntegerSubtract = bigIntegerValueOf.subtract(bigIntegerMultiply2);
                                if (bigIntegerSubtract.signum() <= 0) {
                                    iCompareTo3 = 1;
                                } else {
                                    iCompareTo3 = bigInteger2.compareTo(bigIntegerSubtract);
                                }
                                if (iCompareTo3 == 0) {
                                    i27 = 1;
                                } else {
                                    i27 = 1;
                                }
                                if (iCompareTo2 >= 0) {
                                }
                                if (iCompareTo3 <= 0) {
                                    i28 = 1;
                                } else {
                                    iCompareTo4 = bigInteger2.shiftLeft(1).compareTo(bigIntegerValueOf);
                                    if (iCompareTo4 > 0) {
                                        c4 = (char) (cIntValue2 + 1);
                                        if (cIntValue2 == '9') {
                                            sb.append('9');
                                            if (i(sb)) {
                                                i13++;
                                                sb.append('1');
                                            }
                                            return i13 + 1;
                                        }
                                        i28 = 1;
                                        cIntValue2 = c4;
                                    } else if (iCompareTo4 != 0) {
                                        if ((cIntValue2 & 1) != 1) {
                                        }
                                        c4 = (char) (cIntValue2 + 1);
                                        if (cIntValue2 == '9') {
                                            sb.append('9');
                                            if (i(sb)) {
                                                i13++;
                                                sb.append('1');
                                            }
                                            return i13 + 1;
                                        }
                                        i28 = 1;
                                        cIntValue2 = c4;
                                    } else {
                                        i28 = 1;
                                    }
                                }
                                sb.append(cIntValue2);
                                return i13 + i28;
                                i26++;
                                c3 = 1;
                            }
                        } else {
                            i24 = 1;
                            i25 = 1;
                            while (true) {
                                BigInteger[] bigIntegerArrDivideAndRemainder4 = bigIntegerE.divideAndRemainder(bigIntegerValueOf);
                                bigInteger = bigIntegerArrDivideAndRemainder4[i24];
                                cIntValue = (char) (bigIntegerArrDivideAndRemainder4[0].intValue() + 48);
                                sb.append(cIntValue);
                                if (i25 >= i8) {
                                    break;
                                    break;
                                }
                                i25++;
                                bigIntegerE = bigInteger.multiply(BigInteger.valueOf(10L));
                                i24 = i24;
                            }
                            cIntValue2 = cIntValue;
                            bigInteger2 = bigInteger;
                        }
                        iCompareTo = bigInteger2.shiftLeft(i24).compareTo(bigIntegerValueOf);
                        if (iCompareTo > 0) {
                            if (i(sb)) {
                                sb.append('1');
                                return i13 + 2;
                            }
                        } else if (i(sb)) {
                            sb.append('1');
                            return i13 + 2;
                        }
                        return i13 + 1;
                    }
                    z7 = false;
                    double d15 = (((double) i35) * d2) + 7.0d;
                    dJ3 = j(d15, m(d15) - 54525952);
                    if (i8 == 0) {
                        d2 -= 5.0d;
                        if (d2 > dJ3) {
                            sb.append('1');
                            return i44 + 2;
                        }
                        if (d2 < (-dJ3)) {
                            sb.setLength(0);
                            sb.append('0');
                            return 1;
                        }
                        z7 = true;
                    }
                    if (z7) {
                        if (z5) {
                            d5 = (0.5d / a[i8 - 1]) - dJ3;
                            d6 = d2;
                            i37 = 0;
                            while (true) {
                                long j4 = (long) d6;
                                i12 = i7;
                                i11 = i44;
                                d2 = d6 - j4;
                                sb.append((char) (j4 + 48));
                                if (d2 < d5) {
                                    return i44 + 1;
                                }
                                if (1.0d - d2 < d5) {
                                    do {
                                        cCharAt2 = sb.charAt(sb.length() - 1);
                                        sb.setLength(sb.length() - 1);
                                        if (cCharAt2 != '9') {
                                            c7 = cCharAt2;
                                        }
                                        sb.append((char) (c7 + 1));
                                        return i44 + 1;
                                    } while (sb.length() != 0);
                                    i44++;
                                    c7 = '0';
                                    sb.append((char) (c7 + 1));
                                    return i44 + 1;
                                }
                                i37++;
                                if (i37 >= i8) {
                                    iArr = iArr3;
                                    break;
                                }
                                d5 *= 10.0d;
                                d6 = d2 * 10.0d;
                                i7 = i12;
                                i44 = i11;
                            }
                        } else {
                            i12 = i7;
                            i11 = i44;
                            d3 = dJ3 * a[i8 - 1];
                            d4 = d2;
                            i36 = 1;
                            while (true) {
                                long j5 = (long) d4;
                                iArr = iArr3;
                                d2 = d4 - j5;
                                sb.append((char) (j5 + 48));
                                if (i36 == i8) {
                                    break;
                                    break;
                                }
                                i36++;
                                d4 = d2 * 10.0d;
                                iArr3 = iArr;
                            }
                            if (d2 > d3 + 0.5d) {
                                do {
                                    cCharAt = sb.charAt(sb.length() - 1);
                                    sb.setLength(sb.length() - 1);
                                    if (cCharAt != '9') {
                                        c6 = cCharAt;
                                    }
                                    sb.append((char) (c6 + 1));
                                    return i44 + 1;
                                } while (sb.length() != 0);
                                i44++;
                                c6 = '0';
                                sb.append((char) (c6 + 1));
                                return i44 + 1;
                            }
                            if (d2 < 0.5d - d3) {
                                k(sb);
                                return i44 + 1;
                            }
                        }
                        z7 = true;
                    } else {
                        z3 = z3;
                        i4 = i4;
                        i8 = i8;
                        i12 = i7;
                        i11 = i44;
                        iArr = iArr3;
                    }
                    c2 = 0;
                    if (z7) {
                        sb.setLength(0);
                    } else {
                        i13 = i44;
                        dJ = d2;
                    }
                    i14 = iArr2[c2];
                    if (i14 < 0) {
                    }
                    if (z5) {
                        if (i41 < 2) {
                            if (z2) {
                                i33 = i14 + 1075;
                            } else {
                                i33 = 54 - iArr[0];
                            }
                            i32 = i33;
                            i15 = i6;
                            i17 = i4;
                            i19 = i12;
                        } else {
                            i31 = i8 - 1;
                            if (i6 >= i31) {
                                i19 = i12;
                                int i54 = i6;
                                i6 -= i31;
                                i15 = i54;
                            } else {
                                int i55 = i31 - i6;
                                i19 = i12 + i55;
                                i15 = i6 + i55;
                                i6 = 0;
                            }
                            if (i8 < 0) {
                                i17 = i4 - i8;
                                i32 = 0;
                            } else {
                                i32 = i8;
                                i17 = i4;
                            }
                        }
                        i18 = i4 + i32;
                        i16 = i5 + i32;
                        bigIntegerMultiply = BigInteger.valueOf(1L);
                    } else {
                        bigIntegerMultiply = null;
                        i15 = i6;
                        i16 = i5;
                        i17 = i4;
                        i18 = i17;
                        i19 = i12;
                    }
                    if (i17 > 0) {
                        if (i17 < i16) {
                            i30 = i17;
                        } else {
                            i30 = i16;
                        }
                        i18 -= i30;
                        i17 -= i30;
                        i16 -= i30;
                    }
                    if (i15 > 0) {
                        if (z5) {
                            if (i6 > 0) {
                                bigIntegerMultiply = h(bigIntegerMultiply, i6);
                                bigIntegerE = bigIntegerMultiply.multiply(bigIntegerE);
                            }
                            i29 = i15 - i6;
                            if (i29 != 0) {
                                bigIntegerE = h(bigIntegerE, i29);
                            }
                        } else {
                            bigIntegerE = h(bigIntegerE, i15);
                        }
                    }
                    bigIntegerValueOf = BigInteger.valueOf(1L);
                    if (i19 > 0) {
                        bigIntegerValueOf = h(bigIntegerValueOf, i19);
                    }
                    if (i41 < 2) {
                        z6 = false;
                    } else {
                        z6 = false;
                    }
                    byteArray = bigIntegerValueOf.toByteArray();
                    i21 = 0;
                    while (i20 < 4) {
                        i21 <<= 8;
                        if (i20 < byteArray.length) {
                            i21 |= byteArray[i20] & 255;
                        }
                    }
                    if (i19 != 0) {
                        iF = 32 - f(i21);
                    } else {
                        iF = 1;
                    }
                    i22 = (iF + i16) & 31;
                    if (i22 != 0) {
                        i22 = 32 - i22;
                    }
                    if (i22 <= 4) {
                        if (i22 < 4) {
                            i23 = i22 + 28;
                        }
                        if (i18 > 0) {
                            bigIntegerE = bigIntegerE.shiftLeft(i18);
                        }
                        if (i16 > 0) {
                            bigIntegerValueOf = bigIntegerValueOf.shiftLeft(i16);
                        }
                        if (z3) {
                            i13--;
                            bigIntegerE = bigIntegerE.multiply(BigInteger.valueOf(10L));
                            if (z5) {
                                bigIntegerMultiply = bigIntegerMultiply.multiply(BigInteger.valueOf(10L));
                            }
                            i8 = i10;
                        }
                        if (i8 > 0) {
                        }
                        c3 = 1;
                        if (z5) {
                            if (i17 > 0) {
                                bigIntegerMultiply = bigIntegerMultiply.shiftLeft(i17);
                            }
                            if (z6) {
                                bigIntegerMultiply2 = bigIntegerMultiply.shiftLeft(1);
                            } else {
                                bigIntegerMultiply2 = bigIntegerMultiply;
                            }
                            i26 = 1;
                            while (true) {
                                BigInteger[] bigIntegerArrDivideAndRemainder5 = bigIntegerE.divideAndRemainder(bigIntegerValueOf);
                                bigInteger2 = bigIntegerArrDivideAndRemainder5[c3];
                                cIntValue2 = (char) (bigIntegerArrDivideAndRemainder5[0].intValue() + 48);
                                iCompareTo2 = bigInteger2.compareTo(bigIntegerMultiply);
                                bigIntegerSubtract = bigIntegerValueOf.subtract(bigIntegerMultiply2);
                                if (bigIntegerSubtract.signum() <= 0) {
                                    iCompareTo3 = 1;
                                } else {
                                    iCompareTo3 = bigInteger2.compareTo(bigIntegerSubtract);
                                }
                                if (iCompareTo3 == 0) {
                                    i27 = 1;
                                } else {
                                    i27 = 1;
                                }
                                if (iCompareTo2 >= 0) {
                                }
                                if (iCompareTo3 <= 0) {
                                    i28 = 1;
                                } else {
                                    iCompareTo4 = bigInteger2.shiftLeft(1).compareTo(bigIntegerValueOf);
                                    if (iCompareTo4 > 0) {
                                        c4 = (char) (cIntValue2 + 1);
                                        if (cIntValue2 == '9') {
                                            sb.append('9');
                                            if (i(sb)) {
                                                i13++;
                                                sb.append('1');
                                            }
                                            return i13 + 1;
                                        }
                                        i28 = 1;
                                        cIntValue2 = c4;
                                    } else if (iCompareTo4 != 0) {
                                        if ((cIntValue2 & 1) != 1) {
                                        }
                                        c4 = (char) (cIntValue2 + 1);
                                        if (cIntValue2 == '9') {
                                            sb.append('9');
                                            if (i(sb)) {
                                                i13++;
                                                sb.append('1');
                                            }
                                            return i13 + 1;
                                        }
                                        i28 = 1;
                                        cIntValue2 = c4;
                                    } else {
                                        i28 = 1;
                                    }
                                }
                                sb.append(cIntValue2);
                                return i13 + i28;
                                i26++;
                                c3 = 1;
                            }
                        } else {
                            i24 = 1;
                            i25 = 1;
                            while (true) {
                                BigInteger[] bigIntegerArrDivideAndRemainder6 = bigIntegerE.divideAndRemainder(bigIntegerValueOf);
                                bigInteger = bigIntegerArrDivideAndRemainder6[i24];
                                cIntValue = (char) (bigIntegerArrDivideAndRemainder6[0].intValue() + 48);
                                sb.append(cIntValue);
                                if (i25 >= i8) {
                                    break;
                                    break;
                                }
                                i25++;
                                bigIntegerE = bigInteger.multiply(BigInteger.valueOf(10L));
                                i24 = i24;
                            }
                            cIntValue2 = cIntValue;
                            bigInteger2 = bigInteger;
                        }
                        iCompareTo = bigInteger2.shiftLeft(i24).compareTo(bigIntegerValueOf);
                        if (iCompareTo > 0) {
                            if (i(sb)) {
                                sb.append('1');
                                return i13 + 2;
                            }
                        } else if (i(sb)) {
                            sb.append('1');
                            return i13 + 2;
                        }
                        return i13 + 1;
                    }
                    i23 = i22 - 4;
                    i18 += i23;
                    i17 += i23;
                    i16 += i23;
                    if (i18 > 0) {
                        bigIntegerE = bigIntegerE.shiftLeft(i18);
                    }
                    if (i16 > 0) {
                        bigIntegerValueOf = bigIntegerValueOf.shiftLeft(i16);
                    }
                    if (z3) {
                        i13--;
                        bigIntegerE = bigIntegerE.multiply(BigInteger.valueOf(10L));
                        if (z5) {
                            bigIntegerMultiply = bigIntegerMultiply.multiply(BigInteger.valueOf(10L));
                        }
                        i8 = i10;
                    }
                    if (i8 > 0) {
                    }
                    c3 = 1;
                    if (z5) {
                        if (i17 > 0) {
                            bigIntegerMultiply = bigIntegerMultiply.shiftLeft(i17);
                        }
                        if (z6) {
                            bigIntegerMultiply2 = bigIntegerMultiply.shiftLeft(1);
                        } else {
                            bigIntegerMultiply2 = bigIntegerMultiply;
                        }
                        i26 = 1;
                        while (true) {
                            BigInteger[] bigIntegerArrDivideAndRemainder7 = bigIntegerE.divideAndRemainder(bigIntegerValueOf);
                            bigInteger2 = bigIntegerArrDivideAndRemainder7[c3];
                            cIntValue2 = (char) (bigIntegerArrDivideAndRemainder7[0].intValue() + 48);
                            iCompareTo2 = bigInteger2.compareTo(bigIntegerMultiply);
                            bigIntegerSubtract = bigIntegerValueOf.subtract(bigIntegerMultiply2);
                            if (bigIntegerSubtract.signum() <= 0) {
                                iCompareTo3 = 1;
                            } else {
                                iCompareTo3 = bigInteger2.compareTo(bigIntegerSubtract);
                            }
                            if (iCompareTo3 == 0) {
                                i27 = 1;
                            } else {
                                i27 = 1;
                            }
                            if (iCompareTo2 >= 0) {
                            }
                            if (iCompareTo3 <= 0) {
                                i28 = 1;
                            } else {
                                iCompareTo4 = bigInteger2.shiftLeft(1).compareTo(bigIntegerValueOf);
                                if (iCompareTo4 > 0) {
                                    c4 = (char) (cIntValue2 + 1);
                                    if (cIntValue2 == '9') {
                                        sb.append('9');
                                        if (i(sb)) {
                                            i13++;
                                            sb.append('1');
                                        }
                                        return i13 + 1;
                                    }
                                    i28 = 1;
                                    cIntValue2 = c4;
                                } else if (iCompareTo4 != 0) {
                                    if ((cIntValue2 & 1) != 1) {
                                    }
                                    c4 = (char) (cIntValue2 + 1);
                                    if (cIntValue2 == '9') {
                                        sb.append('9');
                                        if (i(sb)) {
                                            i13++;
                                            sb.append('1');
                                        }
                                        return i13 + 1;
                                    }
                                    i28 = 1;
                                    cIntValue2 = c4;
                                } else {
                                    i28 = 1;
                                }
                            }
                            sb.append(cIntValue2);
                            return i13 + i28;
                            i26++;
                            c3 = 1;
                        }
                    } else {
                        i24 = 1;
                        i25 = 1;
                        while (true) {
                            BigInteger[] bigIntegerArrDivideAndRemainder8 = bigIntegerE.divideAndRemainder(bigIntegerValueOf);
                            bigInteger = bigIntegerArrDivideAndRemainder8[i24];
                            cIntValue = (char) (bigIntegerArrDivideAndRemainder8[0].intValue() + 48);
                            sb.append(cIntValue);
                            if (i25 >= i8) {
                                break;
                                break;
                            }
                            i25++;
                            bigIntegerE = bigInteger.multiply(BigInteger.valueOf(10L));
                            i24 = i24;
                        }
                        cIntValue2 = cIntValue;
                        bigInteger2 = bigInteger;
                    }
                    iCompareTo = bigInteger2.shiftLeft(i24).compareTo(bigIntegerValueOf);
                    if (iCompareTo > 0) {
                        if (i(sb)) {
                            sb.append('1');
                            return i13 + 2;
                        }
                    } else if (i(sb)) {
                        sb.append('1');
                        return i13 + 2;
                    }
                    return i13 + 1;
                }
                z3 = z3;
                i4 = i4;
                i8 = i8;
                dJ = dJ;
                i11 = i44;
                i5 = i5;
                i12 = i7;
                c2 = 0;
                iArr = iArr3;
                i8 = i8;
                i13 = i11;
                i14 = iArr2[c2];
                if (i14 < 0) {
                }
                if (z5) {
                    if (i41 < 2) {
                        if (z2) {
                            i33 = i14 + 1075;
                        } else {
                            i33 = 54 - iArr[0];
                        }
                        i32 = i33;
                        i15 = i6;
                        i17 = i4;
                        i19 = i12;
                    } else {
                        i31 = i8 - 1;
                        if (i6 >= i31) {
                            i19 = i12;
                            int i56 = i6;
                            i6 -= i31;
                            i15 = i56;
                        } else {
                            int i57 = i31 - i6;
                            i19 = i12 + i57;
                            i15 = i6 + i57;
                            i6 = 0;
                        }
                        if (i8 < 0) {
                            i17 = i4 - i8;
                            i32 = 0;
                        } else {
                            i32 = i8;
                            i17 = i4;
                        }
                    }
                    i18 = i4 + i32;
                    i16 = i5 + i32;
                    bigIntegerMultiply = BigInteger.valueOf(1L);
                } else {
                    bigIntegerMultiply = null;
                    i15 = i6;
                    i16 = i5;
                    i17 = i4;
                    i18 = i17;
                    i19 = i12;
                }
                if (i17 > 0) {
                    if (i17 < i16) {
                        i30 = i17;
                    } else {
                        i30 = i16;
                    }
                    i18 -= i30;
                    i17 -= i30;
                    i16 -= i30;
                }
                if (i15 > 0) {
                    if (z5) {
                        if (i6 > 0) {
                            bigIntegerMultiply = h(bigIntegerMultiply, i6);
                            bigIntegerE = bigIntegerMultiply.multiply(bigIntegerE);
                        }
                        i29 = i15 - i6;
                        if (i29 != 0) {
                            bigIntegerE = h(bigIntegerE, i29);
                        }
                    } else {
                        bigIntegerE = h(bigIntegerE, i15);
                    }
                }
                bigIntegerValueOf = BigInteger.valueOf(1L);
                if (i19 > 0) {
                    bigIntegerValueOf = h(bigIntegerValueOf, i19);
                }
                if (i41 < 2) {
                    z6 = false;
                } else {
                    z6 = false;
                }
                byteArray = bigIntegerValueOf.toByteArray();
                i21 = 0;
                while (i20 < 4) {
                    i21 <<= 8;
                    if (i20 < byteArray.length) {
                        i21 |= byteArray[i20] & 255;
                    }
                }
                if (i19 != 0) {
                    iF = 32 - f(i21);
                } else {
                    iF = 1;
                }
                i22 = (iF + i16) & 31;
                if (i22 != 0) {
                    i22 = 32 - i22;
                }
                if (i22 <= 4) {
                    if (i22 < 4) {
                        i23 = i22 + 28;
                    }
                    if (i18 > 0) {
                        bigIntegerE = bigIntegerE.shiftLeft(i18);
                    }
                    if (i16 > 0) {
                        bigIntegerValueOf = bigIntegerValueOf.shiftLeft(i16);
                    }
                    if (z3) {
                        i13--;
                        bigIntegerE = bigIntegerE.multiply(BigInteger.valueOf(10L));
                        if (z5) {
                            bigIntegerMultiply = bigIntegerMultiply.multiply(BigInteger.valueOf(10L));
                        }
                        i8 = i10;
                    }
                    if (i8 > 0) {
                    }
                    c3 = 1;
                    if (z5) {
                        if (i17 > 0) {
                            bigIntegerMultiply = bigIntegerMultiply.shiftLeft(i17);
                        }
                        if (z6) {
                            bigIntegerMultiply2 = bigIntegerMultiply.shiftLeft(1);
                        } else {
                            bigIntegerMultiply2 = bigIntegerMultiply;
                        }
                        i26 = 1;
                        while (true) {
                            BigInteger[] bigIntegerArrDivideAndRemainder9 = bigIntegerE.divideAndRemainder(bigIntegerValueOf);
                            bigInteger2 = bigIntegerArrDivideAndRemainder9[c3];
                            cIntValue2 = (char) (bigIntegerArrDivideAndRemainder9[0].intValue() + 48);
                            iCompareTo2 = bigInteger2.compareTo(bigIntegerMultiply);
                            bigIntegerSubtract = bigIntegerValueOf.subtract(bigIntegerMultiply2);
                            if (bigIntegerSubtract.signum() <= 0) {
                                iCompareTo3 = 1;
                            } else {
                                iCompareTo3 = bigInteger2.compareTo(bigIntegerSubtract);
                            }
                            if (iCompareTo3 == 0) {
                                i27 = 1;
                            } else {
                                i27 = 1;
                            }
                            if (iCompareTo2 >= 0) {
                            }
                            if (iCompareTo3 <= 0) {
                                i28 = 1;
                            } else {
                                iCompareTo4 = bigInteger2.shiftLeft(1).compareTo(bigIntegerValueOf);
                                if (iCompareTo4 > 0) {
                                    c4 = (char) (cIntValue2 + 1);
                                    if (cIntValue2 == '9') {
                                        sb.append('9');
                                        if (i(sb)) {
                                            i13++;
                                            sb.append('1');
                                        }
                                        return i13 + 1;
                                    }
                                    i28 = 1;
                                    cIntValue2 = c4;
                                } else if (iCompareTo4 != 0) {
                                    if ((cIntValue2 & 1) != 1) {
                                    }
                                    c4 = (char) (cIntValue2 + 1);
                                    if (cIntValue2 == '9') {
                                        sb.append('9');
                                        if (i(sb)) {
                                            i13++;
                                            sb.append('1');
                                        }
                                        return i13 + 1;
                                    }
                                    i28 = 1;
                                    cIntValue2 = c4;
                                } else {
                                    i28 = 1;
                                }
                            }
                            sb.append(cIntValue2);
                            return i13 + i28;
                            i26++;
                            c3 = 1;
                        }
                    } else {
                        i24 = 1;
                        i25 = 1;
                        while (true) {
                            BigInteger[] bigIntegerArrDivideAndRemainder10 = bigIntegerE.divideAndRemainder(bigIntegerValueOf);
                            bigInteger = bigIntegerArrDivideAndRemainder10[i24];
                            cIntValue = (char) (bigIntegerArrDivideAndRemainder10[0].intValue() + 48);
                            sb.append(cIntValue);
                            if (i25 >= i8) {
                                break;
                                break;
                            }
                            i25++;
                            bigIntegerE = bigInteger.multiply(BigInteger.valueOf(10L));
                            i24 = i24;
                        }
                        cIntValue2 = cIntValue;
                        bigInteger2 = bigInteger;
                    }
                    iCompareTo = bigInteger2.shiftLeft(i24).compareTo(bigIntegerValueOf);
                    if (iCompareTo > 0) {
                        if (i(sb)) {
                            sb.append('1');
                            return i13 + 2;
                        }
                    } else if (i(sb)) {
                        sb.append('1');
                        return i13 + 2;
                    }
                    return i13 + 1;
                }
                i23 = i22 - 4;
                i18 += i23;
                i17 += i23;
                i16 += i23;
                if (i18 > 0) {
                    bigIntegerE = bigIntegerE.shiftLeft(i18);
                }
                if (i16 > 0) {
                    bigIntegerValueOf = bigIntegerValueOf.shiftLeft(i16);
                }
                if (z3) {
                    i13--;
                    bigIntegerE = bigIntegerE.multiply(BigInteger.valueOf(10L));
                    if (z5) {
                        bigIntegerMultiply = bigIntegerMultiply.multiply(BigInteger.valueOf(10L));
                    }
                    i8 = i10;
                }
                if (i8 > 0) {
                }
                c3 = 1;
                if (z5) {
                    if (i17 > 0) {
                        bigIntegerMultiply = bigIntegerMultiply.shiftLeft(i17);
                    }
                    if (z6) {
                        bigIntegerMultiply2 = bigIntegerMultiply.shiftLeft(1);
                    } else {
                        bigIntegerMultiply2 = bigIntegerMultiply;
                    }
                    i26 = 1;
                    while (true) {
                        BigInteger[] bigIntegerArrDivideAndRemainder11 = bigIntegerE.divideAndRemainder(bigIntegerValueOf);
                        bigInteger2 = bigIntegerArrDivideAndRemainder11[c3];
                        cIntValue2 = (char) (bigIntegerArrDivideAndRemainder11[0].intValue() + 48);
                        iCompareTo2 = bigInteger2.compareTo(bigIntegerMultiply);
                        bigIntegerSubtract = bigIntegerValueOf.subtract(bigIntegerMultiply2);
                        if (bigIntegerSubtract.signum() <= 0) {
                            iCompareTo3 = 1;
                        } else {
                            iCompareTo3 = bigInteger2.compareTo(bigIntegerSubtract);
                        }
                        if (iCompareTo3 == 0) {
                            i27 = 1;
                        } else {
                            i27 = 1;
                        }
                        if (iCompareTo2 >= 0) {
                        }
                        if (iCompareTo3 <= 0) {
                            i28 = 1;
                        } else {
                            iCompareTo4 = bigInteger2.shiftLeft(1).compareTo(bigIntegerValueOf);
                            if (iCompareTo4 > 0) {
                                c4 = (char) (cIntValue2 + 1);
                                if (cIntValue2 == '9') {
                                    sb.append('9');
                                    if (i(sb)) {
                                        i13++;
                                        sb.append('1');
                                    }
                                    return i13 + 1;
                                }
                                i28 = 1;
                                cIntValue2 = c4;
                            } else if (iCompareTo4 != 0) {
                                if ((cIntValue2 & 1) != 1) {
                                }
                                c4 = (char) (cIntValue2 + 1);
                                if (cIntValue2 == '9') {
                                    sb.append('9');
                                    if (i(sb)) {
                                        i13++;
                                        sb.append('1');
                                    }
                                    return i13 + 1;
                                }
                                i28 = 1;
                                cIntValue2 = c4;
                            } else {
                                i28 = 1;
                            }
                        }
                        sb.append(cIntValue2);
                        return i13 + i28;
                        i26++;
                        c3 = 1;
                    }
                } else {
                    i24 = 1;
                    i25 = 1;
                    while (true) {
                        BigInteger[] bigIntegerArrDivideAndRemainder12 = bigIntegerE.divideAndRemainder(bigIntegerValueOf);
                        bigInteger = bigIntegerArrDivideAndRemainder12[i24];
                        cIntValue = (char) (bigIntegerArrDivideAndRemainder12[0].intValue() + 48);
                        sb.append(cIntValue);
                        if (i25 >= i8) {
                            break;
                            break;
                        }
                        i25++;
                        bigIntegerE = bigInteger.multiply(BigInteger.valueOf(10L));
                        i24 = i24;
                    }
                    cIntValue2 = cIntValue;
                    bigInteger2 = bigInteger;
                }
                iCompareTo = bigInteger2.shiftLeft(i24).compareTo(bigIntegerValueOf);
                if (iCompareTo > 0) {
                    if (i(sb)) {
                        sb.append('1');
                        return i13 + 2;
                    }
                } else if (i(sb)) {
                    sb.append('1');
                    return i13 + 2;
                }
                return i13 + 1;
            }
            z8 = false;
            i9 = i2 <= 0 ? 1 : i2;
            z5 = z8;
            i8 = i9;
            i10 = i8;
            if (i8 < 0) {
                z3 = z3;
                i4 = i4;
                i8 = i8;
                dJ = dJ;
                i11 = i44;
                i5 = i5;
                i12 = i7;
                c2 = 0;
                iArr = iArr3;
                i8 = i8;
                i13 = i11;
            } else {
                z3 = z3;
                i4 = i4;
                i8 = i8;
                dJ = dJ;
                i11 = i44;
                i5 = i5;
                i12 = i7;
                c2 = 0;
                iArr = iArr3;
                i8 = i8;
                i13 = i11;
            }
            i14 = iArr2[c2];
            if (i14 < 0) {
            }
            if (z5) {
                if (i41 < 2) {
                    if (z2) {
                        i33 = i14 + 1075;
                    } else {
                        i33 = 54 - iArr[0];
                    }
                    i32 = i33;
                    i15 = i6;
                    i17 = i4;
                    i19 = i12;
                } else {
                    i31 = i8 - 1;
                    if (i6 >= i31) {
                        i19 = i12;
                        int i58 = i6;
                        i6 -= i31;
                        i15 = i58;
                    } else {
                        int i59 = i31 - i6;
                        i19 = i12 + i59;
                        i15 = i6 + i59;
                        i6 = 0;
                    }
                    if (i8 < 0) {
                        i17 = i4 - i8;
                        i32 = 0;
                    } else {
                        i32 = i8;
                        i17 = i4;
                    }
                }
                i18 = i4 + i32;
                i16 = i5 + i32;
                bigIntegerMultiply = BigInteger.valueOf(1L);
            } else {
                bigIntegerMultiply = null;
                i15 = i6;
                i16 = i5;
                i17 = i4;
                i18 = i17;
                i19 = i12;
            }
            if (i17 > 0) {
                if (i17 < i16) {
                    i30 = i17;
                } else {
                    i30 = i16;
                }
                i18 -= i30;
                i17 -= i30;
                i16 -= i30;
            }
            if (i15 > 0) {
                if (z5) {
                    if (i6 > 0) {
                        bigIntegerMultiply = h(bigIntegerMultiply, i6);
                        bigIntegerE = bigIntegerMultiply.multiply(bigIntegerE);
                    }
                    i29 = i15 - i6;
                    if (i29 != 0) {
                        bigIntegerE = h(bigIntegerE, i29);
                    }
                } else {
                    bigIntegerE = h(bigIntegerE, i15);
                }
            }
            bigIntegerValueOf = BigInteger.valueOf(1L);
            if (i19 > 0) {
                bigIntegerValueOf = h(bigIntegerValueOf, i19);
            }
            if (i41 < 2) {
                z6 = false;
            } else {
                z6 = false;
            }
            byteArray = bigIntegerValueOf.toByteArray();
            i21 = 0;
            while (i20 < 4) {
                i21 <<= 8;
                if (i20 < byteArray.length) {
                    i21 |= byteArray[i20] & 255;
                }
            }
            if (i19 != 0) {
                iF = 32 - f(i21);
            } else {
                iF = 1;
            }
            i22 = (iF + i16) & 31;
            if (i22 != 0) {
                i22 = 32 - i22;
            }
            if (i22 <= 4) {
                if (i22 < 4) {
                    i23 = i22 + 28;
                }
                if (i18 > 0) {
                    bigIntegerE = bigIntegerE.shiftLeft(i18);
                }
                if (i16 > 0) {
                    bigIntegerValueOf = bigIntegerValueOf.shiftLeft(i16);
                }
                if (z3) {
                    i13--;
                    bigIntegerE = bigIntegerE.multiply(BigInteger.valueOf(10L));
                    if (z5) {
                        bigIntegerMultiply = bigIntegerMultiply.multiply(BigInteger.valueOf(10L));
                    }
                    i8 = i10;
                }
                if (i8 > 0) {
                }
                c3 = 1;
                if (z5) {
                    if (i17 > 0) {
                        bigIntegerMultiply = bigIntegerMultiply.shiftLeft(i17);
                    }
                    if (z6) {
                        bigIntegerMultiply2 = bigIntegerMultiply.shiftLeft(1);
                    } else {
                        bigIntegerMultiply2 = bigIntegerMultiply;
                    }
                    i26 = 1;
                    while (true) {
                        BigInteger[] bigIntegerArrDivideAndRemainder13 = bigIntegerE.divideAndRemainder(bigIntegerValueOf);
                        bigInteger2 = bigIntegerArrDivideAndRemainder13[c3];
                        cIntValue2 = (char) (bigIntegerArrDivideAndRemainder13[0].intValue() + 48);
                        iCompareTo2 = bigInteger2.compareTo(bigIntegerMultiply);
                        bigIntegerSubtract = bigIntegerValueOf.subtract(bigIntegerMultiply2);
                        if (bigIntegerSubtract.signum() <= 0) {
                            iCompareTo3 = 1;
                        } else {
                            iCompareTo3 = bigInteger2.compareTo(bigIntegerSubtract);
                        }
                        if (iCompareTo3 == 0) {
                            i27 = 1;
                        } else {
                            i27 = 1;
                        }
                        if (iCompareTo2 >= 0) {
                        }
                        if (iCompareTo3 <= 0) {
                            i28 = 1;
                        } else {
                            iCompareTo4 = bigInteger2.shiftLeft(1).compareTo(bigIntegerValueOf);
                            if (iCompareTo4 > 0) {
                                c4 = (char) (cIntValue2 + 1);
                                if (cIntValue2 == '9') {
                                    sb.append('9');
                                    if (i(sb)) {
                                        i13++;
                                        sb.append('1');
                                    }
                                    return i13 + 1;
                                }
                                i28 = 1;
                                cIntValue2 = c4;
                            } else if (iCompareTo4 != 0) {
                                if ((cIntValue2 & 1) != 1) {
                                }
                                c4 = (char) (cIntValue2 + 1);
                                if (cIntValue2 == '9') {
                                    sb.append('9');
                                    if (i(sb)) {
                                        i13++;
                                        sb.append('1');
                                    }
                                    return i13 + 1;
                                }
                                i28 = 1;
                                cIntValue2 = c4;
                            } else {
                                i28 = 1;
                            }
                        }
                        sb.append(cIntValue2);
                        return i13 + i28;
                        i26++;
                        c3 = 1;
                    }
                } else {
                    i24 = 1;
                    i25 = 1;
                    while (true) {
                        BigInteger[] bigIntegerArrDivideAndRemainder14 = bigIntegerE.divideAndRemainder(bigIntegerValueOf);
                        bigInteger = bigIntegerArrDivideAndRemainder14[i24];
                        cIntValue = (char) (bigIntegerArrDivideAndRemainder14[0].intValue() + 48);
                        sb.append(cIntValue);
                        if (i25 >= i8) {
                            break;
                            break;
                        }
                        i25++;
                        bigIntegerE = bigInteger.multiply(BigInteger.valueOf(10L));
                        i24 = i24;
                    }
                    cIntValue2 = cIntValue;
                    bigInteger2 = bigInteger;
                }
                iCompareTo = bigInteger2.shiftLeft(i24).compareTo(bigIntegerValueOf);
                if (iCompareTo > 0) {
                    if (i(sb)) {
                        sb.append('1');
                        return i13 + 2;
                    }
                } else if (i(sb)) {
                    sb.append('1');
                    return i13 + 2;
                }
                return i13 + 1;
            }
            i23 = i22 - 4;
            i18 += i23;
            i17 += i23;
            i16 += i23;
            if (i18 > 0) {
                bigIntegerE = bigIntegerE.shiftLeft(i18);
            }
            if (i16 > 0) {
                bigIntegerValueOf = bigIntegerValueOf.shiftLeft(i16);
            }
            if (z3) {
                i13--;
                bigIntegerE = bigIntegerE.multiply(BigInteger.valueOf(10L));
                if (z5) {
                    bigIntegerMultiply = bigIntegerMultiply.multiply(BigInteger.valueOf(10L));
                }
                i8 = i10;
            }
            if (i8 > 0) {
            }
            c3 = 1;
            if (z5) {
                if (i17 > 0) {
                    bigIntegerMultiply = bigIntegerMultiply.shiftLeft(i17);
                }
                if (z6) {
                    bigIntegerMultiply2 = bigIntegerMultiply.shiftLeft(1);
                } else {
                    bigIntegerMultiply2 = bigIntegerMultiply;
                }
                i26 = 1;
                while (true) {
                    BigInteger[] bigIntegerArrDivideAndRemainder15 = bigIntegerE.divideAndRemainder(bigIntegerValueOf);
                    bigInteger2 = bigIntegerArrDivideAndRemainder15[c3];
                    cIntValue2 = (char) (bigIntegerArrDivideAndRemainder15[0].intValue() + 48);
                    iCompareTo2 = bigInteger2.compareTo(bigIntegerMultiply);
                    bigIntegerSubtract = bigIntegerValueOf.subtract(bigIntegerMultiply2);
                    if (bigIntegerSubtract.signum() <= 0) {
                        iCompareTo3 = 1;
                    } else {
                        iCompareTo3 = bigInteger2.compareTo(bigIntegerSubtract);
                    }
                    if (iCompareTo3 == 0) {
                        i27 = 1;
                    } else {
                        i27 = 1;
                    }
                    if (iCompareTo2 >= 0) {
                    }
                    if (iCompareTo3 <= 0) {
                        i28 = 1;
                    } else {
                        iCompareTo4 = bigInteger2.shiftLeft(1).compareTo(bigIntegerValueOf);
                        if (iCompareTo4 > 0) {
                            c4 = (char) (cIntValue2 + 1);
                            if (cIntValue2 == '9') {
                                sb.append('9');
                                if (i(sb)) {
                                    i13++;
                                    sb.append('1');
                                }
                                return i13 + 1;
                            }
                            i28 = 1;
                            cIntValue2 = c4;
                        } else if (iCompareTo4 != 0) {
                            if ((cIntValue2 & 1) != 1) {
                            }
                            c4 = (char) (cIntValue2 + 1);
                            if (cIntValue2 == '9') {
                                sb.append('9');
                                if (i(sb)) {
                                    i13++;
                                    sb.append('1');
                                }
                                return i13 + 1;
                            }
                            i28 = 1;
                            cIntValue2 = c4;
                        } else {
                            i28 = 1;
                        }
                    }
                    sb.append(cIntValue2);
                    return i13 + i28;
                    i26++;
                    c3 = 1;
                }
            } else {
                i24 = 1;
                i25 = 1;
                while (true) {
                    BigInteger[] bigIntegerArrDivideAndRemainder16 = bigIntegerE.divideAndRemainder(bigIntegerValueOf);
                    bigInteger = bigIntegerArrDivideAndRemainder16[i24];
                    cIntValue = (char) (bigIntegerArrDivideAndRemainder16[0].intValue() + 48);
                    sb.append(cIntValue);
                    if (i25 >= i8) {
                        break;
                        break;
                    }
                    i25++;
                    bigIntegerE = bigInteger.multiply(BigInteger.valueOf(10L));
                    i24 = i24;
                }
                cIntValue2 = cIntValue;
                bigInteger2 = bigInteger;
            }
            iCompareTo = bigInteger2.shiftLeft(i24).compareTo(bigIntegerValueOf);
            if (iCompareTo > 0) {
                if (i(sb)) {
                    sb.append('1');
                    return i13 + 2;
                }
            } else if (i(sb)) {
                sb.append('1');
                return i13 + 2;
            }
            return i13 + 1;
        }
        i8 = -1;
        i9 = 0;
        i10 = -1;
        z5 = true;
        if (i8 < 0) {
            z3 = z3;
            i4 = i4;
            i8 = i8;
            dJ = dJ;
            i11 = i44;
            i5 = i5;
            i12 = i7;
            c2 = 0;
            iArr = iArr3;
            i8 = i8;
            i13 = i11;
        } else {
            z3 = z3;
            i4 = i4;
            i8 = i8;
            dJ = dJ;
            i11 = i44;
            i5 = i5;
            i12 = i7;
            c2 = 0;
            iArr = iArr3;
            i8 = i8;
            i13 = i11;
        }
        i14 = iArr2[c2];
        if (i14 < 0) {
        }
        if (z5) {
            if (i41 < 2) {
                if (z2) {
                    i33 = i14 + 1075;
                } else {
                    i33 = 54 - iArr[0];
                }
                i32 = i33;
                i15 = i6;
                i17 = i4;
                i19 = i12;
            } else {
                i31 = i8 - 1;
                if (i6 >= i31) {
                    i19 = i12;
                    int i510 = i6;
                    i6 -= i31;
                    i15 = i510;
                } else {
                    int i511 = i31 - i6;
                    i19 = i12 + i511;
                    i15 = i6 + i511;
                    i6 = 0;
                }
                if (i8 < 0) {
                    i17 = i4 - i8;
                    i32 = 0;
                } else {
                    i32 = i8;
                    i17 = i4;
                }
            }
            i18 = i4 + i32;
            i16 = i5 + i32;
            bigIntegerMultiply = BigInteger.valueOf(1L);
        } else {
            bigIntegerMultiply = null;
            i15 = i6;
            i16 = i5;
            i17 = i4;
            i18 = i17;
            i19 = i12;
        }
        if (i17 > 0) {
            if (i17 < i16) {
                i30 = i17;
            } else {
                i30 = i16;
            }
            i18 -= i30;
            i17 -= i30;
            i16 -= i30;
        }
        if (i15 > 0) {
            if (z5) {
                if (i6 > 0) {
                    bigIntegerMultiply = h(bigIntegerMultiply, i6);
                    bigIntegerE = bigIntegerMultiply.multiply(bigIntegerE);
                }
                i29 = i15 - i6;
                if (i29 != 0) {
                    bigIntegerE = h(bigIntegerE, i29);
                }
            } else {
                bigIntegerE = h(bigIntegerE, i15);
            }
        }
        bigIntegerValueOf = BigInteger.valueOf(1L);
        if (i19 > 0) {
            bigIntegerValueOf = h(bigIntegerValueOf, i19);
        }
        if (i41 < 2) {
            z6 = false;
        } else {
            z6 = false;
        }
        byteArray = bigIntegerValueOf.toByteArray();
        i21 = 0;
        while (i20 < 4) {
            i21 <<= 8;
            if (i20 < byteArray.length) {
                i21 |= byteArray[i20] & 255;
            }
        }
        if (i19 != 0) {
            iF = 32 - f(i21);
        } else {
            iF = 1;
        }
        i22 = (iF + i16) & 31;
        if (i22 != 0) {
            i22 = 32 - i22;
        }
        if (i22 <= 4) {
            if (i22 < 4) {
                i23 = i22 + 28;
            }
            if (i18 > 0) {
                bigIntegerE = bigIntegerE.shiftLeft(i18);
            }
            if (i16 > 0) {
                bigIntegerValueOf = bigIntegerValueOf.shiftLeft(i16);
            }
            if (z3) {
                i13--;
                bigIntegerE = bigIntegerE.multiply(BigInteger.valueOf(10L));
                if (z5) {
                    bigIntegerMultiply = bigIntegerMultiply.multiply(BigInteger.valueOf(10L));
                }
                i8 = i10;
            }
            if (i8 > 0) {
            }
            c3 = 1;
            if (z5) {
                if (i17 > 0) {
                    bigIntegerMultiply = bigIntegerMultiply.shiftLeft(i17);
                }
                if (z6) {
                    bigIntegerMultiply2 = bigIntegerMultiply.shiftLeft(1);
                } else {
                    bigIntegerMultiply2 = bigIntegerMultiply;
                }
                i26 = 1;
                while (true) {
                    BigInteger[] bigIntegerArrDivideAndRemainder17 = bigIntegerE.divideAndRemainder(bigIntegerValueOf);
                    bigInteger2 = bigIntegerArrDivideAndRemainder17[c3];
                    cIntValue2 = (char) (bigIntegerArrDivideAndRemainder17[0].intValue() + 48);
                    iCompareTo2 = bigInteger2.compareTo(bigIntegerMultiply);
                    bigIntegerSubtract = bigIntegerValueOf.subtract(bigIntegerMultiply2);
                    if (bigIntegerSubtract.signum() <= 0) {
                        iCompareTo3 = 1;
                    } else {
                        iCompareTo3 = bigInteger2.compareTo(bigIntegerSubtract);
                    }
                    if (iCompareTo3 == 0) {
                        i27 = 1;
                    } else {
                        i27 = 1;
                    }
                    if (iCompareTo2 >= 0) {
                    }
                    if (iCompareTo3 <= 0) {
                        i28 = 1;
                    } else {
                        iCompareTo4 = bigInteger2.shiftLeft(1).compareTo(bigIntegerValueOf);
                        if (iCompareTo4 > 0) {
                            c4 = (char) (cIntValue2 + 1);
                            if (cIntValue2 == '9') {
                                sb.append('9');
                                if (i(sb)) {
                                    i13++;
                                    sb.append('1');
                                }
                                return i13 + 1;
                            }
                            i28 = 1;
                            cIntValue2 = c4;
                        } else if (iCompareTo4 != 0) {
                            if ((cIntValue2 & 1) != 1) {
                            }
                            c4 = (char) (cIntValue2 + 1);
                            if (cIntValue2 == '9') {
                                sb.append('9');
                                if (i(sb)) {
                                    i13++;
                                    sb.append('1');
                                }
                                return i13 + 1;
                            }
                            i28 = 1;
                            cIntValue2 = c4;
                        } else {
                            i28 = 1;
                        }
                    }
                    sb.append(cIntValue2);
                    return i13 + i28;
                    i26++;
                    c3 = 1;
                }
            } else {
                i24 = 1;
                i25 = 1;
                while (true) {
                    BigInteger[] bigIntegerArrDivideAndRemainder18 = bigIntegerE.divideAndRemainder(bigIntegerValueOf);
                    bigInteger = bigIntegerArrDivideAndRemainder18[i24];
                    cIntValue = (char) (bigIntegerArrDivideAndRemainder18[0].intValue() + 48);
                    sb.append(cIntValue);
                    if (i25 >= i8) {
                        break;
                        break;
                    }
                    i25++;
                    bigIntegerE = bigInteger.multiply(BigInteger.valueOf(10L));
                    i24 = i24;
                }
                cIntValue2 = cIntValue;
                bigInteger2 = bigInteger;
            }
            iCompareTo = bigInteger2.shiftLeft(i24).compareTo(bigIntegerValueOf);
            if (iCompareTo > 0) {
                if (i(sb)) {
                    sb.append('1');
                    return i13 + 2;
                }
            } else if (i(sb)) {
                sb.append('1');
                return i13 + 2;
            }
            return i13 + 1;
        }
        i23 = i22 - 4;
        i18 += i23;
        i17 += i23;
        i16 += i23;
        if (i18 > 0) {
            bigIntegerE = bigIntegerE.shiftLeft(i18);
        }
        if (i16 > 0) {
            bigIntegerValueOf = bigIntegerValueOf.shiftLeft(i16);
        }
        if (z3) {
            i13--;
            bigIntegerE = bigIntegerE.multiply(BigInteger.valueOf(10L));
            if (z5) {
                bigIntegerMultiply = bigIntegerMultiply.multiply(BigInteger.valueOf(10L));
            }
            i8 = i10;
        }
        if (i8 > 0) {
        }
        c3 = 1;
        if (z5) {
            if (i17 > 0) {
                bigIntegerMultiply = bigIntegerMultiply.shiftLeft(i17);
            }
            if (z6) {
                bigIntegerMultiply2 = bigIntegerMultiply.shiftLeft(1);
            } else {
                bigIntegerMultiply2 = bigIntegerMultiply;
            }
            i26 = 1;
            while (true) {
                BigInteger[] bigIntegerArrDivideAndRemainder19 = bigIntegerE.divideAndRemainder(bigIntegerValueOf);
                bigInteger2 = bigIntegerArrDivideAndRemainder19[c3];
                cIntValue2 = (char) (bigIntegerArrDivideAndRemainder19[0].intValue() + 48);
                iCompareTo2 = bigInteger2.compareTo(bigIntegerMultiply);
                bigIntegerSubtract = bigIntegerValueOf.subtract(bigIntegerMultiply2);
                if (bigIntegerSubtract.signum() <= 0) {
                    iCompareTo3 = 1;
                } else {
                    iCompareTo3 = bigInteger2.compareTo(bigIntegerSubtract);
                }
                if (iCompareTo3 == 0) {
                    i27 = 1;
                } else {
                    i27 = 1;
                }
                if (iCompareTo2 >= 0) {
                }
                if (iCompareTo3 <= 0) {
                    i28 = 1;
                } else {
                    iCompareTo4 = bigInteger2.shiftLeft(1).compareTo(bigIntegerValueOf);
                    if (iCompareTo4 > 0) {
                        c4 = (char) (cIntValue2 + 1);
                        if (cIntValue2 == '9') {
                            sb.append('9');
                            if (i(sb)) {
                                i13++;
                                sb.append('1');
                            }
                            return i13 + 1;
                        }
                        i28 = 1;
                        cIntValue2 = c4;
                    } else if (iCompareTo4 != 0) {
                        if ((cIntValue2 & 1) != 1) {
                        }
                        c4 = (char) (cIntValue2 + 1);
                        if (cIntValue2 == '9') {
                            sb.append('9');
                            if (i(sb)) {
                                i13++;
                                sb.append('1');
                            }
                            return i13 + 1;
                        }
                        i28 = 1;
                        cIntValue2 = c4;
                    } else {
                        i28 = 1;
                    }
                }
                sb.append(cIntValue2);
                return i13 + i28;
                i26++;
                c3 = 1;
            }
        } else {
            i24 = 1;
            i25 = 1;
            while (true) {
                BigInteger[] bigIntegerArrDivideAndRemainder110 = bigIntegerE.divideAndRemainder(bigIntegerValueOf);
                bigInteger = bigIntegerArrDivideAndRemainder110[i24];
                cIntValue = (char) (bigIntegerArrDivideAndRemainder110[0].intValue() + 48);
                sb.append(cIntValue);
                if (i25 >= i8) {
                    break;
                    break;
                }
                i25++;
                bigIntegerE = bigInteger.multiply(BigInteger.valueOf(10L));
                i24 = i24;
            }
            cIntValue2 = cIntValue;
            bigInteger2 = bigInteger;
        }
        iCompareTo = bigInteger2.shiftLeft(i24).compareTo(bigIntegerValueOf);
        if (iCompareTo > 0) {
            if (i(sb)) {
                sb.append('1');
                return i13 + 2;
            }
        } else if (i(sb)) {
            sb.append('1');
            return i13 + 2;
        }
        return i13 + 1;
    }

    /* JADX WARN: Code restructure failed: missing block: B:76:0x0123, code lost:
    
        if (r8 > 0) goto L77;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static String c(int i, double d) {
        boolean z;
        String string;
        BigInteger bigIntegerMultiply;
        if (2 > i || i > 36) {
            throw new IllegalArgumentException("Bad base: " + i);
        }
        if (Double.isNaN(d)) {
            return "NaN";
        }
        if (Double.isInfinite(d)) {
            return d > 0.0d ? "Infinity" : "-Infinity";
        }
        if (d == 0.0d) {
            return "0";
        }
        if (d >= 0.0d) {
            z = false;
        } else {
            d = -d;
            z = true;
        }
        double dFloor = Math.floor(d);
        long j = (long) dFloor;
        if (j == dFloor) {
            if (z) {
                j = -j;
            }
            string = Long.toString(j, i);
        } else {
            long jDoubleToLongBits = Double.doubleToLongBits(dFloor);
            int i2 = ((int) (jDoubleToLongBits >> 52)) & 2047;
            long j2 = i2 == 0 ? (jDoubleToLongBits & 4503599627370495L) << 1 : (jDoubleToLongBits & 4503599627370495L) | 4503599627370496L;
            if (z) {
                j2 = -j2;
            }
            int i3 = i2 - 1075;
            BigInteger bigIntegerValueOf = BigInteger.valueOf(j2);
            if (i3 > 0) {
                bigIntegerValueOf = bigIntegerValueOf.shiftLeft(i3);
            } else if (i3 < 0) {
                bigIntegerValueOf = bigIntegerValueOf.shiftRight(-i3);
            }
            string = bigIntegerValueOf.toString(i);
        }
        if (d == dFloor) {
            return string;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(string);
        sb.append('.');
        double d2 = d - dFloor;
        long jDoubleToLongBits2 = Double.doubleToLongBits(d);
        int i4 = (int) (jDoubleToLongBits2 >> 32);
        int i5 = (int) jDoubleToLongBits2;
        int[] iArr = new int[1];
        BigInteger bigIntegerE = e(d2, iArr, new int[1]);
        int i6 = -((i4 >>> 20) & 2047);
        if (i6 == 0) {
            i6 = -1;
        }
        int i7 = i6 + 1076;
        BigInteger bigIntegerValueOf2 = BigInteger.valueOf(1L);
        if (i5 == 0 && (1048575 & i4) == 0 && (i4 & 2145386496) != 0) {
            i7 = i6 + 1077;
            bigIntegerMultiply = BigInteger.valueOf(2L);
        } else {
            bigIntegerMultiply = bigIntegerValueOf2;
        }
        BigInteger bigIntegerShiftLeft = bigIntegerE.shiftLeft(iArr[0] + i7);
        BigInteger bigIntegerShiftLeft2 = BigInteger.valueOf(1L).shiftLeft(i7);
        BigInteger bigIntegerValueOf3 = BigInteger.valueOf(i);
        boolean z2 = false;
        while (true) {
            BigInteger[] bigIntegerArrDivideAndRemainder = bigIntegerShiftLeft.multiply(bigIntegerValueOf3).divideAndRemainder(bigIntegerShiftLeft2);
            BigInteger bigIntegerShiftLeft3 = bigIntegerArrDivideAndRemainder[1];
            int iIntValue = (char) bigIntegerArrDivideAndRemainder[0].intValue();
            if (bigIntegerValueOf2 == bigIntegerMultiply) {
                bigIntegerMultiply = bigIntegerValueOf2.multiply(bigIntegerValueOf3);
                bigIntegerValueOf2 = bigIntegerMultiply;
            } else {
                BigInteger bigIntegerMultiply2 = bigIntegerValueOf2.multiply(bigIntegerValueOf3);
                bigIntegerMultiply = bigIntegerMultiply.multiply(bigIntegerValueOf3);
                bigIntegerValueOf2 = bigIntegerMultiply2;
            }
            int iCompareTo = bigIntegerShiftLeft3.compareTo(bigIntegerValueOf2);
            BigInteger bigIntegerSubtract = bigIntegerShiftLeft2.subtract(bigIntegerMultiply);
            int iCompareTo2 = bigIntegerSubtract.signum() <= 0 ? 1 : bigIntegerShiftLeft3.compareTo(bigIntegerSubtract);
            if (iCompareTo2 == 0 && (i5 & 1) == 0) {
                if (iCompareTo > 0) {
                    iIntValue++;
                }
                z2 = true;
            } else {
                if (iCompareTo < 0 || (iCompareTo == 0 && (i5 & 1) == 0)) {
                    if (iCompareTo2 > 0) {
                        bigIntegerShiftLeft3 = bigIntegerShiftLeft3.shiftLeft(1);
                        if (bigIntegerShiftLeft3.compareTo(bigIntegerShiftLeft2) > 0) {
                        }
                    }
                    z2 = true;
                }
                iIntValue++;
                z2 = true;
            }
            sb.append(a(iIntValue));
            if (z2) {
                return sb.toString();
            }
            bigIntegerShiftLeft = bigIntegerShiftLeft3;
        }
    }

    /* JADX WARN: Code duplicated, block: B:36:0x0059  */
    public static void d(StringBuilder sb, int i, int i2, double d) {
        boolean z;
        boolean[] zArr = new boolean[1];
        if (i == 2 && (d >= 1.0E21d || d <= -1.0E21d)) {
            i = 0;
        }
        int iB = b(d, c[i], i >= 2, i2, zArr, sb);
        int length = sb.length();
        if (iB != 9999) {
            if (i != 0) {
                if (i != 1) {
                    if (i != 2) {
                        if (i != 3) {
                            if (i != 4) {
                                z = false;
                                i2 = 0;
                            } else if (iB < -5 || iB > i2) {
                            }
                        }
                    } else if (i2 >= 0) {
                        i2 += iB;
                    } else {
                        i2 = iB;
                    }
                    z = false;
                } else {
                    i2 = 0;
                }
                z = true;
            } else if (iB < -5 || iB > 21) {
                z = true;
                i2 = 0;
            } else {
                i2 = iB;
                z = false;
            }
            if (length < i2) {
                do {
                    sb.append('0');
                } while (sb.length() != i2);
                length = i2;
            }
            if (z) {
                if (length != 1) {
                    sb.insert(1, '.');
                }
                sb.append('e');
                int i3 = iB - 1;
                if (i3 >= 0) {
                    sb.append('+');
                }
                sb.append(i3);
            } else if (iB != length) {
                if (iB > 0) {
                    sb.insert(iB, '.');
                } else {
                    for (int i4 = 0; i4 < 1 - iB; i4++) {
                        sb.insert(0, '0');
                    }
                    sb.insert(1, '.');
                }
            }
        }
        if (zArr[0]) {
            if (m(d) == Integer.MIN_VALUE && n(d) == 0) {
                return;
            }
            if ((m(d) & 2146435072) != 2146435072 || (n(d) == 0 && (m(d) & 1048575) == 0)) {
                sb.insert(0, '-');
            }
        }
    }

    public static BigInteger e(double d, int[] iArr, int[] iArr2) {
        byte[] bArr;
        int iG;
        long jDoubleToLongBits = Double.doubleToLongBits(d);
        int i = (int) (jDoubleToLongBits >>> 32);
        int i2 = (int) jDoubleToLongBits;
        int i3 = 1048575 & i;
        int i4 = (i & Integer.MAX_VALUE) >>> 20;
        if (i4 != 0) {
            i3 |= 1048576;
        }
        int i5 = 1;
        if (i2 != 0) {
            bArr = new byte[8];
            iG = g(i2);
            int i6 = i2 >>> iG;
            if (iG != 0) {
                l(bArr, 4, i6 | (i3 << (32 - iG)));
                i3 >>= iG;
            } else {
                l(bArr, 4, i6);
            }
            l(bArr, 0, i3);
            if (i3 != 0) {
                i5 = 2;
            }
        } else {
            bArr = new byte[4];
            int iG2 = g(i3);
            i3 >>>= iG2;
            l(bArr, 0, i3);
            iG = iG2 + 32;
        }
        if (i4 != 0) {
            iArr[0] = (i4 - 1075) + iG;
            iArr2[0] = 53 - iG;
        } else {
            iArr[0] = (i4 - 1074) + iG;
            iArr2[0] = (i5 * 32) - f(i3);
        }
        return new BigInteger(bArr);
    }

    public static int f(int i) {
        int i2;
        if (((-65536) & i) == 0) {
            i <<= 16;
            i2 = 16;
        } else {
            i2 = 0;
        }
        if (((-16777216) & i) == 0) {
            i2 += 8;
            i <<= 8;
        }
        if (((-268435456) & i) == 0) {
            i2 += 4;
            i <<= 4;
        }
        if (((-1073741824) & i) == 0) {
            i2 += 2;
            i <<= 2;
        }
        if ((Integer.MIN_VALUE & i) == 0) {
            i2++;
            if ((i & 1073741824) == 0) {
                return 32;
            }
        }
        return i2;
    }

    public static int g(int i) {
        int i2 = 0;
        if ((i & 7) != 0) {
            if ((i & 1) != 0) {
                return 0;
            }
            return (i & 2) != 0 ? 1 : 2;
        }
        if ((65535 & i) == 0) {
            i >>>= 16;
            i2 = 16;
        }
        if ((i & 255) == 0) {
            i2 += 8;
            i >>>= 8;
        }
        if ((i & 15) == 0) {
            i2 += 4;
            i >>>= 4;
        }
        if ((i & 3) == 0) {
            i2 += 2;
            i >>>= 2;
        }
        if ((i & 1) == 0) {
            i2++;
            if (((i >>> 1) & 1) == 0) {
                return 32;
            }
        }
        return i2;
    }

    public static BigInteger h(BigInteger bigInteger, int i) {
        return bigInteger.multiply(BigInteger.valueOf(5L).pow(i));
    }

    public static boolean i(StringBuilder sb) {
        int length = sb.length();
        while (length != 0) {
            int i = length - 1;
            char cCharAt = sb.charAt(i);
            if (cCharAt != '9') {
                sb.setCharAt(i, (char) (cCharAt + 1));
                sb.setLength(length);
                return false;
            }
            length = i;
        }
        sb.setLength(0);
        return true;
    }

    public static double j(double d, int i) {
        return Double.longBitsToDouble((Double.doubleToLongBits(d) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (((long) i) << 32));
    }

    public static void k(StringBuilder sb) {
        int length = sb.length();
        while (true) {
            int i = length - 1;
            if (length <= 0 || sb.charAt(i) != '0') {
                break;
            } else {
                length = i;
            }
        }
        sb.setLength(length);
    }

    public static void l(byte[] bArr, int i, int i2) {
        bArr[i] = (byte) (i2 >> 24);
        bArr[i + 1] = (byte) (i2 >> 16);
        bArr[i + 2] = (byte) (i2 >> 8);
        bArr[i + 3] = (byte) i2;
    }

    public static int m(double d) {
        return (int) (Double.doubleToLongBits(d) >> 32);
    }

    public static int n(double d) {
        return (int) Double.doubleToLongBits(d);
    }
}

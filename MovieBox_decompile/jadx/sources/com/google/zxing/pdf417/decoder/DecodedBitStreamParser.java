package com.google.zxing.pdf417.decoder;

import com.google.zxing.FormatException;
import java.math.BigInteger;
import java.util.Arrays;

abstract class DecodedBitStreamParser {

    private static final char[] f32123a = ";<>@[\\]_`~!\r\t,:\n-.$/\"|*()?{}'".toCharArray();

    private static final char[] f32124b = "0123456789&\r\t,:#-.$/+%*=^".toCharArray();

    private static final BigInteger[] f32125c;

    private enum Mode {
        ALPHA,
        LOWER,
        MIXED,
        PUNCT,
        ALPHA_SHIFT,
        PUNCT_SHIFT
    }

    static class a {

        static final int[] f32126a;

        static {
            int[] iArr = new int[Mode.values().length];
            f32126a = iArr;
            try {
                iArr[Mode.ALPHA.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f32126a[Mode.LOWER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f32126a[Mode.MIXED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f32126a[Mode.PUNCT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f32126a[Mode.ALPHA_SHIFT.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f32126a[Mode.PUNCT_SHIFT.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    static {
        BigInteger[] bigIntegerArr = new BigInteger[16];
        f32125c = bigIntegerArr;
        bigIntegerArr[0] = BigInteger.ONE;
        BigInteger bigIntegerValueOf = BigInteger.valueOf(900L);
        bigIntegerArr[1] = bigIntegerValueOf;
        int i10 = 2;
        while (true) {
            BigInteger[] bigIntegerArr2 = f32125c;
            if (i10 >= bigIntegerArr2.length) {
                return;
            }
            bigIntegerArr2[i10] = bigIntegerArr2[i10 - 1].multiply(bigIntegerValueOf);
            i10++;
        }
    }

    private static int a(int i10, int[] iArr, int i11, kd.i iVar) throws FormatException {
        int i12;
        int i13;
        boolean z10 = false;
        while (i11 < iArr[0] && !z10) {
            while (true) {
                i12 = iArr[0];
                if (i11 >= i12 || iArr[i11] != 927) {
                    break;
                }
                iVar.f(iArr[i11 + 1]);
                i11 += 2;
            }
            if (i11 >= i12 || iArr[i11] >= 900) {
                z10 = true;
            } else {
                long j10 = 0;
                int i14 = 0;
                while (true) {
                    i13 = i11 + 1;
                    j10 = (j10 * 900) + ((long) iArr[i11]);
                    i14++;
                    if (i14 >= 5 || i13 >= iArr[0] || iArr[i13] >= 900) {
                        break;
                    }
                    i11 = i13;
                }
                if (i14 != 5 || (i10 != 924 && (i13 >= iArr[0] || iArr[i13] >= 900))) {
                    i13 -= i14;
                    while (i13 < iArr[0] && !z10) {
                        int i15 = i13 + 1;
                        int i16 = iArr[i13];
                        if (i16 < 900) {
                            iVar.a((byte) i16);
                            i13 = i15;
                        } else if (i16 == 927) {
                            i13 += 2;
                            iVar.f(iArr[i15]);
                        } else {
                            z10 = true;
                        }
                    }
                } else {
                    for (int i17 = 0; i17 < 6; i17++) {
                        iVar.a((byte) (j10 >> ((5 - i17) * 8)));
                    }
                }
                i11 = i13;
            }
        }
        return i11;
    }

    static kd.d b(int[] iArr, String str) throws FormatException {
        kd.i iVar = new kd.i(iArr.length * 2);
        int iG = g(iArr, 1, iVar);
        vd.c cVar = new vd.c();
        while (iG < iArr[0]) {
            int i10 = iG + 1;
            int i11 = iArr[iG];
            if (i11 != 913) {
                switch (i11) {
                    case EDITION_LEGACY_VALUE:
                        iG = g(iArr, i10, iVar);
                        continue;
                    case 901:
                        break;
                    case 902:
                        iG = f(iArr, i10, iVar);
                        continue;
                    default:
                        switch (i11) {
                            case 922:
                            case 923:
                                throw FormatException.getFormatInstance();
                            case 924:
                                break;
                            case 925:
                                iG += 2;
                                continue;
                            case 926:
                                iG += 3;
                                continue;
                            case 927:
                                iG += 2;
                                iVar.f(iArr[i10]);
                                continue;
                            case 928:
                                iG = d(iArr, i10, cVar);
                                continue;
                            default:
                                iG = g(iArr, iG, iVar);
                                continue;
                        }
                        break;
                }
                iG = a(i11, iArr, i10, iVar);
            } else {
                iG += 2;
                iVar.b((char) iArr[i10]);
            }
        }
        if (iVar.h() && cVar.a() == null) {
            throw FormatException.getFormatInstance();
        }
        kd.d dVar = new kd.d(null, iVar.toString(), null, str);
        dVar.p(cVar);
        return dVar;
    }

    private static String c(int[] iArr, int i10) throws FormatException {
        BigInteger bigIntegerAdd = BigInteger.ZERO;
        for (int i11 = 0; i11 < i10; i11++) {
            bigIntegerAdd = bigIntegerAdd.add(f32125c[(i10 - i11) - 1].multiply(BigInteger.valueOf(iArr[i11])));
        }
        String string = bigIntegerAdd.toString();
        if (string.charAt(0) == '1') {
            return string.substring(1);
        }
        throw FormatException.getFormatInstance();
    }

    static int d(int[] iArr, int i10, vd.c cVar) throws FormatException {
        int i11;
        if (i10 + 2 > iArr[0]) {
            throw FormatException.getFormatInstance();
        }
        int[] iArr2 = new int[2];
        int i12 = 0;
        while (i12 < 2) {
            iArr2[i12] = iArr[i10];
            i12++;
            i10++;
        }
        String strC = c(iArr2, 2);
        if (strC.isEmpty()) {
            cVar.k(0);
        } else {
            try {
                cVar.k(Integer.parseInt(strC));
            } catch (NumberFormatException unused) {
                throw FormatException.getFormatInstance();
            }
        }
        StringBuilder sb2 = new StringBuilder();
        while (i10 < iArr[0] && i10 < iArr.length && (i11 = iArr[i10]) != 922 && i11 != 923) {
            sb2.append(String.format("%03d", Integer.valueOf(i11)));
            i10++;
        }
        if (sb2.length() == 0) {
            throw FormatException.getFormatInstance();
        }
        cVar.e(sb2.toString());
        int i13 = iArr[i10] == 923 ? i10 + 1 : -1;
        while (i10 < iArr[0]) {
            int i14 = iArr[i10];
            if (i14 == 922) {
                i10++;
                cVar.h(true);
            } else {
                if (i14 != 923) {
                    throw FormatException.getFormatInstance();
                }
                switch (iArr[i10 + 1]) {
                    case 0:
                        kd.i iVar = new kd.i();
                        i10 = g(iArr, i10 + 2, iVar);
                        cVar.f(iVar.toString());
                        break;
                    case 1:
                        kd.i iVar2 = new kd.i();
                        i10 = f(iArr, i10 + 2, iVar2);
                        try {
                            cVar.j(Integer.parseInt(iVar2.toString()));
                        } catch (NumberFormatException unused2) {
                            throw FormatException.getFormatInstance();
                        }
                        break;
                    case 2:
                        kd.i iVar3 = new kd.i();
                        i10 = f(iArr, i10 + 2, iVar3);
                        try {
                            cVar.m(Long.parseLong(iVar3.toString()));
                        } catch (NumberFormatException unused3) {
                            throw FormatException.getFormatInstance();
                        }
                        break;
                    case 3:
                        kd.i iVar4 = new kd.i();
                        i10 = g(iArr, i10 + 2, iVar4);
                        cVar.l(iVar4.toString());
                        break;
                    case 4:
                        kd.i iVar5 = new kd.i();
                        i10 = g(iArr, i10 + 2, iVar5);
                        cVar.c(iVar5.toString());
                        break;
                    case 5:
                        kd.i iVar6 = new kd.i();
                        i10 = f(iArr, i10 + 2, iVar6);
                        try {
                            cVar.g(Long.parseLong(iVar6.toString()));
                        } catch (NumberFormatException unused4) {
                            throw FormatException.getFormatInstance();
                        }
                        break;
                    case 6:
                        kd.i iVar7 = new kd.i();
                        i10 = f(iArr, i10 + 2, iVar7);
                        try {
                            cVar.d(Integer.parseInt(iVar7.toString()));
                        } catch (NumberFormatException unused5) {
                            throw FormatException.getFormatInstance();
                        }
                        break;
                    default:
                        throw FormatException.getFormatInstance();
                }
            }
        }
        if (i13 != -1) {
            int i15 = i10 - i13;
            if (cVar.b()) {
                i15--;
            }
            if (i15 > 0) {
                cVar.i(Arrays.copyOfRange(iArr, i13, i15 + i13));
            }
        }
        return i10;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:48:0x009d  */
    private static Mode e(int[] iArr, int[] iArr2, int i10, kd.i iVar, Mode mode) {
        Mode mode2;
        int i11;
        char c10;
        char c11;
        Mode mode3;
        Mode mode4 = mode;
        Mode mode5 = mode4;
        Mode mode6 = mode5;
        int i12 = 0;
        while (i12 < i10) {
            int i13 = iArr[i12];
            char c12 = ' ';
            switch (a.f32126a[mode5.ordinal()]) {
                case 1:
                    if (i13 >= 26) {
                        if (i13 != 900) {
                            if (i13 != 913) {
                                switch (i13) {
                                    case 27:
                                        mode4 = Mode.LOWER;
                                        break;
                                    case 28:
                                        mode4 = Mode.MIXED;
                                        break;
                                    case NOTIFICATION_REDIRECT_VALUE:
                                        mode2 = Mode.PUNCT_SHIFT;
                                        c12 = 0;
                                        Mode mode7 = mode2;
                                        mode6 = mode5;
                                        mode5 = mode7;
                                        break;
                                }
                                mode3 = mode6;
                                mode6 = mode5;
                                c11 = c12;
                            } else {
                                iVar.b((char) iArr2[i12]);
                            }
                            c12 = 0;
                            mode3 = mode6;
                            mode6 = mode5;
                            c11 = c12;
                        } else {
                            mode4 = Mode.ALPHA;
                        }
                        c12 = 0;
                        mode5 = mode4;
                        mode3 = mode6;
                        mode6 = mode5;
                        c11 = c12;
                    } else {
                        i11 = i13 + 65;
                        c10 = (char) i11;
                        Mode mode8 = mode6;
                        mode6 = mode5;
                        c11 = c10;
                        mode3 = mode8;
                    }
                    break;
                case 2:
                    if (i13 >= 26) {
                        if (i13 != 900) {
                            if (i13 != 913) {
                                switch (i13) {
                                    case 27:
                                        mode2 = Mode.ALPHA_SHIFT;
                                        c12 = 0;
                                        Mode mode9 = mode2;
                                        mode6 = mode5;
                                        mode5 = mode9;
                                        break;
                                    case 28:
                                        mode4 = Mode.MIXED;
                                        break;
                                    case NOTIFICATION_REDIRECT_VALUE:
                                        mode2 = Mode.PUNCT_SHIFT;
                                        c12 = 0;
                                        Mode mode10 = mode2;
                                        mode6 = mode5;
                                        mode5 = mode10;
                                        break;
                                }
                                mode3 = mode6;
                                mode6 = mode5;
                                c11 = c12;
                            } else {
                                iVar.b((char) iArr2[i12]);
                            }
                            c12 = 0;
                            mode3 = mode6;
                            mode6 = mode5;
                            c11 = c12;
                        } else {
                            mode4 = Mode.ALPHA;
                        }
                        c12 = 0;
                        mode5 = mode4;
                        mode3 = mode6;
                        mode6 = mode5;
                        c11 = c12;
                    } else {
                        i11 = i13 + 97;
                        c10 = (char) i11;
                        Mode mode11 = mode6;
                        mode6 = mode5;
                        c11 = c10;
                        mode3 = mode11;
                    }
                    break;
                case 3:
                    if (i13 >= 25) {
                        if (i13 == 900) {
                            mode4 = Mode.ALPHA;
                            c12 = 0;
                            mode5 = mode4;
                        } else {
                            if (i13 != 913) {
                                switch (i13) {
                                    case 25:
                                        mode4 = Mode.PUNCT;
                                        c12 = 0;
                                        mode5 = mode4;
                                        break;
                                    case 27:
                                        mode4 = Mode.LOWER;
                                        c12 = 0;
                                        mode5 = mode4;
                                        break;
                                    case 28:
                                        mode4 = Mode.ALPHA;
                                        c12 = 0;
                                        mode5 = mode4;
                                        break;
                                    case NOTIFICATION_REDIRECT_VALUE:
                                        mode2 = Mode.PUNCT_SHIFT;
                                        c12 = 0;
                                        Mode mode12 = mode2;
                                        mode6 = mode5;
                                        mode5 = mode12;
                                        break;
                                }
                            } else {
                                iVar.b((char) iArr2[i12]);
                            }
                            c12 = 0;
                        }
                        mode3 = mode6;
                        mode6 = mode5;
                        c11 = c12;
                    } else {
                        c10 = f32124b[i13];
                        Mode mode13 = mode6;
                        mode6 = mode5;
                        c11 = c10;
                        mode3 = mode13;
                    }
                    break;
                case 4:
                    if (i13 >= 29) {
                        if (i13 == 29 || i13 == 900) {
                            mode4 = Mode.ALPHA;
                            mode5 = mode4;
                        } else if (i13 == 913) {
                            iVar.b((char) iArr2[i12]);
                        }
                        mode3 = mode6;
                        mode6 = mode5;
                        c11 = 0;
                    } else {
                        c10 = f32123a[i13];
                        Mode mode14 = mode6;
                        mode6 = mode5;
                        c11 = c10;
                        mode3 = mode14;
                    }
                    break;
                case 5:
                    if (i13 >= 26) {
                        if (i13 != 26) {
                            if (i13 == 900) {
                                mode5 = Mode.ALPHA;
                                c12 = 0;
                                mode3 = mode6;
                                mode6 = mode5;
                                c11 = c12;
                            } else {
                                c12 = 0;
                            }
                        }
                        mode5 = mode6;
                        mode3 = mode6;
                        mode6 = mode5;
                        c11 = c12;
                    } else {
                        c11 = (char) (i13 + 65);
                        mode3 = mode6;
                    }
                    break;
                case 6:
                    if (i13 < 29) {
                        c11 = f32123a[i13];
                    } else if (i13 == 29 || i13 == 900) {
                        mode5 = Mode.ALPHA;
                        mode3 = mode6;
                        mode6 = mode5;
                        c11 = 0;
                    } else {
                        if (i13 == 913) {
                            iVar.b((char) iArr2[i12]);
                        }
                        c11 = 0;
                    }
                    mode3 = mode6;
                    break;
                default:
                    mode3 = mode6;
                    mode6 = mode5;
                    c11 = 0;
                    break;
            }
            if (c11 != 0) {
                iVar.b(c11);
            }
            i12++;
            mode5 = mode6;
            mode6 = mode3;
        }
        return mode4;
    }

    /* JADX WARN: Code duplicated, block: B:36:0x003e A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:39:0x0007 A[SYNTHETIC] */
    private static int f(int[] iArr, int i10, kd.i iVar) {
        int[] iArr2 = new int[15];
        boolean z10 = false;
        int i11 = 0;
        while (true) {
            int i12 = iArr[0];
            if (i10 < i12 && !z10) {
                int i13 = i10 + 1;
                int i14 = iArr[i10];
                if (i13 == i12) {
                    z10 = true;
                }
                if (i14 < 900) {
                    iArr2[i11] = i14;
                    i11++;
                } else {
                    if (i14 != 900 && i14 != 901 && i14 != 927 && i14 != 928) {
                        switch (i14) {
                            case 922:
                            case 923:
                            case 924:
                                z10 = true;
                                break;
                        }
                    } else {
                        z10 = true;
                    }
                    if (i11 % 15 != 0 || i14 == 902 || z10) {
                        if (i11 > 0) {
                            iVar.d(c(iArr2, i11));
                            i11 = 0;
                        }
                    }
                }
                i10 = i13;
                if (i11 % 15 != 0) {
                }
                if (i11 > 0) {
                    iVar.d(c(iArr2, i11));
                    i11 = 0;
                }
            }
        }
        return i10;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:16:0x003a. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:17:0x003d. Please report as an issue. */
    private static int g(int[] iArr, int i10, kd.i iVar) throws FormatException {
        int i11 = iArr[0];
        int[] iArr2 = new int[(i11 - i10) * 2];
        int[] iArr3 = new int[(i11 - i10) * 2];
        Mode mode = Mode.ALPHA;
        boolean z10 = false;
        int i12 = 0;
        while (i10 < iArr[0] && !z10) {
            int i13 = i10 + 1;
            int i14 = iArr[i10];
            if (i14 < 900) {
                iArr2[i12] = i14 / 30;
                iArr2[i12 + 1] = i14 % 30;
                i12 += 2;
            } else if (i14 == 913) {
                iArr2[i12] = 913;
                i10 += 2;
                iArr3[i12] = iArr[i13];
                i12++;
            } else if (i14 != 927) {
                if (i14 != 928) {
                    switch (i14) {
                        case EDITION_LEGACY_VALUE:
                            iArr2[i12] = 900;
                            i12++;
                            break;
                        case 901:
                        case 902:
                            break;
                        default:
                            switch (i14) {
                                case 922:
                                case 923:
                                case 924:
                                    break;
                                default:
                                    break;
                            }
                            break;
                    }
                }
                z10 = true;
            } else {
                Mode modeE = e(iArr2, iArr3, i12, iVar, mode);
                i10 += 2;
                iVar.f(iArr[i13]);
                int i15 = iArr[0];
                if (i10 > i15) {
                    throw FormatException.getFormatInstance();
                }
                i12 = 0;
                mode = modeE;
                iArr3 = new int[(i15 - i10) * 2];
                iArr2 = new int[(i15 - i10) * 2];
            }
            i10 = i13;
        }
        e(iArr2, iArr3, i12, iVar, mode);
        return i10;
    }
}

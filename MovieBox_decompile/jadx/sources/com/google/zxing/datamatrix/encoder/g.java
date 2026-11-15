package com.google.zxing.datamatrix.encoder;

import java.util.Arrays;

public abstract class g {
    public static int a(CharSequence charSequence, int i10) {
        int length = charSequence.length();
        int i11 = i10;
        while (i11 < length && f(charSequence.charAt(i11))) {
            i11++;
        }
        return i11 - i10;
    }

    public static String b(String str, SymbolShapeHint symbolShapeHint, com.google.zxing.c cVar, com.google.zxing.c cVar2, boolean z10) {
        c cVar3 = new c();
        int iE = 0;
        e[] eVarArr = {new a(), cVar3, new h(), new i(), new d(), new b()};
        f fVar = new f(str);
        fVar.n(symbolShapeHint);
        fVar.l(cVar, cVar2);
        if (str.startsWith("[)>\u001e05\u001d") && str.endsWith("\u001e\u0004")) {
            fVar.r((char) 236);
            fVar.m(2);
            fVar.f32070d += 7;
        } else if (str.startsWith("[)>\u001e06\u001d") && str.endsWith("\u001e\u0004")) {
            fVar.r((char) 237);
            fVar.m(2);
            fVar.f32070d += 7;
        }
        if (z10) {
            cVar3.d(fVar);
            iE = fVar.e();
            fVar.j();
        }
        while (fVar.i()) {
            eVarArr[iE].a(fVar);
            if (fVar.e() >= 0) {
                iE = fVar.e();
                fVar.j();
            }
        }
        int iA = fVar.a();
        fVar.p();
        int iA2 = fVar.g().a();
        if (iA < iA2 && iE != 0 && iE != 5 && iE != 4) {
            fVar.r((char) 254);
        }
        StringBuilder sbB = fVar.b();
        if (sbB.length() < iA2) {
            sbB.append((char) 129);
        }
        while (sbB.length() < iA2) {
            sbB.append(r(sbB.length() + 1));
        }
        return fVar.b().toString();
    }

    private static int c(float[] fArr, int[] iArr, int i10, byte[] bArr) {
        for (int i11 = 0; i11 < 6; i11++) {
            int iCeil = (int) Math.ceil(fArr[i11]);
            iArr[i11] = iCeil;
            if (i10 > iCeil) {
                Arrays.fill(bArr, (byte) 0);
                i10 = iCeil;
            }
            if (i10 == iCeil) {
                bArr[i11] = (byte) (bArr[i11] + 1);
            }
        }
        return i10;
    }

    private static int d(byte[] bArr) {
        int i10 = 0;
        for (int i11 = 0; i11 < 6; i11++) {
            i10 += bArr[i11];
        }
        return i10;
    }

    static void e(char c10) {
        String hexString = Integer.toHexString(c10);
        throw new IllegalArgumentException("Illegal character: " + c10 + " (0x" + ("0000".substring(0, 4 - hexString.length()) + hexString) + ')');
    }

    static boolean f(char c10) {
        return c10 >= '0' && c10 <= '9';
    }

    static boolean g(char c10) {
        return c10 >= 128 && c10 <= 255;
    }

    static boolean h(char c10) {
        return c10 == ' ' || (c10 >= '0' && c10 <= '9') || (c10 >= 'A' && c10 <= 'Z');
    }

    static boolean i(char c10) {
        return c10 >= ' ' && c10 <= '^';
    }

    static boolean j(char c10) {
        return c10 == ' ' || (c10 >= '0' && c10 <= '9') || (c10 >= 'a' && c10 <= 'z');
    }

    static boolean k(char c10) {
        return m(c10) || c10 == ' ' || (c10 >= '0' && c10 <= '9') || (c10 >= 'A' && c10 <= 'Z');
    }

    private static boolean l(char c10) {
        return false;
    }

    private static boolean m(char c10) {
        return c10 == '\r' || c10 == '*' || c10 == '>';
    }

    static int n(CharSequence charSequence, int i10, int i11) {
        int iO = o(charSequence, i10, i11);
        if (i11 == 3 && iO == 3) {
            int iMin = Math.min(i10 + 3, charSequence.length());
            while (i10 < iMin) {
                if (!k(charSequence.charAt(i10))) {
                    return 0;
                }
                i10++;
            }
        } else if (i11 == 4 && iO == 4) {
            int iMin2 = Math.min(i10 + 4, charSequence.length());
            while (i10 < iMin2) {
                if (!i(charSequence.charAt(i10))) {
                    return 0;
                }
                i10++;
            }
        }
        return iO;
    }

    static int o(CharSequence charSequence, int i10, int i11) {
        float[] fArr;
        int i12;
        int i13;
        int i14;
        int i15;
        if (i10 >= charSequence.length()) {
            return i11;
        }
        float f10 = 2.0f;
        int i16 = 5;
        int i17 = 2;
        int i18 = 4;
        int i19 = 3;
        if (i11 == 0) {
            fArr = new float[]{0.0f, 1.0f, 1.0f, 1.0f, 1.0f, 1.25f};
        } else {
            fArr = new float[6];
            fArr[0] = 1.0f;
            fArr[1] = 2.0f;
            fArr[2] = 2.0f;
            fArr[3] = 2.0f;
            fArr[4] = 2.0f;
            fArr[5] = 2.25f;
            fArr[i11] = 0.0f;
        }
        byte[] bArr = new byte[6];
        int[] iArr = new int[6];
        int i20 = 0;
        while (true) {
            int i21 = i10 + i20;
            if (i21 == charSequence.length()) {
                Arrays.fill(bArr, (byte) 0);
                Arrays.fill(iArr, 0);
                int iC = c(fArr, iArr, Integer.MAX_VALUE, bArr);
                int iD = d(bArr);
                if (iArr[0] == iC) {
                    return 0;
                }
                if (iD == 1) {
                    if (bArr[i16] > 0) {
                        return i16;
                    }
                    if (bArr[i18] > 0) {
                        return i18;
                    }
                    if (bArr[i17] > 0) {
                        return i17;
                    }
                    if (bArr[i19] > 0) {
                        return i19;
                    }
                }
                return 1;
            }
            char cCharAt = charSequence.charAt(i21);
            i20++;
            if (f(cCharAt)) {
                fArr[0] = fArr[0] + 0.5f;
            } else if (g(cCharAt)) {
                float fCeil = (float) Math.ceil(fArr[0]);
                fArr[0] = fCeil;
                fArr[0] = fCeil + f10;
            } else {
                float fCeil2 = (float) Math.ceil(fArr[0]);
                fArr[0] = fCeil2;
                fArr[0] = fCeil2 + 1.0f;
            }
            if (h(cCharAt)) {
                fArr[1] = fArr[1] + 0.6666667f;
            } else if (g(cCharAt)) {
                fArr[1] = fArr[1] + 2.6666667f;
            } else {
                fArr[1] = fArr[1] + 1.3333334f;
            }
            if (j(cCharAt)) {
                fArr[i17] = fArr[i17] + 0.6666667f;
            } else if (g(cCharAt)) {
                fArr[i17] = fArr[i17] + 2.6666667f;
            } else {
                fArr[i17] = fArr[i17] + 1.3333334f;
            }
            if (k(cCharAt)) {
                fArr[i19] = fArr[i19] + 0.6666667f;
            } else if (g(cCharAt)) {
                fArr[i19] = fArr[i19] + 4.3333335f;
            } else {
                fArr[i19] = fArr[i19] + 3.3333333f;
            }
            if (i(cCharAt)) {
                fArr[i18] = fArr[i18] + 0.75f;
            } else if (g(cCharAt)) {
                fArr[i18] = fArr[i18] + 4.25f;
            } else {
                fArr[i18] = fArr[i18] + 3.25f;
            }
            if (l(cCharAt)) {
                i12 = 5;
                fArr[5] = fArr[5] + 4.0f;
            } else {
                i12 = 5;
                fArr[5] = fArr[5] + 1.0f;
            }
            if (i20 >= i18) {
                Arrays.fill(bArr, (byte) 0);
                Arrays.fill(iArr, 0);
                c(fArr, iArr, Integer.MAX_VALUE, bArr);
                if (iArr[0] < q(iArr[i12], iArr[1], iArr[i17], iArr[i19], iArr[i18])) {
                    return 0;
                }
                int i22 = iArr[i12];
                if (i22 < iArr[0] || i22 + 1 < p(iArr[1], iArr[2], iArr[3], iArr[i18])) {
                    return 5;
                }
                if (iArr[i18] + 1 < q(iArr[5], iArr[1], iArr[2], iArr[3], iArr[0])) {
                    return i18;
                }
                if (iArr[2] + 1 < q(iArr[5], iArr[1], iArr[i18], iArr[3], iArr[0])) {
                    return 2;
                }
                if (iArr[3] + 1 < q(iArr[5], iArr[1], iArr[4], iArr[2], iArr[0])) {
                    return 3;
                }
                i13 = 4;
                i15 = 2;
                if (iArr[1] + 1 < p(iArr[0], iArr[5], iArr[4], iArr[2])) {
                    int i23 = iArr[1];
                    int i24 = iArr[3];
                    if (i23 < i24) {
                        return 1;
                    }
                    if (i23 == i24) {
                        for (int i25 = i10 + i20 + 1; i25 < charSequence.length(); i25++) {
                            char cCharAt2 = charSequence.charAt(i25);
                            if (m(cCharAt2)) {
                                return 3;
                            }
                            if (!k(cCharAt2)) {
                                break;
                            }
                        }
                        return 1;
                    }
                    i14 = 3;
                } else {
                    i14 = 3;
                }
                i16 = 5;
            } else {
                i16 = i12;
                i13 = i18;
                i14 = i19;
                i15 = i17;
            }
            i18 = i13;
            i17 = i15;
            i19 = i14;
            f10 = 2.0f;
        }
    }

    private static int p(int i10, int i11, int i12, int i13) {
        return Math.min(i10, Math.min(i11, Math.min(i12, i13)));
    }

    private static int q(int i10, int i11, int i12, int i13, int i14) {
        return Math.min(p(i10, i11, i12, i13), i14);
    }

    private static char r(int i10) {
        int i11 = (i10 * 149) % 253;
        int i12 = i11 + 130;
        if (i12 > 254) {
            i12 = i11 - 124;
        }
        return (char) i12;
    }
}

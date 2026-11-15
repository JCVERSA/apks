package org.brotli.dec;

final class k {

    static final k[] f68512d = {new k("", 0, ""), new k("", 0, " "), new k(" ", 0, " "), new k("", 12, ""), new k("", 10, " "), new k("", 0, " the "), new k(" ", 0, ""), new k("s ", 0, " "), new k("", 0, " of "), new k("", 10, ""), new k("", 0, " and "), new k("", 13, ""), new k("", 1, ""), new k(", ", 0, " "), new k("", 0, ", "), new k(" ", 10, " "), new k("", 0, " in "), new k("", 0, " to "), new k("e ", 0, " "), new k("", 0, "\""), new k("", 0, "."), new k("", 0, "\">"), new k("", 0, "\n"), new k("", 3, ""), new k("", 0, "]"), new k("", 0, " for "), new k("", 14, ""), new k("", 2, ""), new k("", 0, " a "), new k("", 0, " that "), new k(" ", 10, ""), new k("", 0, ". "), new k(".", 0, ""), new k(" ", 0, ", "), new k("", 15, ""), new k("", 0, " with "), new k("", 0, "'"), new k("", 0, " from "), new k("", 0, " by "), new k("", 16, ""), new k("", 17, ""), new k(" the ", 0, ""), new k("", 4, ""), new k("", 0, ". The "), new k("", 11, ""), new k("", 0, " on "), new k("", 0, " as "), new k("", 0, " is "), new k("", 7, ""), new k("", 1, "ing "), new k("", 0, "\n\t"), new k("", 0, ":"), new k(" ", 0, ". "), new k("", 0, "ed "), new k("", 20, ""), new k("", 18, ""), new k("", 6, ""), new k("", 0, "("), new k("", 10, ", "), new k("", 8, ""), new k("", 0, " at "), new k("", 0, "ly "), new k(" the ", 0, " of "), new k("", 5, ""), new k("", 9, ""), new k(" ", 10, ", "), new k("", 10, "\""), new k(".", 0, "("), new k("", 11, " "), new k("", 10, "\">"), new k("", 0, "=\""), new k(" ", 0, "."), new k(".com/", 0, ""), new k(" the ", 0, " of the "), new k("", 10, "'"), new k("", 0, ". This "), new k("", 0, ","), new k(".", 0, " "), new k("", 10, "("), new k("", 10, "."), new k("", 0, " not "), new k(" ", 0, "=\""), new k("", 0, "er "), new k(" ", 11, " "), new k("", 0, "al "), new k(" ", 11, ""), new k("", 0, "='"), new k("", 11, "\""), new k("", 10, ". "), new k(" ", 0, "("), new k("", 0, "ful "), new k(" ", 10, ". "), new k("", 0, "ive "), new k("", 0, "less "), new k("", 11, "'"), new k("", 0, "est "), new k(" ", 10, "."), new k("", 11, "\">"), new k(" ", 0, "='"), new k("", 10, ","), new k("", 0, "ize "), new k("", 11, "."), new k("Â ", 0, ""), new k(" ", 0, ","), new k("", 10, "=\""), new k("", 11, "=\""), new k("", 0, "ous "), new k("", 11, ", "), new k("", 10, "='"), new k(" ", 10, ","), new k(" ", 11, "=\""), new k(" ", 11, ", "), new k("", 11, ","), new k("", 11, "("), new k("", 11, ". "), new k(" ", 11, "."), new k("", 11, "='"), new k(" ", 11, ". "), new k(" ", 10, "=\""), new k(" ", 11, "='"), new k(" ", 10, "='")};

    private final byte[] f68513a;

    private final int f68514b;

    private final byte[] f68515c;

    k(String str, int i10, String str2) {
        this.f68513a = a(str);
        this.f68514b = i10;
        this.f68515c = a(str2);
    }

    static byte[] a(String str) {
        int length = str.length();
        byte[] bArr = new byte[length];
        for (int i10 = 0; i10 < length; i10++) {
            bArr[i10] = (byte) str.charAt(i10);
        }
        return bArr;
    }

    static int b(byte[] bArr, int i10, byte[] bArr2, int i11, int i12, k kVar) {
        int i13 = i10;
        for (byte b10 : kVar.f68513a) {
            bArr[i13] = b10;
            i13++;
        }
        int i14 = kVar.f68514b;
        int iA = m.a(i14);
        if (iA > i12) {
            iA = i12;
        }
        int i15 = i11 + iA;
        int iB = (i12 - iA) - m.b(i14);
        int i16 = iB;
        while (i16 > 0) {
            bArr[i13] = bArr2[i15];
            i16--;
            i13++;
            i15++;
        }
        if (i14 == 11 || i14 == 10) {
            int i17 = i13 - iB;
            if (i14 == 10) {
                iB = 1;
            }
            while (iB > 0) {
                byte b11 = bArr[i17];
                int i18 = b11 & 255;
                if (i18 < 192) {
                    if (i18 >= 97 && i18 <= 122) {
                        bArr[i17] = (byte) (b11 ^ 32);
                    }
                    i17++;
                    iB--;
                } else if (i18 < 224) {
                    int i19 = i17 + 1;
                    bArr[i19] = (byte) (bArr[i19] ^ 32);
                    i17 += 2;
                    iB -= 2;
                } else {
                    int i20 = i17 + 2;
                    bArr[i20] = (byte) (bArr[i20] ^ 5);
                    i17 += 3;
                    iB -= 3;
                }
            }
        }
        for (byte b12 : kVar.f68515c) {
            bArr[i13] = b12;
            i13++;
        }
        return i13 - i10;
    }
}

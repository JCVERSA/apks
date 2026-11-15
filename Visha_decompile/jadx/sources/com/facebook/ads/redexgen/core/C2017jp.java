package com.facebook.ads.redexgen.core;

import androidx.media3.common.C;
import java.util.Arrays;
import java.util.Collections;
import okio.Utf8;

public final class C2017jp implements KJ {
    public static byte[] A0B;
    public static String[] A0C = {"Sri33Nkjg2q1UfSTa8c1c4poMbcRpRLi", "09hX7cFAjusi8bmxYUkedKuhTIWBBFyj", "9Nq5ciBjH0E2wAdqO8kDicSSF4ASqfED", "QsWxT4gaPPGppGCvyiz5txfiFuAY8zGx", "IfMd", "WTVPPiGNk6qIrjWgxgkH9oFnGfUzUO7U", "kZSjpU6etDs1IBDvrqsQrqQjBcHBIo8z", "H6v3RmW3GvMpIK1G5kWvIHPLiCmsEM1C"};
    public static final float[] A0D;
    public long A00;
    public long A01;
    public H1 A02;
    public KN A03;
    public String A04;
    public boolean A05;
    public final C4J A06;
    public final KM A07;
    public final KS A08;
    public final C1030Kh A09;
    public final boolean[] A0A;

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0B, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 69);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A02() {
        A0B = new byte[]{66, 56, 60, 57, 88, 111, 107, 110, 111, 120, 18, 53, 45, 58, 55, 50, Utf8.REPLACEMENT_BYTE, 123, 58, 40, 43, 62, 56, 47, 123, 41, 58, 47, 50, 52, 125, 90, 66, 85, 88, 93, 80, 20, 66, 91, 68, 107, 93, 90, 87, 70, 81, 89, 81, 90, 64, 107, 64, 93, 89, 81, 107, 70, 81, 71, 91, 88, 65, 64, 93, 91, 90, 77, 118, 112, 121, 118, 124, 116, 125, 124, 56, 110, 113, 124, 125, 119, 56, 119, 122, 114, 125, 123, 108, 56, 116, 121, 97, 125, 106, 56, 107, 112, 121, 104, 125, 45, 50, Utf8.REPLACEMENT_BYTE, 62, 52, 116, 54, 43, 111, 45, 118, 62, 40};
    }

    static {
        A02();
        A0D = new float[]{1.0f, 1.0f, 1.0909091f, 0.90909094f, 1.4545455f, 1.2121212f, 1.0f};
    }

    public C2017jp() {
        this(null);
    }

    public C2017jp(C1030Kh c1030Kh) {
        this.A09 = c1030Kh;
        this.A0A = new boolean[4];
        this.A07 = new KM(128);
        this.A00 = C.TIME_UNSET;
        if (c1030Kh != null) {
            this.A08 = new KS(178, 128);
            this.A06 = new C4J();
        } else {
            this.A08 = null;
            this.A06 = null;
        }
    }

    public static C2312or A00(KM km, int i, String str) {
        float f;
        byte[] bArrCopyOf = Arrays.copyOf(km.A02, km.A00);
        C4I c4i = new C4I(bArrCopyOf);
        c4i.A0A(i);
        c4i.A0A(4);
        c4i.A07();
        c4i.A09(8);
        if (c4i.A0H()) {
            c4i.A09(4);
            c4i.A09(3);
        }
        int iA04 = c4i.A04(4);
        String strA01 = A01(10, 20, 30);
        String strA02 = A01(0, 10, 79);
        if (iA04 == 15) {
            int iA05 = c4i.A04(8);
            String[] strArr = A0C;
            if (strArr[1].charAt(10) != strArr[6].charAt(10)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0C;
            strArr2[1] = "pNVnHJusVCsmPjFYzkWaaBxpUvIALZFH";
            strArr2[6] = "5W5bueKBkmsFSlOt61KpehVGJe26nslO";
            int iA06 = c4i.A04(8);
            if (iA06 == 0) {
                AnonymousClass44.A07(strA02, strA01);
                f = 1.0f;
            } else {
                f = iA05 / iA06;
            }
        } else if (iA04 < A0D.length) {
            f = A0D[iA04];
        } else {
            AnonymousClass44.A07(strA02, strA01);
            f = 1.0f;
        }
        if (c4i.A0H()) {
            c4i.A09(2);
            c4i.A09(1);
            boolean zA0H = c4i.A0H();
            if (A0C[2].charAt(24) != 'F') {
                throw new RuntimeException();
            }
            String[] strArr3 = A0C;
            strArr3[1] = "a7iwuG0S7TsvBO2g0yc87XIFTOWCV0GN";
            strArr3[6] = "G4F0gcHQBssTN40k2zdU8kwKQEhYA5ZF";
            if (zA0H) {
                c4i.A09(15);
                c4i.A07();
                c4i.A09(15);
                c4i.A07();
                c4i.A09(15);
                c4i.A07();
                c4i.A09(3);
                c4i.A09(11);
                c4i.A07();
                c4i.A09(15);
                c4i.A07();
            }
        }
        if (c4i.A04(2) != 0) {
            AnonymousClass44.A07(strA02, A01(67, 34, 93));
        }
        c4i.A07();
        int iA07 = c4i.A04(16);
        c4i.A07();
        if (c4i.A0H()) {
            if (iA07 == 0) {
                AnonymousClass44.A07(strA02, A01(30, 37, 113));
            } else {
                int i2 = 0;
                for (int i3 = iA07 - 1; i3 > 0; i3 >>= 1) {
                    i2++;
                }
                c4i.A09(i2);
            }
        }
        c4i.A07();
        int videoObjectLayerWidth = c4i.A04(13);
        c4i.A07();
        int iA08 = c4i.A04(13);
        c4i.A07();
        c4i.A07();
        return new C2D().A0y(str).A11(A01(101, 13, 30)).A0r(videoObjectLayerWidth).A0f(iA08).A0Y(f).A12(Collections.singletonList(bArrCopyOf)).A14();
    }

    /* JADX WARN: Code duplicated, block: B:28:0x00c2  */
    /* JADX WARN: Code duplicated, block: B:30:0x00cb  */
    /* JADX WARN: Code duplicated, block: B:32:0x00ce  */
    /* JADX WARN: Code duplicated, block: B:35:0x00dd  */
    /* JADX WARN: Code duplicated, block: B:36:0x00df  */
    /* JADX WARN: Code duplicated, block: B:39:0x00f1  */
    /* JADX WARN: Code duplicated, block: B:42:0x011f  */
    /* JADX WARN: Code duplicated, block: B:44:0x0129  */
    /* JADX WARN: Code duplicated, block: B:48:0x0099 A[EDGE_INSN: B:48:0x0099->B:24:0x0099 BREAK  A[LOOP:0: B:3:0x0029->B:45:0x012e], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:50:0x012e A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:51:0x012e A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:52:0x012e A[SYNTHETIC] */
    @Override
    public final void A52(C4J c4j) {
        int i;
        int offset;
        KS ks;
        int limit;
        C3M.A02(this.A03);
        C3M.A02(this.A02);
        int iA09 = c4j.A09();
        int iA0A = c4j.A0A();
        byte[] bArrA0l = c4j.A0l();
        long j = this.A01;
        int offset2 = c4j.A07();
        this.A01 = j + ((long) offset2);
        H1 h1 = this.A02;
        int offset3 = c4j.A07();
        h1.AI7(c4j, offset3);
        while (true) {
            int lengthToStartCode = AbstractC0936Gq.A04(bArrA0l, iA09, iA0A, this.A0A);
            if (lengthToStartCode == iA0A) {
                if (!this.A05) {
                    KM km = this.A07;
                    int limit2 = A0C[7].charAt(0);
                    if (limit2 == 51) {
                        break;
                    }
                    A0C[4] = "80MY";
                    km.A03(bArrA0l, iA09, iA0A);
                }
                this.A03.A03(bArrA0l, iA09, iA0A);
                if (this.A08 != null) {
                    this.A08.A02(bArrA0l, iA09, iA0A);
                    return;
                }
                return;
            }
            int offset4 = lengthToStartCode + 3;
            int startCodeValue = c4j.A0l()[offset4] & 255;
            int i2 = lengthToStartCode - iA09;
            if (!this.A05) {
                if (i2 > 0) {
                    this.A07.A03(bArrA0l, iA09, lengthToStartCode);
                }
                int limit3 = i2 < 0 ? -i2 : 0;
                if (this.A07.A04(startCodeValue, limit3)) {
                    H1 h2 = this.A02;
                    KM km2 = this.A07;
                    String[] strArr = A0C;
                    String str = strArr[1];
                    String str2 = strArr[6];
                    int limit4 = str.charAt(10);
                    int offset5 = str2.charAt(10);
                    if (limit4 != offset5) {
                        break;
                    }
                    String[] strArr2 = A0C;
                    strArr2[1] = "jCMcU5kX01siyiD9Xw2jZ38LNAQD3esf";
                    strArr2[6] = "NTL8nbB45bsjwa3rfW6th5wXRcuqzfwM";
                    int limit5 = this.A07.A01;
                    h2.A6W(A00(km2, limit5, (String) C3M.A01(this.A04)));
                    this.A05 = true;
                    this.A03.A03(bArrA0l, iA09, lengthToStartCode);
                    if (this.A08 != null) {
                        i = 0;
                        if (i2 > 0) {
                            ks = this.A08;
                            limit = A0C[4].length();
                            if (limit != 4) {
                                break;
                                break;
                            } else {
                                A0C[2] = "pGtfbhZ8gA4Y3zya71EFVTXhFPoVLYfI";
                                ks.A02(bArrA0l, iA09, lengthToStartCode);
                            }
                        } else {
                            i = -i2;
                        }
                        if (this.A08.A04(i)) {
                            byte[] bArr = this.A08.A01;
                            int offset6 = this.A08.A00;
                            ((C4J) AbstractC06244a.A0f(this.A06)).A0j(this.A08.A01, AbstractC0936Gq.A02(bArr, offset6));
                            ((C1030Kh) AbstractC06244a.A0f(this.A09)).A02(this.A00, this.A06);
                        }
                        if (startCodeValue == 178) {
                            offset = lengthToStartCode + 2;
                            if (c4j.A0l()[offset] == 1) {
                                this.A08.A01(startCodeValue);
                            }
                        }
                    }
                    int i3 = iA0A - lengthToStartCode;
                    this.A03.A02(this.A01 - ((long) i3), i3, this.A05);
                    this.A03.A01(startCodeValue, this.A00);
                    iA09 = lengthToStartCode + 3;
                } else {
                    this.A03.A03(bArrA0l, iA09, lengthToStartCode);
                    if (this.A08 != null) {
                        i = 0;
                        if (i2 > 0) {
                            ks = this.A08;
                            limit = A0C[4].length();
                            if (limit != 4) {
                                break;
                                break;
                            } else {
                                A0C[2] = "pGtfbhZ8gA4Y3zya71EFVTXhFPoVLYfI";
                                ks.A02(bArrA0l, iA09, lengthToStartCode);
                            }
                        } else {
                            i = -i2;
                        }
                        if (this.A08.A04(i)) {
                            byte[] bArr2 = this.A08.A01;
                            int offset7 = this.A08.A00;
                            ((C4J) AbstractC06244a.A0f(this.A06)).A0j(this.A08.A01, AbstractC0936Gq.A02(bArr2, offset7));
                            ((C1030Kh) AbstractC06244a.A0f(this.A09)).A02(this.A00, this.A06);
                        }
                        if (startCodeValue == 178) {
                            offset = lengthToStartCode + 2;
                            if (c4j.A0l()[offset] == 1) {
                                this.A08.A01(startCodeValue);
                            }
                        }
                    }
                    int i4 = iA0A - lengthToStartCode;
                    this.A03.A02(this.A01 - ((long) i4), i4, this.A05);
                    this.A03.A01(startCodeValue, this.A00);
                    iA09 = lengthToStartCode + 3;
                }
            } else {
                this.A03.A03(bArrA0l, iA09, lengthToStartCode);
                if (this.A08 != null) {
                    i = 0;
                    if (i2 > 0) {
                        ks = this.A08;
                        limit = A0C[4].length();
                        if (limit != 4) {
                            break;
                        }
                        A0C[2] = "pGtfbhZ8gA4Y3zya71EFVTXhFPoVLYfI";
                        ks.A02(bArrA0l, iA09, lengthToStartCode);
                    } else {
                        i = -i2;
                    }
                    if (this.A08.A04(i)) {
                        byte[] bArr3 = this.A08.A01;
                        int offset8 = this.A08.A00;
                        ((C4J) AbstractC06244a.A0f(this.A06)).A0j(this.A08.A01, AbstractC0936Gq.A02(bArr3, offset8));
                        ((C1030Kh) AbstractC06244a.A0f(this.A09)).A02(this.A00, this.A06);
                    }
                    if (startCodeValue == 178) {
                        offset = lengthToStartCode + 2;
                        if (c4j.A0l()[offset] == 1) {
                            this.A08.A01(startCodeValue);
                        }
                    }
                }
                int i5 = iA0A - lengthToStartCode;
                this.A03.A02(this.A01 - ((long) i5), i5, this.A05);
                this.A03.A01(startCodeValue, this.A00);
                iA09 = lengthToStartCode + 3;
            }
        }
        throw new RuntimeException();
    }

    @Override
    public final void A5U(GY gy, C1027Ke c1027Ke) {
        c1027Ke.A05();
        this.A04 = c1027Ke.A04();
        this.A02 = gy.AJh(c1027Ke.A03(), 2);
        this.A03 = new KN(this.A02);
        if (this.A09 != null) {
            this.A09.A03(gy, c1027Ke);
        }
    }

    @Override
    public final void AG5() {
    }

    @Override
    public final void AG6(long j, int i) {
        if (j != C.TIME_UNSET) {
            this.A00 = j;
        }
    }

    @Override
    public final void AIL() {
        AbstractC0936Gq.A0H(this.A0A);
        this.A07.A02();
        if (this.A03 != null) {
            this.A03.A00();
        }
        if (this.A08 != null) {
            this.A08.A00();
        }
        if (A0C[4].length() != 4) {
            throw new RuntimeException();
        }
        A0C[2] = "KHBnxT5PT6gCJIZCrRbgphkbFp7MF5Ts";
        this.A01 = 0L;
        this.A00 = C.TIME_UNSET;
    }
}

package com.facebook.ads.redexgen.core;

import androidx.media3.common.C;
import java.util.Arrays;
import java.util.Collections;
import okio.Utf8;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;

public final class C2015jn implements KJ {
    public static byte[] A0E;
    public static String[] A0F = {"InS58bT42EZESXm9qvWYUvire34TyqEd", "0QsKXE5Mty2kdKkFlxzakLoeZj9v1JPl", "NRhrqdNeBR4CDjsc7Q9NAC", "KBnn09jRwf0uKhIPK3OJ0VUHuR4AgDGD", "Nq6SUzmzwDzIZ8w7Fc8GQLnhk8OKIhKk", "EhougHeDeIMt7rS1ZxwR1ONoVKreOkGZ", "d5GlJf2nLv2o9PLs5SG9FlMqVuWi5Y0h", "iroqlmoe0TAfPMqOpys1zY2UwesgA9Cl"};
    public long A01;
    public H1 A02;
    public KR A03;
    public String A04;
    public boolean A05;
    public final KX A0C;
    public final boolean[] A0D = new boolean[3];
    public final KS A0B = new KS(32, 128);
    public final KS A09 = new KS(33, 128);
    public final KS A07 = new KS(34, 128);
    public final KS A08 = new KS(39, 128);
    public final KS A0A = new KS(40, 128);
    public long A00 = C.TIME_UNSET;
    public final C4J A06 = new C4J();

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0E, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 115);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A03() {
        A0E = new byte[]{7, 125, 121, 122, 29, 42, 46, 43, 42, 61, 93, 102, 109, 112, 120, 109, 107, 124, 109, 108, 40, 105, 123, 120, 109, 107, 124, 87, 122, 105, 124, 97, 103, 87, 97, 108, 107, 40, 126, 105, 100, 125, 109, 50, 40, Utf8.REPLACEMENT_BYTE, 32, 45, 44, 38, 102, 33, 44, Utf8.REPLACEMENT_BYTE, 42};
    }

    static {
        A03();
    }

    public C2015jn(KX kx) {
        this.A0C = kx;
    }

    /* JADX WARN: Code duplicated, block: B:56:0x018b  */
    /* JADX WARN: Code duplicated, block: B:58:0x0191  */
    public static C2312or A00(String str, KS ks, KS ks2, KS ks3) {
        byte[] bArr = new byte[ks.A00 + ks2.A00 + ks3.A00];
        System.arraycopy(ks.A01, 0, bArr, 0, ks.A00);
        System.arraycopy(ks2.A01, 0, bArr, ks.A00, ks2.A00);
        System.arraycopy(ks3.A01, 0, bArr, ks.A00 + ks2.A00, ks3.A00);
        C0938Gs c0938Gs = new C0938Gs(ks2.A01, 0, ks2.A00);
        c0938Gs.A07(44);
        int maxSubLayersMinus1 = c0938Gs.A05(3);
        c0938Gs.A06();
        int iA05 = c0938Gs.A05(2);
        boolean zA0A = c0938Gs.A0A();
        int generalProfileCompatibilityFlags = c0938Gs.A05(5);
        int generalLevelIdc = 0;
        int i = 0;
        while (true) {
            if (i >= 32) {
                String[] strArr = A0F;
                if (strArr[3].charAt(26) == strArr[0].charAt(26)) {
                    A0F[7] = "KUK36SaeRyaSjOylRKRM5Zy9KuAImCCo";
                    int[] iArr = new int[6];
                    for (int i2 = 0; i2 < iArr.length; i2++) {
                        iArr[i2] = c0938Gs.A05(8);
                    }
                    int toSkip = c0938Gs.A05(8);
                    int i3 = 0;
                    for (int i4 = 0; i4 < maxSubLayersMinus1; i4++) {
                        if (c0938Gs.A0A()) {
                            i3 += 89;
                        }
                        if (c0938Gs.A0A()) {
                            i3 += 8;
                        }
                    }
                    c0938Gs.A07(i3);
                    if (maxSubLayersMinus1 > 0) {
                        c0938Gs.A07((8 - maxSubLayersMinus1) * 2);
                    }
                    c0938Gs.A04();
                    int iA04 = c0938Gs.A04();
                    if (iA04 == 3) {
                        c0938Gs.A06();
                    }
                    int iA06 = c0938Gs.A04();
                    int chromaFormatIdc = c0938Gs.A04();
                    if (c0938Gs.A0A()) {
                        int generalProfileSpace = c0938Gs.A04();
                        int iA07 = c0938Gs.A04();
                        int toSkip2 = c0938Gs.A04();
                        int iA08 = c0938Gs.A04();
                        int subHeightC = (iA04 == 1 || iA04 == 2) ? 2 : 1;
                        iA06 -= (generalProfileSpace + iA07) * subHeightC;
                        chromaFormatIdc -= (toSkip2 + iA08) * (iA04 == 1 ? 2 : 1);
                    }
                    c0938Gs.A04();
                    c0938Gs.A04();
                    int iA09 = c0938Gs.A04();
                    int picHeightInLumaSamples = c0938Gs.A0A() ? 0 : maxSubLayersMinus1;
                    while (picHeightInLumaSamples <= maxSubLayersMinus1) {
                        c0938Gs.A04();
                        c0938Gs.A04();
                        String[] strArr2 = A0F;
                        if (strArr2[4].charAt(1) != strArr2[6].charAt(1)) {
                            String[] strArr3 = A0F;
                            strArr3[4] = "fwNj3DlAlR0ZRIXGIjbE9kdq2ymmau9c";
                            strArr3[6] = "Cn1Ujy3ajzEe008QMYirASp4B4RzqpC3";
                            c0938Gs.A04();
                            picHeightInLumaSamples++;
                        } else {
                            c0938Gs.A04();
                            picHeightInLumaSamples++;
                        }
                    }
                    c0938Gs.A04();
                    c0938Gs.A04();
                    c0938Gs.A04();
                    c0938Gs.A04();
                    c0938Gs.A04();
                    if (A0F[7].charAt(7) != 'e') {
                        A0F[2] = "36O4TNRZJCi";
                        c0938Gs.A04();
                        if (c0938Gs.A0A()) {
                            if (c0938Gs.A0A()) {
                                A06(c0938Gs);
                            }
                        }
                    } else {
                        String[] strArr4 = A0F;
                        strArr4[1] = "kgp7PzaRA7bebGNLV6O0LLC564MCujGY";
                        strArr4[5] = "FSYBvyZkCpJq4xL9y4GBHyTimpUH7OJt";
                        c0938Gs.A04();
                        if (c0938Gs.A0A()) {
                            if (c0938Gs.A0A()) {
                                A06(c0938Gs);
                            }
                        }
                    }
                    c0938Gs.A07(2);
                    if (c0938Gs.A0A()) {
                        c0938Gs.A07(8);
                        c0938Gs.A04();
                        c0938Gs.A04();
                        c0938Gs.A06();
                    }
                    A07(c0938Gs);
                    if (c0938Gs.A0A()) {
                        for (int i5 = 0; i5 < c0938Gs.A04(); i5++) {
                            c0938Gs.A07(iA09 + 4 + 1);
                        }
                    }
                    c0938Gs.A07(2);
                    float f = 1.0f;
                    boolean zA0A2 = c0938Gs.A0A();
                    String[] strArr5 = A0F;
                    if (strArr5[3].charAt(26) != strArr5[0].charAt(26)) {
                        break;
                    }
                    String[] strArr6 = A0F;
                    strArr6[1] = "Qhh03oXiZoC3MQNHpV44xa4z9JOwBySi";
                    strArr6[5] = "nsJWuxtHUvrlBy67rSbmxe3xvaeZTSox";
                    if (zA0A2) {
                        if (c0938Gs.A0A()) {
                            int picWidthInLumaSamples = c0938Gs.A05(8);
                            if (picWidthInLumaSamples == 255) {
                                int iA010 = c0938Gs.A05(16);
                                int iA011 = c0938Gs.A05(16);
                                if (iA010 != 0 && iA011 != 0) {
                                    f = iA010 / iA011;
                                }
                            } else if (picWidthInLumaSamples < AbstractC0936Gq.A04.length) {
                                f = AbstractC0936Gq.A04[picWidthInLumaSamples];
                            } else {
                                AnonymousClass44.A07(A01(0, 10, 60), A01(10, 35, 123) + picWidthInLumaSamples);
                            }
                        }
                        if (c0938Gs.A0A()) {
                            c0938Gs.A06();
                        }
                        if (c0938Gs.A0A()) {
                            c0938Gs.A07(4);
                            if (c0938Gs.A0A()) {
                                c0938Gs.A07(24);
                            }
                        }
                        if (c0938Gs.A0A()) {
                            c0938Gs.A04();
                            c0938Gs.A04();
                        }
                        c0938Gs.A06();
                        if (c0938Gs.A0A()) {
                            chromaFormatIdc *= 2;
                        }
                    }
                    return new C2D().A0y(str).A11(A01(45, 10, 58)).A0w(C3U.A03(iA05, zA0A, generalProfileCompatibilityFlags, generalLevelIdc, iArr, toSkip)).A0r(iA06).A0f(chromaFormatIdc).A0Y(f).A12(Collections.singletonList(bArr)).A14();
                }
                throw new RuntimeException();
            }
            boolean zA0A3 = c0938Gs.A0A();
            String[] strArr7 = A0F;
            if (strArr7[1].charAt(22) == strArr7[5].charAt(22)) {
                break;
            }
            String[] strArr8 = A0F;
            strArr8[4] = "ikltzL6qI9vduPGnQ2PfcHBicoSlJtZK";
            strArr8[6] = "dtFG8mkM92kb76Motxy98XM75Kybvtjp";
            if (zA0A3) {
                generalLevelIdc |= 1 << i;
            }
            i++;
        }
        throw new RuntimeException();
    }

    @EnsuresNonNull({"output", "sampleReader"})
    private void A02() {
        C3M.A02(this.A02);
    }

    @RequiresNonNull({"output", "sampleReader"})
    private void A04(long j, int i, int i2, long j2) {
        this.A03.A05(j, i, this.A05);
        if (!this.A05) {
            this.A0B.A04(i2);
            this.A09.A04(i2);
            this.A07.A04(i2);
            if (this.A0B.A03() && this.A09.A03() && this.A07.A03()) {
                this.A02.A6W(A00(this.A04, this.A0B, this.A09, this.A07));
                this.A05 = true;
            }
        }
        KS ks = this.A08;
        if (A0F[2].length() == 29) {
            throw new RuntimeException();
        }
        A0F[7] = "vr6kqTkennNRVlA9BYLGssdVYhiLrcAb";
        if (ks.A04(i2)) {
            this.A06.A0j(this.A08.A01, AbstractC0936Gq.A02(this.A08.A01, this.A08.A00));
            this.A06.A0g(5);
            this.A0C.A02(j2, this.A06);
        }
        if (this.A0A.A04(i2)) {
            this.A06.A0j(this.A0A.A01, AbstractC0936Gq.A02(this.A0A.A01, this.A0A.A00));
            this.A06.A0g(5);
            this.A0C.A02(j2, this.A06);
        }
    }

    @RequiresNonNull({"sampleReader"})
    private void A05(long j, int i, int i2, long j2) {
        this.A03.A04(j, i, i2, j2, this.A05);
        if (!this.A05) {
            this.A0B.A01(i2);
            this.A09.A01(i2);
            this.A07.A01(i2);
        }
        this.A08.A01(i2);
        String[] strArr = A0F;
        if (strArr[4].charAt(1) == strArr[6].charAt(1)) {
            throw new RuntimeException();
        }
        String[] strArr2 = A0F;
        strArr2[3] = "1KFxNiiYNj5YwxcZPXf7qOLOZg48Utfw";
        strArr2[0] = "AJhXWbHH6DfoOyxWmdhumfQDrV4Rkjlm";
        this.A0A.A01(i2);
    }

    public static void A06(C0938Gs c0938Gs) {
        for (int i = 0; i < 4; i++) {
            int i2 = 0;
            while (i2 < 6) {
                int i3 = 1;
                if (!c0938Gs.A0A()) {
                    c0938Gs.A04();
                } else {
                    int sizeId = i << 1;
                    int iMin = Math.min(64, 1 << (sizeId + 4));
                    if (i > 1) {
                        c0938Gs.A03();
                    }
                    for (int coefNum = 0; coefNum < iMin; coefNum++) {
                        c0938Gs.A03();
                        String[] strArr = A0F;
                        String str = strArr[1];
                        String str2 = strArr[5];
                        int iCharAt = str.charAt(22);
                        int sizeId2 = str2.charAt(22);
                        if (iCharAt == sizeId2) {
                            throw new RuntimeException();
                        }
                        String[] strArr2 = A0F;
                        strArr2[1] = "RIQaKQF3d2DPjAKRmkcEP1Qw2m8MXhOp";
                        strArr2[5] = "Zvlj8YgWRgjcS6ffkQSgKy13bXSJEEo8";
                    }
                }
                if (i == 3) {
                    i3 = 3;
                }
                i2 += i3;
            }
        }
    }

    public static void A07(C0938Gs c0938Gs) {
        int iA04 = c0938Gs.A04();
        boolean zA0A = false;
        int numNegativePics = 0;
        for (int stRpsIdx = 0; stRpsIdx < iA04; stRpsIdx++) {
            if (stRpsIdx != 0) {
                zA0A = c0938Gs.A0A();
            }
            if (zA0A) {
                c0938Gs.A06();
                c0938Gs.A04();
                for (int i = 0; i <= numNegativePics; i++) {
                    if (c0938Gs.A0A()) {
                        c0938Gs.A06();
                    }
                }
            } else {
                int previousNumDeltaPocs = c0938Gs.A04();
                int iA05 = c0938Gs.A04();
                numNegativePics = previousNumDeltaPocs + iA05;
                for (int numShortTermRefPicSets = 0; numShortTermRefPicSets < previousNumDeltaPocs; numShortTermRefPicSets++) {
                    c0938Gs.A04();
                    c0938Gs.A06();
                }
                for (int numShortTermRefPicSets2 = 0; numShortTermRefPicSets2 < iA05; numShortTermRefPicSets2++) {
                    c0938Gs.A04();
                    c0938Gs.A06();
                }
            }
        }
    }

    @RequiresNonNull({"sampleReader"})
    private void A08(byte[] bArr, int i, int i2) {
        this.A03.A06(bArr, i, i2);
        if (!this.A05) {
            this.A0B.A02(bArr, i, i2);
            this.A09.A02(bArr, i, i2);
            this.A07.A02(bArr, i, i2);
        }
        this.A08.A02(bArr, i, i2);
        this.A0A.A02(bArr, i, i2);
    }

    @Override
    public final void A52(C4J c4j) {
        A02();
        while (c4j.A07() > 0) {
            int limit = c4j.A09();
            int iA0A = c4j.A0A();
            byte[] bArrA0l = c4j.A0l();
            long j = this.A01;
            int offset = c4j.A07();
            this.A01 = j + ((long) offset);
            H1 h1 = this.A02;
            int offset2 = c4j.A07();
            h1.AI7(c4j, offset2);
            while (limit < iA0A) {
                int iA04 = AbstractC0936Gq.A04(bArrA0l, limit, iA0A, this.A0D);
                if (iA04 == iA0A) {
                    A08(bArrA0l, limit, iA0A);
                    return;
                }
                int bytesWrittenPastPosition = AbstractC0936Gq.A00(bArrA0l, iA04);
                int i = iA04 - limit;
                if (A0F[7].charAt(7) != 'e') {
                    throw new RuntimeException();
                }
                String[] strArr = A0F;
                strArr[1] = "NnhvxMiSCkNhwXkURhMspTAR6cceqM1j";
                strArr[5] = "7ARxjazDMsknrtTfPy5OOEp3py29nWBE";
                if (i > 0) {
                    A08(bArrA0l, limit, iA04);
                }
                int lengthToNalUnit = iA0A - iA04;
                long j2 = this.A01 - ((long) lengthToNalUnit);
                int offset3 = i < 0 ? -i : 0;
                A04(j2, lengthToNalUnit, offset3, this.A00);
                long absolutePosition = this.A00;
                A05(j2, lengthToNalUnit, bytesWrittenPastPosition, absolutePosition);
                limit = iA04 + 3;
            }
        }
    }

    @Override
    public final void A5U(GY gy, C1027Ke c1027Ke) {
        c1027Ke.A05();
        this.A04 = c1027Ke.A04();
        this.A02 = gy.AJh(c1027Ke.A03(), 2);
        this.A03 = new KR(this.A02);
        this.A0C.A03(gy, c1027Ke);
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
        this.A01 = 0L;
        this.A00 = C.TIME_UNSET;
        AbstractC0936Gq.A0H(this.A0D);
        this.A0B.A00();
        this.A09.A00();
        this.A07.A00();
        this.A08.A00();
        this.A0A.A00();
        if (this.A03 != null) {
            this.A03.A03();
        }
    }
}

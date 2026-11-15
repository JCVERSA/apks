package com.facebook.ads.redexgen.core;

import androidx.media3.common.C;
import java.util.Arrays;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;
import org.mozilla.classfile.ByteCode;

public final class C2028k0 implements KJ {
    public static byte[] A0C;
    public static String[] A0D = {"zgZfEJGGgdHtew2g1FfNkkcnB", "zHXWmVVfspRqZTFEHweYGYwJXvEszQMx", "7abqffqd10TBp3FWdGN7VvMrN7O1UkYM", "p0MVW5l5", "JyEkXe6y14TztCHpc8kpfDGRXJv0nuKA", "euIGF7oBB7KZa", "ak0CBs2Ex4lMz9dSuXO", "PviIixxcvW6ZcpMh0sztGl9"};
    public int A00;
    public int A01;
    public int A02;
    public long A03;
    public long A04;
    public C2312or A05;
    public H1 A06;
    public String A07;
    public boolean A08;
    public final C4I A09;
    public final C4J A0A;
    public final String A0B;

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0C, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 86);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A02() {
        A0C = new byte[]{40, 60, 45, 32, 38, 102, 40, 42, 122};
    }

    static {
        A02();
    }

    public C2028k0() {
        this(null);
    }

    public C2028k0(String str) {
        this.A09 = new C4I(new byte[128]);
        this.A0A = new C4J(this.A09.A00);
        this.A02 = 0;
        this.A04 = C.TIME_UNSET;
        this.A0B = str;
    }

    /* JADX WARN: Code duplicated, block: B:14:0x006a  */
    /* JADX WARN: Code duplicated, block: B:16:0x00a4  */
    @RequiresNonNull({"output"})
    private void A01() {
        C2D c2dA0j;
        this.A09.A08(0);
        GE geA09 = GF.A09(this.A09);
        if (this.A05 != null) {
            int i = geA09.A01;
            int i2 = this.A05.A06;
            String[] strArr = A0D;
            if (strArr[2].length() == strArr[6].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0D;
            strArr2[0] = "s5ZnNr7Ga7MlLfd70p6uFHM8x";
            strArr2[5] = "utwzV9oXgtTkd";
            if (i == i2) {
                int i3 = geA09.A04;
                String[] strArr3 = A0D;
                if (strArr3[4].charAt(13) == strArr3[1].charAt(13)) {
                    throw new RuntimeException();
                }
                String[] strArr4 = A0D;
                strArr4[2] = "MPTvnFyqCCYkwFwXTKwYW3O2KaIbPHbI";
                strArr4[6] = "dVnQ4greYxNN5pQgdCf";
                if (i3 != this.A05.A0G || !AbstractC06244a.A1E(geA09.A06, this.A05.A0W)) {
                    c2dA0j = new C2D().A0y(this.A07).A11(geA09.A06).A0b(geA09.A01).A0m(geA09.A04).A10(this.A0B).A0j(geA09.A00);
                    if (A00(0, 9, 31).equals(geA09.A06)) {
                        c2dA0j.A0a(geA09.A00);
                    }
                    this.A05 = c2dA0j.A14();
                    this.A06.A6W(this.A05);
                }
            } else {
                c2dA0j = new C2D().A0y(this.A07).A11(geA09.A06).A0b(geA09.A01).A0m(geA09.A04).A10(this.A0B).A0j(geA09.A00);
                if (A00(0, 9, 31).equals(geA09.A06)) {
                    c2dA0j.A0a(geA09.A00);
                }
                this.A05 = c2dA0j.A14();
                this.A06.A6W(this.A05);
            }
        } else {
            c2dA0j = new C2D().A0y(this.A07).A11(geA09.A06).A0b(geA09.A01).A0m(geA09.A04).A10(this.A0B).A0j(geA09.A00);
            if (A00(0, 9, 31).equals(geA09.A06)) {
                c2dA0j.A0a(geA09.A00);
            }
            this.A05 = c2dA0j.A14();
            this.A06.A6W(this.A05);
        }
        this.A01 = geA09.A02;
        this.A03 = (((long) geA09.A03) * 1000000) / ((long) this.A05.A0G);
    }

    private boolean A03(C4J c4j) {
        while (true) {
            if (c4j.A07() <= 0) {
                return false;
            }
            boolean z = this.A08;
            if (A0D[3].length() != 8) {
                throw new RuntimeException();
            }
            String[] strArr = A0D;
            strArr[4] = "9XFIg7618hJvvA4xETZzayJ4sl88kXfd";
            strArr[1] = "F6kFQyxnROPq81yNs7RnOkiGPjgAvEmB";
            if (!z) {
                this.A08 = c4j.A0I() == 11;
            } else {
                int iA0I = c4j.A0I();
                if (iA0I == 119) {
                    this.A08 = false;
                    return true;
                }
                this.A08 = iA0I == 11;
            }
        }
    }

    private boolean A04(C4J c4j, byte[] bArr, int i) {
        int iMin = Math.min(c4j.A07(), i - this.A00);
        int bytesToRead = this.A00;
        c4j.A0k(bArr, bytesToRead, iMin);
        int bytesToRead2 = this.A00;
        this.A00 = bytesToRead2 + iMin;
        int bytesToRead3 = this.A00;
        return bytesToRead3 == i;
    }

    @Override
    public final void A52(C4J c4j) {
        C3M.A02(this.A06);
        while (c4j.A07() > 0) {
            int i = this.A02;
            String[] strArr = A0D;
            if (strArr[0].length() != strArr[5].length()) {
                String[] strArr2 = A0D;
                strArr2[0] = "xuhMWsLm7IhyfpFjlZpQdmw9F";
                strArr2[5] = "BOgMYXTSIypYk";
                switch (i) {
                    case 0:
                        if (A03(c4j)) {
                            this.A02 = 1;
                            this.A0A.A0l()[0] = ByteCode.T_LONG;
                            this.A0A.A0l()[1] = 119;
                            this.A00 = 2;
                        }
                        break;
                    case 1:
                        if (A04(c4j, this.A0A.A0l(), 128)) {
                            A01();
                            this.A0A.A0f(0);
                            this.A06.AI7(this.A0A, 128);
                            this.A02 = 2;
                        }
                        break;
                    case 2:
                        int iMin = Math.min(c4j.A07(), this.A01 - this.A00);
                        this.A06.AI7(c4j, iMin);
                        this.A00 += iMin;
                        if (this.A00 == this.A01) {
                            if (this.A04 != C.TIME_UNSET) {
                                this.A06.AIA(this.A04, 1, this.A01, 0, null);
                                this.A04 += this.A03;
                            }
                            this.A02 = 0;
                        }
                        break;
                }
            } else {
                throw new RuntimeException();
            }
        }
    }

    @Override
    public final void A5U(GY gy, C1027Ke c1027Ke) {
        c1027Ke.A05();
        this.A07 = c1027Ke.A04();
        this.A06 = gy.AJh(c1027Ke.A03(), 1);
    }

    @Override
    public final void AG5() {
    }

    @Override
    public final void AG6(long j, int i) {
        if (j != C.TIME_UNSET) {
            this.A04 = j;
        }
    }

    @Override
    public final void AIL() {
        this.A02 = 0;
        this.A00 = 0;
        this.A08 = false;
        this.A04 = C.TIME_UNSET;
    }
}

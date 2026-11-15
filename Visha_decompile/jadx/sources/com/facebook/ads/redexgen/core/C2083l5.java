package com.facebook.ads.redexgen.core;

import java.util.Arrays;

public final class C2083l5 extends HI {
    public static byte[] A06;
    public static String[] A07 = {"k0wYTkKie1JHeFYg", "DKl7H6qsoN4MQmGVFxhVfc9YoKR", "eOp5RF4DxMr8YboQGZKTl4GQk1b", "2gSlciuhxyUpZq2z", "EzoVAngWIMXE2t797gVmsxYwwugMTqE8", "YSwU3mnkrzPmwh4w8hA9Gpc9iPzLacTq", "wmfh6", "T9R7fvqNl5WyvyD6SUGUJNeU84vDYmq7"};
    public int A00;
    public int A01;
    public boolean A02;
    public boolean A03;
    public final C4J A04;
    public final C4J A05;

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A06, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 64);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A06 = new byte[]{68, 123, 118, 119, 125, 50, 116, 125, 96, 127, 115, 102, 50, 124, 125, 102, 50, 97, 103, 98, 98, 125, 96, 102, 119, 118, 40, 50, 43, 52, 57, 56, 50, 114, 60, 43, 62};
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    @Override
    public final boolean A0C(C4J c4j, long j) throws C05802i {
        int iA0I = c4j.A0I();
        long jA0D = j + (((long) c4j.A0D()) * 1000);
        if (iA0I == 0 && !this.A02) {
            C4J c4j2 = new C4J(new byte[c4j.A07()]);
            c4j.A0k(c4j2.A0l(), 0, c4j.A07());
            GJ gjA00 = GJ.A00(c4j2);
            this.A01 = gjA00.A02;
            super.A00.A6W(new C2D().A11(A00(28, 9, 29)).A0w(gjA00.A04).A0r(gjA00.A03).A0f(gjA00.A01).A0Y(gjA00.A00).A12(gjA00.A05).A14());
            this.A02 = true;
            return false;
        }
        if (iA0I != 1 || !this.A02) {
            return false;
        }
        int i = this.A00;
        if (A07[1].length() != 27) {
            throw new RuntimeException();
        }
        A07[5] = "ywa4QqUhdtSZ68DIQ13xWUOznnvwilgI";
        boolean z = i == 1;
        if (A07[2].length() == 28) {
            throw new RuntimeException();
        }
        String[] strArr = A07;
        strArr[6] = "IIAwH";
        strArr[0] = "qu1M6PwQ9kLePSP6";
        if (!this.A03 && !z) {
            return false;
        }
        byte[] bArrA0l = this.A04.A0l();
        bArrA0l[0] = 0;
        bArrA0l[1] = 0;
        bArrA0l[2] = 0;
        int i2 = 4 - this.A01;
        int i3 = 0;
        while (c4j.A07() > 0) {
            c4j.A0k(this.A04.A0l(), i2, this.A01);
            this.A04.A0f(0);
            int iA0L = this.A04.A0L();
            this.A05.A0f(0);
            super.A00.AI7(this.A05, 4);
            super.A00.AI7(c4j, iA0L);
            i3 = i3 + 4 + iA0L;
        }
        super.A00.AIA(jA0D, z ? 1 : 0, i3, 0, null);
        this.A03 = true;
        return true;
    }

    static {
        A01();
    }

    public C2083l5(H1 h1) {
        super(h1);
        this.A05 = new C4J(AbstractC0936Gq.A03);
        this.A04 = new C4J(4);
    }

    @Override
    public final boolean A0B(C4J c4j) throws C2084l6 {
        int iA0I = c4j.A0I();
        int header = iA0I >> 4;
        int frameType = header & 15;
        int i = iA0I & 15;
        if (i == 7) {
            this.A00 = frameType;
            return frameType != 5;
        }
        throw new C2084l6(A00(0, 28, 82) + i);
    }
}

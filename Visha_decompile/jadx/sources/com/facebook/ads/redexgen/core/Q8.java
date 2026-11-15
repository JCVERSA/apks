package com.facebook.ads.redexgen.core;

import android.graphics.Rect;
import android.view.View;
import java.util.Arrays;

public abstract class Q8 {
    public static byte[] A03;
    public int A00;
    public final Rect A01;
    public final QO A02;

    static {
        A04();
    }

    public static String A03(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A03, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 126);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A04() {
        A03 = new byte[]{-6, -1, 7, -14, -3, -6, -11, -79, 0, 3, -6, -10, -1, 5, -14, 5, -6, 0, -1};
    }

    public abstract int A06();

    public abstract int A07();

    public abstract int A08();

    public abstract int A09();

    public abstract int A0A();

    public abstract int A0B();

    public abstract int A0C(View view);

    public abstract int A0D(View view);

    public abstract int A0E(View view);

    public abstract int A0F(View view);

    public abstract int A0G(View view);

    public abstract int A0H(View view);

    public abstract void A0J(int i);

    public Q8(QO qo) {
        this.A00 = Integer.MIN_VALUE;
        this.A01 = new Rect();
        this.A02 = qo;
    }

    public Q8(QO qo, C1809gC c1809gC) {
        this(qo);
    }

    public static C1809gC A00(QO qo) {
        return new C1809gC(qo);
    }

    public static C1808gB A01(QO qo) {
        return new C1808gB(qo);
    }

    public static Q8 A02(QO qo, int i) {
        switch (i) {
            case 0:
                return A00(qo);
            case 1:
                return A01(qo);
            default:
                throw new IllegalArgumentException(A03(0, 19, 19));
        }
    }

    public final int A05() {
        if (Integer.MIN_VALUE == this.A00) {
            return 0;
        }
        return A0B() - this.A00;
    }

    public final void A0I() {
        this.A00 = A0B();
    }
}

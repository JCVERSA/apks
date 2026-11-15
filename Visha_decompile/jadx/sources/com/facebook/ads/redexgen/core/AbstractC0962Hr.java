package com.facebook.ads.redexgen.core;

import android.content.res.Configuration;
import android.widget.RelativeLayout;
import java.lang.ref.WeakReference;
import java.util.Arrays;

public abstract class AbstractC0962Hr extends RelativeLayout implements Wf {
    public static byte[] A0E;
    public static String[] A0F = {"uUMDphsbcltlMAasrXzhzXIIsD27sBrh", "kD4ASPr1mkkPPQg7686pKphnCznMXNdE", "3u4w9tHTXiQc09zCQQwrpogVyGpuea0B", "uLxjLzdSNqmjg5WlrsUTBNxe2IHJHDsH", "sowIyJkgs7pChNHWV216bYY5IvqkL5", "woZqrf3JBfr8DagdWcXdOyEt75sBOiDm", "mZPGIv6MosabarlDevuwzM4J02qRjqBR", "rZe00TaCIEKWr55DYJNI366SEGcMY1oV"};
    public static final int A0G;
    public String A00;
    public boolean A01;
    public final int A02;
    public final AbstractC1707eW A03;
    public final boolean A04;
    public final boolean A05;
    public final AbstractC1910hy A06;
    public final C1635dL A07;
    public final US A08;
    public final C1334Wh A09;
    public final XH A0A;
    public final InterfaceC1366Xn A0B;
    public final YY A0C;
    public final C1708eX A0D;

    public static String A16(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0E, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 77);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A17() {
        A0E = new byte[]{95, 16, 25, 95, 5, 32, 100};
        if (A0F[4].length() == 22) {
            throw new RuntimeException();
        }
        String[] strArr = A0F;
        strArr[2] = "lGg0879wdsNhw7V1Qtd20OQ8gEXobd5O";
        strArr[0] = "a2lydBkKvgM6UKG9QoQR6B5cBx9Kev1F";
    }

    public abstract ME A1A(String str);

    public abstract void A1D();

    public abstract void A1E();

    public abstract void A1G(boolean z);

    public abstract void A1H(boolean z);

    public abstract boolean A1I();

    public abstract boolean A1J();

    public abstract boolean A1K();

    public abstract C1580cR getFullScreenAdStyle();

    static {
        A17();
        A0G = (int) (AbstractC1338Wl.A02 * 80.0f);
    }

    public AbstractC0962Hr(C1635dL c1635dL, YY yy, US us, AbstractC1910hy abstractC1910hy, int i, boolean z, boolean z2, InterfaceC1366Xn interfaceC1366Xn, int i2) {
        super(c1635dL);
        this.A0A = new XH();
        this.A01 = false;
        this.A00 = A16(0, 0, 48);
        this.A03 = new C0963Hs(this);
        this.A02 = i;
        this.A07 = c1635dL;
        this.A05 = z;
        this.A04 = z2;
        this.A0B = interfaceC1366Xn;
        this.A0C = yy;
        this.A06 = abstractC1910hy;
        this.A08 = us;
        this.A0D = new C1708eX(this, 1, new WeakReference(this.A03), c1635dL);
        this.A0D.A0W(abstractC1910hy.A0i());
        this.A0D.A0X(abstractC1910hy.A0j());
        this.A09 = C1334Wh.A00(this.A07, this.A06, this);
        if (this.A06.A1U()) {
            this.A00 = A15(this.A02, i2);
        }
    }

    public static String A15(int i, int i2) {
        return A16(4, 3, 9) + (i + 1) + A16(0, 4, 50) + i2;
    }

    public void A1B() {
        this.A09.A03();
    }

    public final void A1C() {
        if (!this.A01) {
            this.A0D.A0U();
            this.A01 = true;
        }
    }

    public void A1F(boolean z) {
    }

    public AbstractC1910hy getAdDataBundle() {
        return this.A06;
    }

    public C1708eX getAdViewabilityChecker() {
        return this.A0D;
    }

    public XH getTouchDataRecorder() {
        return this.A0A;
    }

    @Override
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
    }
}

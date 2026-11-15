package com.facebook.ads.redexgen.core;

import android.view.View;
import android.view.ViewGroup;
import java.util.Arrays;
import org.mozilla.classfile.ByteCode;

public class C1806g9 implements InterfaceC1161Pl {
    public static byte[] A01;
    public final C06826g A00;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 72);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{-26, 4, 15, 15, 8, 7, -61, 4, 23, 23, 4, 6, ByteCode.T_LONG, -61, 18, 17, -61, 4, -61, 6, ByteCode.T_LONG, 12, 15, 7, -61, 26, ByteCode.T_LONG, 12, 6, ByteCode.T_LONG, -61, 12, 22, -61, 17, 18, 23, -61, 7, 8, 23, 4, 6, ByteCode.T_LONG, 8, 7, -35, -61, -53, -55, -44, -44, -51, -52, -120, -52, -51, -36, -55, -53, -48, -120, -41, -42, -120, -55, -42, -120, -55, -44, -38, -51, -55, -52, -31, -120, -52, -51, -36, -55, -53, -48, -51, -52, -120, -53, -48, -47, -44, -52, -120};
    }

    public C1806g9(C06826g c06826g) {
        this.A00 = c06826g;
    }

    @Override
    public final void A4C(View view, int i, ViewGroup.LayoutParams layoutParams) {
        AbstractC1182Qg abstractC1182QgA0F = C06826g.A0F(view);
        if (abstractC1182QgA0F != null) {
            if (abstractC1182QgA0F.A0i() || abstractC1182QgA0F.A0l()) {
                abstractC1182QgA0F.A0V();
            } else {
                throw new IllegalArgumentException(A00(0, 48, 91) + abstractC1182QgA0F + this.A00.A1J());
            }
        }
        this.A00.attachViewToParent(view, i, layoutParams);
    }

    @Override
    public final void A5o(int i) {
        AbstractC1182Qg abstractC1182QgA0F;
        View view = A79(i);
        if (view != null && (abstractC1182QgA0F = C06826g.A0F(view)) != null) {
            if (!abstractC1182QgA0F.A0i() || abstractC1182QgA0F.A0l()) {
                abstractC1182QgA0F.A0Z(256);
            } else {
                throw new IllegalArgumentException(A00(48, 43, 32) + abstractC1182QgA0F + this.A00.A1J());
            }
        }
        this.A00.detachViewFromParent(i);
    }

    @Override
    public final View A79(int i) {
        return this.A00.getChildAt(i);
    }

    @Override
    public final int A7A() {
        return this.A00.getChildCount();
    }

    @Override
    public final AbstractC1182Qg A7D(View view) {
        return C06826g.A0F(view);
    }

    @Override
    public final int A9z(View view) {
        return this.A00.indexOfChild(view);
    }

    @Override
    public final void ADA(View view) {
        AbstractC1182Qg abstractC1182QgA0F = C06826g.A0F(view);
        if (abstractC1182QgA0F != null) {
            abstractC1182QgA0F.A0D(this.A00);
        }
    }

    @Override
    public final void ADv(View view) {
        AbstractC1182Qg abstractC1182QgA0F = C06826g.A0F(view);
        if (abstractC1182QgA0F != null) {
            abstractC1182QgA0F.A0E(this.A00);
        }
    }

    @Override
    public final void AHg() {
        int iA7A = A7A();
        for (int i = 0; i < iA7A; i++) {
            View viewA79 = A79(i);
            this.A00.A1g(viewA79);
            viewA79.clearAnimation();
        }
        this.A00.removeAllViews();
    }

    @Override
    public final void AHm(int i) {
        View childAt = this.A00.getChildAt(i);
        if (childAt != null) {
            this.A00.A1g(childAt);
            childAt.clearAnimation();
        }
        this.A00.removeViewAt(i);
    }

    @Override
    public final void addView(View view, int i) {
        this.A00.addView(view, i);
        this.A00.A1f(view);
    }
}

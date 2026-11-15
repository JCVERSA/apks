package com.facebook.ads.redexgen.core;

import android.view.View;

public abstract class AbstractC1798g0 extends QK {
    public static String[] A01 = {"ofgeN", "GcYePxlnDkyLzFZQt8gXTfFAd", "bIohWxIGlUqKJ41hMBKnFxYrg", "ROugplE3NXuve66PKoPS6E1ZAyp", "eD20R2wAf", "s8oLKbIochRuLWrY7HR296xJjla", "faP6eJ6K6STeOEuOEXCJ6OuUaXzDbpLW", "oXM2gF3tn"};
    public boolean A00 = true;

    public abstract boolean A0X(AbstractC1182Qg abstractC1182Qg);

    public abstract boolean A0Y(AbstractC1182Qg abstractC1182Qg);

    public abstract boolean A0Z(AbstractC1182Qg abstractC1182Qg, int i, int i2, int i3, int i4);

    public abstract boolean A0a(AbstractC1182Qg abstractC1182Qg, AbstractC1182Qg abstractC1182Qg2, int i, int i2, int i3, int i4);

    @Override
    public final boolean A0N(AbstractC1182Qg abstractC1182Qg) {
        return !this.A00 || abstractC1182Qg.A0f();
    }

    @Override
    public final boolean A0O(AbstractC1182Qg abstractC1182Qg, QJ qj, QJ qj2) {
        if (qj != null && (qj.A01 != qj2.A01 || qj.A03 != qj2.A03)) {
            return A0Z(abstractC1182Qg, qj.A01, qj.A03, qj2.A01, qj2.A03);
        }
        return A0X(abstractC1182Qg);
    }

    @Override
    public final boolean A0P(AbstractC1182Qg abstractC1182Qg, QJ qj, QJ qj2) {
        int i = qj.A01;
        int oldLeft = qj.A03;
        View view = abstractC1182Qg.A0H;
        int oldTop = qj2 == null ? view.getLeft() : qj2.A01;
        String[] strArr = A01;
        if (strArr[7].length() != strArr[4].length()) {
            throw new RuntimeException();
        }
        String[] strArr2 = A01;
        strArr2[7] = "jyZdeafgD";
        strArr2[4] = "NUmje91r8";
        int top = qj2 == null ? view.getTop() : qj2.A03;
        if (!abstractC1182Qg.A0g() && (i != oldTop || oldLeft != top)) {
            view.layout(oldTop, top, view.getWidth() + oldTop, view.getHeight() + top);
            return A0Z(abstractC1182Qg, i, oldLeft, oldTop, top);
        }
        return A0Y(abstractC1182Qg);
    }

    @Override
    public final boolean A0Q(AbstractC1182Qg abstractC1182Qg, QJ qj, QJ qj2) {
        if (qj.A01 != qj2.A01 || qj.A03 != qj2.A03) {
            return A0Z(abstractC1182Qg, qj.A01, qj.A03, qj2.A01, qj2.A03);
        }
        A0U(abstractC1182Qg);
        return false;
    }

    @Override
    public final boolean A0R(AbstractC1182Qg abstractC1182Qg, AbstractC1182Qg abstractC1182Qg2, QJ qj, QJ qj2) {
        int i;
        int i2;
        int i3 = qj.A01;
        int i4 = qj.A03;
        if (abstractC1182Qg2.A0l()) {
            i = qj.A01;
            i2 = qj.A03;
        } else {
            i = qj2.A01;
            i2 = qj2.A03;
        }
        return A0a(abstractC1182Qg, abstractC1182Qg2, i3, i4, i, i2);
    }

    public final void A0T(AbstractC1182Qg abstractC1182Qg) {
        A0K(abstractC1182Qg);
    }

    public final void A0U(AbstractC1182Qg abstractC1182Qg) {
        A0K(abstractC1182Qg);
    }

    public final void A0V(AbstractC1182Qg abstractC1182Qg) {
        A0K(abstractC1182Qg);
    }

    public final void A0W(AbstractC1182Qg abstractC1182Qg, boolean z) {
        A0K(abstractC1182Qg);
    }
}

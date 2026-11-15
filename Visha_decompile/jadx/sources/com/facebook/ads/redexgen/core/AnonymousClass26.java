package com.facebook.ads.redexgen.core;

import android.view.View;
import android.view.animation.AlphaAnimation;
import com.facebook.ads.internal.api.BuildConfigApi;
import com.facebook.ads.internal.settings.AdInternalSettings;

public final class AnonymousClass26 extends AbstractC1141Or<C1708eX> implements SM {
    public C1635dL A00;
    public boolean A01;

    public AnonymousClass26(C1708eX c1708eX, C1635dL c1635dL) {
        super(c1708eX);
        this.A00 = c1635dL;
        this.A01 = false;
    }

    private void A00(int i) {
        if (!this.A01) {
            this.A00.A0F().A3n(i);
        }
        this.A01 = true;
    }

    @Override
    public final void A07() {
        C1708eX c1708eXA08 = A08();
        int iIntValue = 0;
        if (c1708eXA08 == null) {
            A00(0);
            return;
        }
        View view = c1708eXA08.A0C;
        AbstractC1707eW abstractC1707eW = (AbstractC1707eW) c1708eXA08.A0E.get();
        int i = 1;
        boolean z = view == null;
        if (!z && abstractC1707eW != null) {
            C1709eY c1709eYA0E = C1708eX.A0E(view, c1708eXA08.A0A, this.A00);
            if (c1709eYA0E.A04()) {
                C1708eX.A05(c1708eXA08);
            } else {
                c1708eXA08.A00 = 0;
            }
            boolean z2 = c1708eXA08.A00 > c1708eXA08.A09;
            boolean wasViewable = c1708eXA08.A05 != null && c1708eXA08.A05.A04();
            if (z2 || !c1709eYA0E.A04()) {
                c1708eXA08.A05 = c1709eYA0E;
            }
            String strValueOf = String.valueOf(c1709eYA0E.A01());
            synchronized (c1708eXA08) {
                if (c1708eXA08.A06.containsKey(strValueOf)) {
                    iIntValue = ((Integer) c1708eXA08.A06.get(strValueOf)).intValue();
                }
                c1708eXA08.A06.put(strValueOf, Integer.valueOf(iIntValue + 1));
            }
            if (z2 && !wasViewable) {
                this.A01 = true;
                c1708eXA08.A03 = System.currentTimeMillis();
                if (c1708eXA08.A07) {
                    this.A00.A0F().A3o();
                }
                abstractC1707eW.A03();
                if (BuildConfigApi.isDebug() && AdInternalSettings.isVisibleAnimation()) {
                    AlphaAnimation alphaAnimation = new AlphaAnimation(1.0f, 0.0f);
                    alphaAnimation.setDuration(500L);
                    view.startAnimation(alphaAnimation);
                }
                if (!c1708eXA08.A0F) {
                    return;
                }
            } else if (!z2 && wasViewable) {
                this.A01 = true;
                if (c1708eXA08.A07) {
                    this.A00.A0F().A3K(c1709eYA0E.A02());
                }
                abstractC1707eW.A00();
            } else {
                abstractC1707eW.A02();
                if (!this.A01 && c1708eXA08.A07) {
                    this.A00.A0F().A3m(c1709eYA0E.A02());
                }
                this.A01 = true;
            }
            if (!c1708eXA08.A08 && c1708eXA08.A04 != null) {
                c1708eXA08.A0B.postDelayed(c1708eXA08.A04, c1708eXA08.A02);
                return;
            }
            return;
        }
        if (c1708eXA08.A07) {
            if (!z) {
                i = 2;
            }
            A00(i);
        }
    }

    @Override
    public final C1635dL A6e() {
        return this.A00;
    }
}

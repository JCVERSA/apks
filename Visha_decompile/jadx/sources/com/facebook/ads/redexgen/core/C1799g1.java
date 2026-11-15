package com.facebook.ads.redexgen.core;

import android.os.Bundle;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;

public final class C1799g1 extends AbstractC1131Oh {
    public final AbstractC1131Oh A00 = new C1800g2(this);
    public final C06826g A01;

    public C1799g1(C06826g c06826g) {
        this.A01 = c06826g;
    }

    @Override
    public final void A07(View view, AccessibilityEvent accessibilityEvent) {
        super.A07(view, accessibilityEvent);
        accessibilityEvent.setClassName(C06826g.class.getName());
        if ((view instanceof C06826g) && !A0B()) {
            C06826g c06826g = (C06826g) view;
            if (c06826g.getLayoutManager() != null) {
                c06826g.getLayoutManager().A1v(accessibilityEvent);
            }
        }
    }

    @Override
    public final void A08(View view, PS ps) {
        super.A08(view, ps);
        ps.A0O(C06826g.class.getName());
        if (!A0B() && this.A01.getLayoutManager() != null) {
            this.A01.getLayoutManager().A1H(ps);
        }
    }

    @Override
    public final boolean A09(View view, int i, Bundle bundle) {
        if (super.A09(view, i, bundle)) {
            return true;
        }
        if (!A0B() && this.A01.getLayoutManager() != null) {
            return this.A01.getLayoutManager().A1X(i, bundle);
        }
        return false;
    }

    public final AbstractC1131Oh A0A() {
        return this.A00;
    }

    public final boolean A0B() {
        return this.A01.A1r();
    }
}

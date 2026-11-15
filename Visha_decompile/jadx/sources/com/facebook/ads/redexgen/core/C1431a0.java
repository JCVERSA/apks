package com.facebook.ads.redexgen.core;

import android.animation.LayoutTransition;
import android.view.View;
import android.view.ViewGroup;

public class C1431a0 implements LayoutTransition.TransitionListener {
    public final C1432a1 A00;

    public C1431a0(C1432a1 c1432a1) {
        this.A00 = c1432a1;
    }

    @Override
    public final void endTransition(LayoutTransition layoutTransition, ViewGroup viewGroup, View view, int i) {
        ((AbstractC1426Zv) this.A00.A00.A00).A09.setAlpha(1.0f);
        this.A00.A00.A00.A0Q.setAlpha(1.0f);
        this.A00.A00.A00.A0P.setAlpha(1.0f);
    }

    @Override
    public final void startTransition(LayoutTransition layoutTransition, ViewGroup viewGroup, View view, int i) {
    }
}

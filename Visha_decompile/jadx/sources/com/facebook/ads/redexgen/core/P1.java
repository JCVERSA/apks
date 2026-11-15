package com.facebook.ads.redexgen.core;

import android.view.View;
import android.view.WindowInsets;

public class P1 implements View.OnApplyWindowInsetsListener {
    public final InterfaceC1137On A00;
    public final C0B A01;

    public P1(C0B c0b, InterfaceC1137On interfaceC1137On) {
        this.A01 = c0b;
        this.A00 = interfaceC1137On;
    }

    @Override
    public final WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
        PK compatInsets = this.A00.ACL(view, PK.A00(windowInsets));
        return (WindowInsets) PK.A01(compatInsets);
    }
}

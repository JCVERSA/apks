package com.facebook.ads.redexgen.core;

import android.view.View;
import android.view.WindowInsets;

public class C0B extends C0E {
    @Override
    public final PK A07(View view, PK pk) {
        WindowInsets result = (WindowInsets) PK.A01(pk);
        WindowInsets unwrapped = view.dispatchApplyWindowInsets(result);
        if (unwrapped != result) {
            result = new WindowInsets(unwrapped);
        }
        return PK.A00(result);
    }

    @Override
    public final PK A08(View view, PK pk) {
        WindowInsets result = (WindowInsets) PK.A01(pk);
        WindowInsets unwrapped = view.onApplyWindowInsets(result);
        if (unwrapped != result) {
            result = new WindowInsets(unwrapped);
        }
        return PK.A00(result);
    }

    @Override
    public final void A0A(View view) {
        view.stopNestedScroll();
    }

    @Override
    public final void A0E(View view, InterfaceC1137On interfaceC1137On) {
        if (interfaceC1137On == null) {
            view.setOnApplyWindowInsetsListener(null);
        } else {
            view.setOnApplyWindowInsetsListener(new P1(this, interfaceC1137On));
        }
    }
}

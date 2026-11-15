package com.transsion.ad.strategy;

import android.view.View;
import kotlin.jvm.internal.Intrinsics;

public final class h {

    public static final h f41183a = new h();

    private h() {
    }

    public final void a(View view) {
        Intrinsics.h(view, "view");
        if (com.transsion.ad.scene.b.f41153a.l()) {
            view.setVisibility(0);
        } else {
            view.setVisibility(8);
        }
    }
}

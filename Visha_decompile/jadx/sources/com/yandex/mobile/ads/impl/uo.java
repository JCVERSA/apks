package com.yandex.mobile.ads.impl;

import android.view.View;
import defpackage.y45;

public final class uo {
    private og a;

    public final void a(View view, String str) {
        y45.j(view, "view");
        y45.j(str, "assetName");
        og ogVar = this.a;
        if (ogVar != null) {
            ogVar.a(view, str);
        }
    }

    public final void a(og ogVar) {
        y45.j(ogVar, "listener");
        this.a = ogVar;
    }
}

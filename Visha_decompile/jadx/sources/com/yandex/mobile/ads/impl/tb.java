package com.yandex.mobile.ads.impl;

import android.app.Dialog;
import android.content.Context;
import android.view.ViewGroup;
import android.view.Window;
import com.yandex.mobile.ads.R;
import defpackage.y45;

public final class tb {
    private final Context a;
    private final rb b;
    private final ob c;

    public tb(vb vbVar, Context context, rb rbVar, ob obVar) {
        y45.j(vbVar, "adtuneOptOutWebView");
        y45.j(context, "context");
        y45.j(rbVar, "adtuneOptOutContainerCreator");
        y45.j(obVar, "adtuneControlsConfigurator");
        this.a = context;
        this.b = rbVar;
        this.c = obVar;
    }

    public final Dialog a() {
        Dialog dialog = new Dialog(this.a, R.style.MonetizationAdsInternal_BottomAdtuneDialog);
        ViewGroup viewGroupA = this.b.a();
        this.c.a(viewGroupA, dialog);
        dialog.setContentView(viewGroupA);
        Window window = dialog.getWindow();
        if (window != null) {
            window.setGravity(80);
        }
        return dialog;
    }
}

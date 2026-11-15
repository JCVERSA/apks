package com.yandex.mobile.ads.impl;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.view.ViewGroup;
import android.view.Window;
import com.yandex.mobile.ads.R;
import defpackage.y45;

public final class pb {
    private final Context a;
    private final mb b;
    private final ob c;

    public pb(Activity activity, bc bcVar, mb mbVar, ob obVar) {
        y45.j(activity, "context");
        y45.j(bcVar, "adtuneWebView");
        y45.j(mbVar, "adtuneContainerCreator");
        y45.j(obVar, "adtuneControlsConfigurator");
        this.a = activity;
        this.b = mbVar;
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

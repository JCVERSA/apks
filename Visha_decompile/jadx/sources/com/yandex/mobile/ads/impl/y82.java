package com.yandex.mobile.ads.impl;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import defpackage.y45;

public final class y82 {
    private final x82 a;

    public y82() {
        this(new x82());
    }

    public final boolean a(Context context, String str) {
        y45.j(context, "context");
        y45.j(str, "url");
        try {
            this.a.getClass();
            y45.j(context, "context");
            y45.j(str, "url");
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(str));
            intent.putExtra("monetization_ads_activity_click", true);
            if (!(context instanceof Activity)) {
                intent.addFlags(268435456);
            }
            context.startActivity(intent);
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    public y82(x82 x82Var) {
        y45.j(x82Var, "intentCreator");
        this.a = x82Var;
    }
}

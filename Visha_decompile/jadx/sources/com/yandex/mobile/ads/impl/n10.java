package com.yandex.mobile.ads.impl;

import android.app.Activity;
import android.app.Dialog;
import defpackage.y45;

public final class n10 {
    public static final void a(Dialog dialog) {
        y45.j(dialog, "<this>");
        Activity ownerActivity = dialog.getOwnerActivity();
        boolean z = ownerActivity == null || !(ownerActivity.isFinishing() || ownerActivity.isDestroyed());
        if (dialog.isShowing() && z) {
            try {
                dialog.dismiss();
            } catch (Exception unused) {
                int i = sp0.b;
                y45.j(new Object[0], "args");
            }
        }
    }
}

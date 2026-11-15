package com.yandex.mobile.ads.impl;

import android.app.Dialog;
import android.content.DialogInterface;
import com.yandex.mobile.ads.impl.m10;
import defpackage.y45;

public final class m10 implements zr {
    private Dialog a;

    public final void a(Dialog dialog) {
        y45.j(dialog, "dialog");
        this.a = dialog;
        dialog.setOnDismissListener(new DialogInterface.OnDismissListener() {
            @Override
            public final void onDismiss(DialogInterface dialogInterface) {
                m10.a(this.b, dialogInterface);
            }
        });
    }

    @Override
    public final void f() {
        Dialog dialog = this.a;
        if (dialog != null) {
            n10.a(dialog);
        }
    }

    public static final void a(m10 m10Var, DialogInterface dialogInterface) {
        y45.j(m10Var, "this$0");
        Dialog dialog = m10Var.a;
        if (dialog != null) {
            dialog.setOnDismissListener(null);
        }
        m10Var.a = null;
    }
}

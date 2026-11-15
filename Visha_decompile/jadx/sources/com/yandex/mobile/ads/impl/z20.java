package com.yandex.mobile.ads.impl;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import com.yandex.div.core.view2.Div2View;
import com.yandex.mobile.ads.R;
import com.yandex.mobile.ads.impl.z20;
import defpackage.y45;
import java.util.Iterator;
import java.util.List;

public final class z20 implements dq {
    private final q61 a;
    private final zr b;
    private final sp1 c;
    private final h30 d;
    private final n30 e;
    private Dialog f;

    public z20(q61 q61Var, zr zrVar, sp1 sp1Var, h30 h30Var, n30 n30Var) {
        y45.j(q61Var, "nativeAdPrivate");
        y45.j(zrVar, "contentCloseListener");
        y45.j(sp1Var, "reporter");
        y45.j(h30Var, "divKitDesignProvider");
        y45.j(n30Var, "divViewCreator");
        this.a = q61Var;
        this.b = zrVar;
        this.c = sp1Var;
        this.d = h30Var;
        this.e = n30Var;
    }

    @Override
    public final void a() {
        Dialog dialog = this.f;
        if (dialog != null) {
            n10.a(dialog);
        }
    }

    @Override
    public final void a(Context context) {
        b30 b30Var;
        Object next;
        y45.j(context, "context");
        try {
            h30 h30Var = this.d;
            q61 q61Var = this.a;
            h30Var.getClass();
            y45.j(q61Var, "nativeAdPrivate");
            List<b30> listC = q61Var.c();
            if (listC != null) {
                Iterator<T> it = listC.iterator();
                do {
                    if (!it.hasNext()) {
                        next = null;
                        break;
                    }
                    next = it.next();
                } while (!y45.e(((b30) next).e(), h10.e.a()));
                b30Var = (b30) next;
            } else {
                b30Var = null;
            }
            if (b30Var == null) {
                this.b.f();
                return;
            }
            a30 a30Var = new a30(context, null);
            n30 n30Var = this.e;
            defpackage.jh2 jh2VarA = a30Var.a();
            y45.i(jh2VarA, "<get-divConfiguration>(...)");
            n30Var.getClass();
            Div2View div2ViewA = n30.a(context, jh2VarA, null);
            Dialog dialog = new Dialog(context, R.style.MonetizationAdsInternal_FullscreenDialog);
            dialog.setOnDismissListener(new DialogInterface.OnDismissListener() {
                @Override
                public final void onDismiss(DialogInterface dialogInterface) {
                    z20.a(this.b, dialogInterface);
                }
            });
            div2ViewA.setActionHandler(new cq(new bq(dialog, this.b)));
            div2ViewA.setData(b30Var.b(), b30Var.c());
            dialog.setContentView(div2ViewA);
            this.f = dialog;
            dialog.show();
        } catch (Throwable th) {
            this.c.reportError("Failed to show DivKit close dialog", th);
        }
    }

    public static final void a(z20 z20Var, DialogInterface dialogInterface) {
        y45.j(z20Var, "this$0");
        z20Var.f = null;
    }
}

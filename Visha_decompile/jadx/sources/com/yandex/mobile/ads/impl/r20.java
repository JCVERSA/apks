package com.yandex.mobile.ads.impl;

import android.app.Dialog;
import android.content.Context;
import com.yandex.div.core.view2.Div2View;
import com.yandex.mobile.ads.R;
import defpackage.y45;

public final class r20 {
    private final m10 a;
    private final q20 b;

    public r20(m10 m10Var, o20 o20Var, q20 q20Var) {
        y45.j(m10Var, "contentCloseListener");
        y45.j(o20Var, "actionHandler");
        y45.j(q20Var, "binder");
        this.a = m10Var;
        this.b = q20Var;
    }

    public final void a(Context context, n20 n20Var) {
        y45.j(context, "context");
        y45.j(n20Var, "action");
        Div2View div2ViewA = this.b.a(context, n20Var);
        Dialog dialog = new Dialog(div2ViewA.getContext(), R.style.MonetizationAdsInternal_FullscreenDialog);
        this.a.a(dialog);
        dialog.setContentView(div2ViewA);
        dialog.show();
    }
}

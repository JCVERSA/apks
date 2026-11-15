package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.view.ContextThemeWrapper;
import com.yandex.div.R;
import defpackage.y45;

public final class k90 {
    private final Context a;
    private final sp1 b;
    private final f02 c;

    public k90(Context context, sp1 sp1Var) {
        this(context, sp1Var, new f02());
    }

    public final j90 a(v20 v20Var) {
        y45.j(v20Var, "clickHandler");
        e02 e02Var = new e02(this.b);
        f02 f02Var = this.c;
        Context context = this.a;
        f02Var.getClass();
        return new j90(new ContextThemeWrapper(this.a, R.style.Div), f02.a(context, e02Var, v20Var), e02Var);
    }

    public k90(Context context, sp1 sp1Var, f02 f02Var) {
        y45.j(context, "appContext");
        y45.j(sp1Var, "reporter");
        y45.j(f02Var, "sliderDivConfigurationCreator");
        this.a = context;
        this.b = sp1Var;
        this.c = f02Var;
    }
}

package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.view.ContextThemeWrapper;
import androidx.p004lifecycle.LifecycleOwner;
import com.yandex.div.R;
import com.yandex.div.core.Div2Context;
import com.yandex.div.core.view2.Div2View;
import defpackage.y45;

public final class n30 {
    public static Div2View a(Context context, defpackage.jh2 jh2Var, LifecycleOwner lifecycleOwner) {
        y45.j(context, "context");
        y45.j(jh2Var, "divConfiguration");
        return new Div2View(new Div2Context(new ContextThemeWrapper(context, R.style.Div), jh2Var, 0, lifecycleOwner, 4, null), null, 0, 6, null);
    }
}

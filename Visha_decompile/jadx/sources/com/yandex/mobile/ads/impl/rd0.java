package com.yandex.mobile.ads.impl;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import com.yandex.mobile.ads.common.AdActivity;
import defpackage.y45;

public final class rd0 {
    private final cy1 a;

    public rd0(cy1 cy1Var) {
        y45.j(cy1Var, "showActivityProvider");
        this.a = cy1Var;
    }

    public final Intent a(Context context, long j) {
        y45.j(context, "context");
        this.a.getClass();
        Intent intent = new Intent(context, (Class<?>) AdActivity.class);
        intent.putExtra("window_type", "window_type_fullscreen");
        intent.putExtra("data_identifier", j);
        if (!(context instanceof Activity)) {
            intent.addFlags(402653184);
        }
        return intent;
    }
}

package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.content.Intent;
import com.yandex.mobile.ads.common.AdActivity;
import defpackage.y45;

public final class p1 {
    private final cy1 a;

    public p1(cy1 cy1Var) {
        y45.j(cy1Var, "showActivityProvider");
        this.a = cy1Var;
    }

    public final Intent a(Context context, long j) {
        y45.j(context, "context");
        this.a.getClass();
        Intent intent = new Intent(context, (Class<?>) AdActivity.class);
        intent.putExtra("window_type", "window_type_activity_result");
        intent.putExtra("data_identifier", j);
        return intent;
    }
}

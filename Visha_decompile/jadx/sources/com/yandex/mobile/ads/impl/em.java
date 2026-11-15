package com.yandex.mobile.ads.impl;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import com.yandex.mobile.ads.common.AdActivity;
import defpackage.y45;

public final class em {
    private final cy1 a;

    public em(cy1 cy1Var) {
        y45.j(cy1Var, "showActivityProvider");
        this.a = cy1Var;
    }

    public final Intent a(Context context, String str, long j) {
        y45.j(context, "context");
        y45.j(str, "browserUrl");
        this.a.getClass();
        Intent intent = new Intent(context, (Class<?>) AdActivity.class);
        intent.putExtra("window_type", "window_type_browser");
        intent.putExtra("extra_browser_url", str);
        if (!(context instanceof Activity)) {
            intent.addFlags(402653184);
        }
        intent.putExtra("data_identifier", j);
        return intent;
    }
}

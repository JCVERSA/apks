package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;
import java.io.File;

public final class jl0 {
    private final Context a;

    public jl0(Context context) {
        y45.j(context, "context");
        this.a = context;
    }

    public final File a() {
        File file = new File(this.a.getCacheDir(), "debug_panel");
        file.mkdir();
        return new File(file, "monetization_ads_debug_panel_report.txt");
    }
}

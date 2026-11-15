package com.yandex.mobile.ads.impl;

import android.content.Context;
import com.yandex.mobile.ads.R;
import defpackage.y45;

public final class r00 implements gz {
    private final Context a;

    public r00(Context context) {
        y45.j(context, "context");
        this.a = context;
    }

    @Override
    public final ig<?> a() {
        CharSequence text = this.a.getResources().getText(R.string.monetization_ads_internal_instream_sponsored_default);
        y45.i(text, "getText(...)");
        return new ig<>("sponsored", "string", text, null, false, true);
    }
}

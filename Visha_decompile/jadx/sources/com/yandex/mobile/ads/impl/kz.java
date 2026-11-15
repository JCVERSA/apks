package com.yandex.mobile.ads.impl;

import android.content.Context;
import com.yandex.mobile.ads.R;
import defpackage.y45;

public final class kz implements gz {
    private final Context a;

    public kz(Context context) {
        y45.j(context, "context");
        this.a = context;
    }

    @Override
    public final ig<?> a() {
        CharSequence text = this.a.getResources().getText(R.string.monetization_ads_internal_instream_call_to_action);
        y45.i(text, "getText(...)");
        return new ig<>("call_to_action", "string", text, null, true, true);
    }
}

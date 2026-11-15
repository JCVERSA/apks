package io.appmetrica.analytics.impl;

import android.text.TextUtils;
import androidx.annotation.NonNull;

public final class Li extends Gg {
    public Li(@NonNull C2706m5 c2706m5) {
        super(c2706m5);
    }

    @Override
    public final boolean a(@NonNull C2408a6 c2408a6) {
        String str = c2408a6.h;
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        this.a.c.j(str).b();
        return false;
    }
}

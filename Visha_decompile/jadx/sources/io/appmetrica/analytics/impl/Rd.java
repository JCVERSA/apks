package io.appmetrica.analytics.impl;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

public final class Rd implements Pn {
    public final String a;

    public Rd(@NonNull String str) {
        this.a = str;
    }

    @Override
    public final Nn a(@Nullable String str) {
        if (!TextUtils.isEmpty(str)) {
            return new Nn(this, true, "");
        }
        return new Nn(this, false, this.a + " is empty.");
    }
}

package io.appmetrica.analytics.impl;

import androidx.annotation.Nullable;

public final class C2936vb implements Pn {
    @Override
    public final Nn a(@Nullable String str) {
        if (str == null) {
            return new Nn(this, false, "key is null");
        }
        if (str.startsWith("appmetrica")) {
            return new Nn(this, false, "key starts with appmetrica");
        }
        return str.length() > 200 ? new Nn(this, false, "key length more then 200 characters") : new Nn(this, true, "");
    }
}

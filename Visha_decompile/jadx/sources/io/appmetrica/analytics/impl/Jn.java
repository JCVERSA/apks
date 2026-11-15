package io.appmetrica.analytics.impl;

import android.content.Context;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import io.appmetrica.analytics.internal.IdentifiersResult;

public final class Jn implements Ra {
    @Override
    @Nullable
    public final String a(@NonNull Context context) {
        IdentifiersResult identifiersResultQ = new Ke(C2559g7.a(context.getApplicationContext()).a()).q();
        if (TextUtils.isEmpty(identifiersResultQ.id)) {
            return null;
        }
        return identifiersResultQ.id;
    }
}

package io.appmetrica.analytics.impl;

import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

public final class C2804q3 extends AbstractC2868si {
    public C2804q3(@NonNull Context context, @NonNull String str) {
        super(context, str, "bool");
    }

    @Override
    @Nullable
    public final Object a(int i) {
        return Boolean.valueOf(this.a.getResources().getBoolean(i));
    }

    @Nullable
    public final Boolean b(int i) {
        return Boolean.valueOf(this.a.getResources().getBoolean(i));
    }
}

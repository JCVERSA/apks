package io.appmetrica.analytics.impl;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import io.appmetrica.analytics.coreapi.internal.backport.Consumer;
import io.appmetrica.analytics.coreapi.internal.backport.Function;
import java.io.File;

public final class C2861sb implements Function, Consumer {
    @Override
    @Nullable
    public final C2787pb apply(@NonNull File file) {
        String strA = Qa.a(file);
        if (!TextUtils.isEmpty(strA)) {
            try {
                return new C2787pb(strA);
            } catch (Throwable unused) {
            }
        }
        return null;
    }

    @Override
    public final void consume(@NonNull File file) {
        try {
            file.delete();
        } catch (Throwable unused) {
        }
    }
}

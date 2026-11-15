package io.appmetrica.analytics.impl;

import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import io.appmetrica.analytics.ICrashTransformer;

public final class C2892th extends AbstractC2881t6 {
    public final AbstractC2898tn d;

    public C2892th(@NonNull Context context, @NonNull AbstractC2898tn abstractC2898tn, @NonNull InterfaceC2856s6 interfaceC2856s6, @Nullable ICrashTransformer iCrashTransformer) {
        this(abstractC2898tn, interfaceC2856s6, iCrashTransformer, new T9(context));
    }

    @NonNull
    @VisibleForTesting
    public final AbstractC2898tn c() {
        return this.d;
    }

    public C2892th(AbstractC2898tn abstractC2898tn, InterfaceC2856s6 interfaceC2856s6, ICrashTransformer iCrashTransformer, T9 t9) {
        super(interfaceC2856s6, iCrashTransformer, t9);
        this.d = abstractC2898tn;
    }
}

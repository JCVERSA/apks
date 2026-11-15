package io.appmetrica.analytics.impl;

import android.content.Context;
import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import io.appmetrica.analytics.AppMetrica;
import io.appmetrica.analytics.internal.CounterConfiguration;

public class C2431b4 {
    public final C2791pf a;
    public final CounterConfiguration b;

    public C2431b4(C2791pf c2791pf, CounterConfiguration counterConfiguration) {
        this.a = c2791pf;
        this.b = counterConfiguration;
    }

    @Nullable
    public static C2431b4 a(@NonNull Context context, @NonNull Bundle bundle) {
        C2791pf c2791pf;
        String str = C2791pf.c;
        if (bundle != null) {
            try {
                c2791pf = (C2791pf) bundle.getParcelable("PROCESS_CFG_OBJ");
            } catch (Throwable unused) {
                c2791pf = null;
            }
        } else {
            c2791pf = null;
        }
        CounterConfiguration counterConfigurationFromBundle = CounterConfiguration.fromBundle(bundle);
        if (counterConfigurationFromBundle == null || c2791pf == null || !context.getPackageName().equals(c2791pf.a.getAsString("PROCESS_CFG_PACKAGE_NAME")) || c2791pf.a.getAsInteger("PROCESS_CFG_SDK_API_LEVEL").intValue() != AppMetrica.getLibraryApiLevel()) {
            return null;
        }
        return new C2431b4(c2791pf, counterConfigurationFromBundle);
    }

    @NonNull
    public final CounterConfiguration b() {
        return this.b;
    }

    public final String toString() {
        return "ClientConfiguration{mProcessConfiguration=" + this.a + ", mCounterConfiguration=" + this.b + '}';
    }

    @NonNull
    public final C2791pf a() {
        return this.a;
    }
}

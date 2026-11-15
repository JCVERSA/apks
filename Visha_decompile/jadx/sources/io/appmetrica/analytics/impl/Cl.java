package io.appmetrica.analytics.impl;

import android.content.Context;
import androidx.annotation.NonNull;
import io.appmetrica.analytics.coreutils.internal.services.SafePackageManager;
import io.appmetrica.analytics.networktasks.internal.BaseRequestConfig;
import java.util.Map;

public final class Cl extends X5 {
    public final T3 b;

    public Cl(@NonNull Context context, @NonNull String str) {
        this(context, str, new SafePackageManager(), C2910ua.j().e());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    @NonNull
    public final Dl load(@NonNull W5 w5) {
        Dl dl = (Dl) super.load(w5);
        Hl hl = w5.a;
        dl.d = hl.f;
        dl.e = hl.g;
        Bl bl = (Bl) w5.componentArguments;
        String str = bl.a;
        if (str != null) {
            dl.f = str;
            dl.g = bl.b;
        }
        Map<String, String> map = bl.c;
        dl.h = map;
        dl.i = (L3) this.b.a(new L3(map, X7.c));
        Bl bl2 = (Bl) w5.componentArguments;
        dl.k = bl2.d;
        dl.j = bl2.e;
        Hl hl2 = w5.a;
        dl.l = hl2.p;
        dl.m = hl2.r;
        long j = hl2.v;
        if (dl.n == 0) {
            dl.n = j;
        }
        return dl;
    }

    @Override
    @NonNull
    public final BaseRequestConfig createBlankConfig() {
        return new Dl();
    }

    public Cl(@NonNull Context context, @NonNull String str, @NonNull SafePackageManager safePackageManager, @NonNull T3 t3) {
        super(context, str, safePackageManager);
        this.b = t3;
    }

    @NonNull
    public final Dl a() {
        return new Dl();
    }
}

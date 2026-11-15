package io.appmetrica.analytics.impl;

import android.content.Context;
import androidx.annotation.NonNull;
import io.appmetrica.analytics.coreutils.internal.services.PackageManagerUtils;
import io.appmetrica.analytics.coreutils.internal.time.TimePassedChecker;

public final class C2942vh extends C2706m5 {
    public final String v;
    public final L6 w;

    public C2942vh(@NonNull Context context, @NonNull C2532f5 c2532f5, @NonNull F4 f4, @NonNull L6 l6, @NonNull Hl hl, @NonNull AbstractC2656k5 abstractC2656k5, @NonNull InterfaceC3009y9 interfaceC3009y9) {
        this(context, c2532f5, new C2502e0(), new TimePassedChecker(), new C2830r5(context, c2532f5, f4, abstractC2656k5, hl, new C2818qh(l6), C2910ua.j().w().d(), PackageManagerUtils.getAppVersionCodeInt(context), C2910ua.j().k(), interfaceC3009y9), l6, f4);
    }

    @Override
    public final synchronized void a(@NonNull F4 f4) {
        super.a(f4);
        this.w.a(this.v, f4.i);
    }

    public C2942vh(Context context, C2532f5 c2532f5, C2502e0 c2502e0, TimePassedChecker timePassedChecker, C2830r5 c2830r5, L6 l6, F4 f4) {
        super(context, c2532f5, c2502e0, timePassedChecker, c2830r5, f4);
        this.v = c2532f5.b();
        this.w = l6;
    }
}

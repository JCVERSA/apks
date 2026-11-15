package io.appmetrica.analytics.impl;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import io.appmetrica.analytics.AdRevenue;
import io.appmetrica.analytics.ModuleEvent;
import io.appmetrica.analytics.Revenue;
import io.appmetrica.analytics.ecommerce.ECommerceEvent;
import io.appmetrica.analytics.plugins.IPluginReporter;
import io.appmetrica.analytics.plugins.PluginErrorDetails;
import io.appmetrica.analytics.profile.UserProfile;
import java.util.ArrayList;
import java.util.Map;

public final class Fj implements Ya, IPluginReporter {
    public final ArrayList a = new ArrayList();
    public volatile Yh b;

    @Override
    public final void a(@NonNull C2749nn c2749nn) {
        a(new C2795pj(c2749nn));
    }

    @Override
    public final void clearAppEnvironment() {
        a(new Aj());
    }

    @Override
    @NonNull
    public final IPluginReporter getPluginExtension() {
        return this;
    }

    @Override
    public final void pauseSession() {
        a(new C2645jj());
    }

    @Override
    public final void putAppEnvironmentValue(@NonNull String str, @Nullable String str2) {
        a(new C3044zj(str, str2));
    }

    @Override
    public final void reportAdRevenue(@NonNull AdRevenue adRevenue) {
        a(new C2820qj(adRevenue));
    }

    @Override
    public final void reportAnr(@NonNull Map<Thread, StackTraceElement[]> map) {
        a(new C2994xj(map));
    }

    @Override
    public final void reportECommerce(@NonNull ECommerceEvent eCommerceEvent) {
        a(new C2745nj(eCommerceEvent));
    }

    @Override
    public final void reportError(@NonNull String str, @Nullable Throwable th) {
        a(new C2546fj(str, th));
    }

    @Override
    public final void reportEvent(@NonNull String str) {
        a(new Cj(str));
    }

    @Override
    public final void reportRevenue(@NonNull Revenue revenue) {
        a(new C2720mj(revenue));
    }

    @Override
    public final void reportUnhandledException(@NonNull Throwable th) {
        a(new C2596hj(th));
    }

    @Override
    public final void reportUserProfile(@NonNull UserProfile userProfile) {
        a(new C2695lj(userProfile));
    }

    @Override
    public final void resumeSession() {
        a(new C2620ij());
    }

    @Override
    public final void sendEventsBuffer() {
        a(new Bj());
    }

    @Override
    public final void setDataSendingEnabled(boolean z) {
        a(new C2770oj(z));
    }

    @Override
    public final void setSessionExtra(@NonNull String str, @Nullable byte[] bArr) {
        a(new C2944vj(str, bArr));
    }

    @Override
    public final void setUserProfileID(@Nullable String str) {
        a(new C2670kj(str));
    }

    @Override
    public final void a(@NonNull S s) {
        a(new C3019yj(s));
    }

    @Override
    public final void reportAdRevenue(@NonNull AdRevenue adRevenue, boolean z) {
        a(new C2969wj(adRevenue, z));
    }

    @Override
    public final void reportError(@NonNull String str, @Nullable String str2) {
        a(new C2571gj(str, str2, null));
    }

    @Override
    public final void reportEvent(@NonNull String str, @Nullable String str2) {
        a(new Dj(str, str2));
    }

    @Override
    public final void reportUnhandledException(@NonNull PluginErrorDetails pluginErrorDetails) {
        a(new C2844rj(pluginErrorDetails));
    }

    public final synchronized void a(Xa xa) {
        try {
            if (this.b == null) {
                this.a.add(xa);
            } else {
                xa.a(this.b);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override
    public final void reportError(@NonNull String str, @Nullable String str2, @NonNull Throwable th) {
        a(new C2571gj(str, str2, th));
    }

    @Override
    public final void reportEvent(@NonNull String str, @Nullable Map<String, Object> map) {
        a(new Ej(str, map));
    }

    @Override
    public final void reportError(@NonNull PluginErrorDetails pluginErrorDetails, @Nullable String str) {
        a(new C2869sj(pluginErrorDetails, str));
    }

    @Override
    public final void reportEvent(@NonNull ModuleEvent moduleEvent) {
        a(new C2919uj(moduleEvent));
    }

    @Override
    public final void reportError(@NonNull String str, @Nullable String str2, @Nullable PluginErrorDetails pluginErrorDetails) {
        a(new C2894tj(str, str2, pluginErrorDetails));
    }
}

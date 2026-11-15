package io.appmetrica.analytics.impl;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import io.appmetrica.analytics.AdRevenue;
import io.appmetrica.analytics.ModuleEvent;
import io.appmetrica.analytics.Revenue;
import io.appmetrica.analytics.ecommerce.ECommerceEvent;
import io.appmetrica.analytics.plugins.IPluginReporter;
import io.appmetrica.analytics.profile.UserProfile;
import java.util.Map;

public class Zh implements Ya {
    public final Ee a = new Ee();

    @Override
    public final void a(@NonNull S s) {
    }

    @Override
    public final void clearAppEnvironment() {
    }

    @Override
    @NonNull
    public final IPluginReporter getPluginExtension() {
        return this.a;
    }

    @Override
    public final void pauseSession() {
    }

    @Override
    public final void putAppEnvironmentValue(@NonNull String str, @Nullable String str2) {
    }

    @Override
    public final void reportAdRevenue(@NonNull AdRevenue adRevenue) {
    }

    @Override
    public final void reportAnr(@NonNull Map<Thread, StackTraceElement[]> map) {
    }

    @Override
    public final void reportECommerce(@NonNull ECommerceEvent eCommerceEvent) {
    }

    @Override
    public final void reportError(@NonNull String str, @Nullable String str2) {
    }

    public void reportEvent(@NonNull ModuleEvent moduleEvent) {
    }

    @Override
    public final void reportRevenue(@NonNull Revenue revenue) {
    }

    @Override
    public final void reportUnhandledException(@NonNull Throwable th) {
    }

    @Override
    public final void reportUserProfile(@NonNull UserProfile userProfile) {
    }

    @Override
    public final void resumeSession() {
    }

    @Override
    public final void sendEventsBuffer() {
    }

    @Override
    public final void setDataSendingEnabled(boolean z) {
    }

    @Override
    public final void setSessionExtra(@NonNull String str, @Nullable byte[] bArr) {
    }

    @Override
    public final void setUserProfileID(@Nullable String str) {
    }

    @Override
    public final void a(@NonNull C2749nn c2749nn) {
    }

    public void reportAdRevenue(@NonNull AdRevenue adRevenue, boolean z) {
    }

    @Override
    public final void reportError(@NonNull String str, @Nullable String str2, @Nullable Throwable th) {
    }

    @Override
    public final void reportEvent(@NonNull String str) {
    }

    @Override
    public final void reportError(@NonNull String str, @Nullable Throwable th) {
    }

    @Override
    public final void reportEvent(@NonNull String str, @Nullable String str2) {
    }

    @Override
    public final void reportEvent(@NonNull String str, @Nullable Map<String, Object> map) {
    }
}

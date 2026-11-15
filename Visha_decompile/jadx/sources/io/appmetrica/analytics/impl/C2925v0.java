package io.appmetrica.analytics.impl;

import android.location.Location;
import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import io.appmetrica.analytics.AdvIdentifiersResult;
import io.appmetrica.analytics.AppMetricaConfig;
import io.appmetrica.analytics.AppMetricaLibraryAdapterConfig;
import io.appmetrica.analytics.DeferredDeeplinkListener;
import io.appmetrica.analytics.DeferredDeeplinkParametersListener;
import io.appmetrica.analytics.ReporterConfig;
import io.appmetrica.analytics.StartupParamsCallback;
import java.util.List;
import java.util.Map;

public final class C2925v0 implements Ja {
    @Override
    public final void a(int i, @NonNull Bundle bundle) {
    }

    @Override
    public final void b(boolean z) {
    }

    @Override
    @NonNull
    public final Ya c(@NonNull ReporterConfig reporterConfig) {
        return new Zh();
    }

    @Override
    public final void clearAppEnvironment() {
    }

    @Override
    @NonNull
    public final C2512ea d() {
        return new C2512ea();
    }

    @Override
    @Nullable
    public final String e() {
        return null;
    }

    @Override
    @Nullable
    public final Map<String, String> g() {
        return null;
    }

    @Override
    @NonNull
    public final AdvIdentifiersResult h() {
        AdvIdentifiersResult.Details details = AdvIdentifiersResult.Details.INTERNAL_ERROR;
        return new AdvIdentifiersResult(new AdvIdentifiersResult.AdvId(null, details, "Device user is in locked state"), new AdvIdentifiersResult.AdvId(null, details, "Device user is in locked state"), new AdvIdentifiersResult.AdvId(null, details, "Device user is in locked state"));
    }

    @Override
    @Nullable
    public final C2788pc i() {
        Dc dc = new Dc();
        return new C2788pc(dc, new G7(dc));
    }

    @Override
    public final void putAppEnvironmentValue(String str, String str2) {
    }

    @Override
    public final void setDataSendingEnabled(boolean z) {
    }

    @Override
    public final void setUserProfileID(@Nullable String str) {
    }

    @Override
    public final void a(@Nullable Location location) {
    }

    @Override
    public final void a(@NonNull AppMetricaConfig appMetricaConfig) {
    }

    @Override
    public final void a(@NonNull AppMetricaLibraryAdapterConfig appMetricaLibraryAdapterConfig) {
    }

    @Override
    public final void a(DeferredDeeplinkListener deferredDeeplinkListener) {
    }

    @Override
    public final void a(DeferredDeeplinkParametersListener deferredDeeplinkParametersListener) {
    }

    @Override
    public final void a(@NonNull ReporterConfig reporterConfig) {
    }

    @Override
    public final void a(String str, String str2) {
    }

    @Override
    public final void a(boolean z) {
    }

    @Override
    public final void a(@NonNull StartupParamsCallback startupParamsCallback, @NonNull List<String> list) {
        startupParamsCallback.onRequestError(StartupParamsCallback.Reason.UNKNOWN, null);
    }

    @Override
    @NonNull
    public final Za a() {
        return new C2470ci();
    }
}

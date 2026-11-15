package io.appmetrica.analytics.impl;

import android.location.Location;
import android.os.Bundle;
import androidx.annotation.AnyThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import io.appmetrica.analytics.AdvIdentifiersResult;
import io.appmetrica.analytics.AppMetricaConfig;
import io.appmetrica.analytics.AppMetricaLibraryAdapterConfig;
import io.appmetrica.analytics.DeferredDeeplinkListener;
import io.appmetrica.analytics.DeferredDeeplinkParametersListener;
import io.appmetrica.analytics.ReporterConfig;
import io.appmetrica.analytics.StartupParamsCallback;
import java.util.List;
import java.util.Map;

public interface Ja extends Nc, H6, InterfaceC2413ab {
    @Override
    @NonNull
    Za a();

    @Override
    void a(int i, @NonNull Bundle bundle);

    @Override
    void a(@Nullable Location location);

    @WorkerThread
    void a(@NonNull AppMetricaConfig appMetricaConfig);

    @WorkerThread
    void a(@NonNull AppMetricaLibraryAdapterConfig appMetricaLibraryAdapterConfig);

    @WorkerThread
    void a(DeferredDeeplinkListener deferredDeeplinkListener);

    @WorkerThread
    void a(DeferredDeeplinkParametersListener deferredDeeplinkParametersListener);

    @WorkerThread
    void a(@NonNull ReporterConfig reporterConfig);

    @WorkerThread
    void a(@NonNull StartupParamsCallback startupParamsCallback, @NonNull List<String> list);

    @Override
    void a(String str, String str2);

    @Override
    void a(boolean z);

    @Override
    void b(boolean z);

    @NonNull
    @WorkerThread
    Ya c(@NonNull ReporterConfig reporterConfig);

    @Override
    void clearAppEnvironment();

    @NonNull
    @AnyThread
    C2512ea d();

    @Nullable
    @AnyThread
    String e();

    @Nullable
    @AnyThread
    Map<String, String> g();

    @NonNull
    @AnyThread
    AdvIdentifiersResult h();

    @Nullable
    @AnyThread
    C2788pc i();

    @Override
    void putAppEnvironmentValue(String str, String str2);

    @Override
    void setDataSendingEnabled(boolean z);

    @Override
    void setUserProfileID(@Nullable String str);
}

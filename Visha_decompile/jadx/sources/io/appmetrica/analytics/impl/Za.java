package io.appmetrica.analytics.impl;

import androidx.annotation.NonNull;
import androidx.annotation.WorkerThread;
import io.appmetrica.analytics.AppMetricaConfig;
import io.appmetrica.analytics.ReporterConfig;
import io.appmetrica.analytics.logger.appmetrica.internal.PublicLogger;

public interface Za extends InterfaceC2413ab {
    @NonNull
    @WorkerThread
    Pa a(@NonNull AppMetricaConfig appMetricaConfig, @NonNull PublicLogger publicLogger, boolean z);

    @Override
    @NonNull
    Za a();

    void a(@NonNull ReporterConfig reporterConfig);

    @NonNull
    @WorkerThread
    Pa b(@NonNull AppMetricaConfig appMetricaConfig, @NonNull PublicLogger publicLogger, boolean z);

    @NonNull
    Ya b(@NonNull ReporterConfig reporterConfig);

    @NonNull
    InterfaceC2438bb b(@NonNull AppMetricaConfig appMetricaConfig);
}

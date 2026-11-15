package io.appmetrica.analytics.impl;

import androidx.annotation.NonNull;
import io.appmetrica.analytics.AppMetricaConfig;
import io.appmetrica.analytics.ReporterConfig;
import io.appmetrica.analytics.logger.appmetrica.internal.PublicLogger;

public final class C2470ci implements Za {
    @Override
    @NonNull
    public final Za a() {
        return this;
    }

    @Override
    @NonNull
    public final Pa b(@NonNull AppMetricaConfig appMetricaConfig, @NonNull PublicLogger publicLogger, boolean z) {
        return new Dc();
    }

    @Override
    public final void a(@NonNull ReporterConfig reporterConfig) {
    }

    @Override
    @NonNull
    public final Ya b(@NonNull ReporterConfig reporterConfig) {
        return new Zh();
    }

    @Override
    @NonNull
    public final Pa a(@NonNull AppMetricaConfig appMetricaConfig, @NonNull PublicLogger publicLogger, boolean z) {
        return new Dc();
    }

    @Override
    @NonNull
    public final InterfaceC2438bb b(@NonNull AppMetricaConfig appMetricaConfig) {
        return new Zh();
    }
}

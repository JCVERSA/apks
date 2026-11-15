package io.appmetrica.analytics.internal;

import android.os.Bundle;

public final class a extends IAppMetricaService.Stub {
    @Override
    public final void pauseUserSession(Bundle bundle) {
        AppMetricaService.c.pauseUserSession(bundle);
    }

    @Override
    public final void reportData(int i, Bundle bundle) {
        AppMetricaService.c.reportData(i, bundle);
    }

    @Override
    public final void resumeUserSession(Bundle bundle) {
        AppMetricaService.c.resumeUserSession(bundle);
    }
}

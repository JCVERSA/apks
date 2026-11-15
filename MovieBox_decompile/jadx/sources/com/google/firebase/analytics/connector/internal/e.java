package com.google.firebase.analytics.connector.internal;

import android.os.Bundle;
import com.google.android.gms.measurement.api.AppMeasurementSdk;

final class e implements AppMeasurementSdk.OnEventListener {

    private final f f30239a;

    public e(f fVar) {
        this.f30239a = fVar;
    }

    @Override
    public final void onEvent(String str, String str2, Bundle bundle, long j10) {
        if (str == null || !a.i(str2)) {
            return;
        }
        Bundle bundle2 = new Bundle();
        bundle2.putString("name", str2);
        bundle2.putLong("timestampInMillis", j10);
        bundle2.putBundle("params", bundle);
        this.f30239a.f30240a.a(3, bundle2);
    }
}

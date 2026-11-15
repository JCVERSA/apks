package com.google.firebase.analytics.connector.internal;

import android.os.Bundle;
import com.google.android.gms.measurement.api.AppMeasurementSdk;

final class c implements AppMeasurementSdk.OnEventListener {

    private final d f30234a;

    public c(d dVar) {
        this.f30234a = dVar;
    }

    @Override
    public final void onEvent(String str, String str2, Bundle bundle, long j10) {
        if (this.f30234a.f30235a.contains(str2)) {
            Bundle bundle2 = new Bundle();
            bundle2.putString("events", a.b(str2));
            this.f30234a.f30236b.a(2, bundle2);
        }
    }
}

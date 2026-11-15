package io.appmetrica.analytics.gpllibrary.internal;

import android.location.LocationListener;
import com.google.android.gms.location.LocationResult;
import defpackage.io5;

class GplLocationCallback extends io5 {
    private final LocationListener a;

    public GplLocationCallback(LocationListener locationListener) {
        this.a = locationListener;
    }

    @Override
    public void onLocationResult(LocationResult locationResult) {
        this.a.onLocationChanged(locationResult.getLastLocation());
    }
}

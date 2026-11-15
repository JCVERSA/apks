package io.appmetrica.analytics.gpllibrary.internal;

import android.location.Location;
import android.location.LocationListener;
import defpackage.lf7;

class GplOnSuccessListener implements lf7 {
    private final LocationListener a;

    public GplOnSuccessListener(LocationListener locationListener) {
        this.a = locationListener;
    }

    @Override
    public void onSuccess(Location location) {
        this.a.onLocationChanged(location);
    }
}

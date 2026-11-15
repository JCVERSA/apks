package io.appmetrica.analytics.impl;

import android.content.Context;
import android.location.LocationManager;

public final class B2 {
    public final LocationManager a;

    public B2(Context context) {
        this((LocationManager) context.getSystemService("location"));
    }

    public B2(LocationManager locationManager) {
        this.a = locationManager;
    }
}

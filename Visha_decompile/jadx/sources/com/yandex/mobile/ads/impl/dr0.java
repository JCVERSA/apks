package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.location.Location;
import android.location.LocationManager;
import defpackage.y45;
import java.util.Iterator;
import java.util.List;

public final class dr0 implements ys0 {
    private final at0 a;
    private final LocationManager b;
    private final b42 c;

    public dr0(Context context, at0 at0Var) {
        y45.j(context, "context");
        y45.j(at0Var, "locationSelector");
        this.a = at0Var;
        Object systemService = context.getApplicationContext().getSystemService("location");
        LocationManager locationManager = systemService instanceof LocationManager ? (LocationManager) systemService : null;
        this.b = locationManager;
        Context applicationContext = context.getApplicationContext();
        y45.i(applicationContext, "getApplicationContext(...)");
        this.c = new b42(applicationContext, locationManager);
    }

    @Override
    public final Location a() {
        List<String> allProviders;
        try {
            LocationManager locationManager = this.b;
            allProviders = locationManager != null ? locationManager.getAllProviders() : null;
        } catch (Throwable unused) {
            sp0.c(new Object[0]);
        }
        if (allProviders == null) {
            return null;
        }
        List listC = defpackage.x71.c();
        Iterator<String> it = allProviders.iterator();
        while (it.hasNext()) {
            Location locationA = this.c.a(it.next());
            if (locationA != null) {
                listC.add(locationA);
            }
        }
        return this.a.a(defpackage.x71.a(listC));
    }
}

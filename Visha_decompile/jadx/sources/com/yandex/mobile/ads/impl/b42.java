package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.location.Location;
import android.location.LocationManager;
import com.mgtv.downloader.p2p.mg.DownloadFacadeEnum;
import defpackage.y45;
import java.util.HashSet;

public final class b42 {
    private static final HashSet c = new HashSet(defpackage.x71.e(DownloadFacadeEnum.USER_GPS));
    private static final HashSet d = new HashSet(defpackage.y71.n(DownloadFacadeEnum.USER_GPS, "passive"));
    private final LocationManager a;
    private final tg1 b;

    public b42(Context context, LocationManager locationManager) {
        this(context, locationManager, new tg1(context));
    }

    public final Location a(String str) {
        y45.j(str, "locationProvider");
        boolean zA = this.b.a();
        boolean zB = this.b.b();
        boolean zContains = c.contains(str);
        if (d.contains(str)) {
            if (zContains || !zA || !zB) {
                return null;
            }
        } else if (zContains || !zA) {
            return null;
        }
        try {
            LocationManager locationManager = this.a;
            if (locationManager == null) {
                return null;
            }
            Location lastKnownLocation = locationManager.getLastKnownLocation(str);
            sp0.a(str, lastKnownLocation);
            return lastKnownLocation;
        } catch (Throwable unused) {
            sp0.b(new Object[0]);
            return null;
        }
    }

    public b42(Context context, LocationManager locationManager, tg1 tg1Var) {
        y45.j(context, "context");
        y45.j(tg1Var, "permissionExtractor");
        this.a = locationManager;
        this.b = tg1Var;
    }
}

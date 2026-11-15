package com.cloud.sdk.commonutil.util;

import android.location.Location;
import android.location.LocationManager;
import android.util.Log;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.concurrent.atomic.AtomicInteger;

public abstract class d {

    private static Location f22516a = null;

    private static double f22517b = 0.0d;

    private static double f22518c = 0.0d;

    private static int f22519d = 0;

    private static long f22520e = 0;

    private static String f22521f = "";

    private static final AtomicInteger f22522g = new AtomicInteger(0);

    private static boolean a() {
        return f22517b == 0.0d && f22518c == 0.0d && f22522g.getAndIncrement() <= 1;
    }

    public static long b() {
        h();
        return f22520e;
    }

    public static String c() {
        h();
        return f22521f;
    }

    public static double d() {
        h();
        return f22517b;
    }

    private static void e() {
        try {
            if (e.a() != null) {
                LocationManager locationManager = (LocationManager) e.a().getSystemService(RequestParameters.SUBRESOURCE_LOCATION);
                boolean zIsProviderEnabled = locationManager.isProviderEnabled("gps");
                boolean zIsProviderEnabled2 = locationManager.isProviderEnabled("network");
                if (!zIsProviderEnabled && !zIsProviderEnabled2) {
                    return;
                }
                if (zIsProviderEnabled) {
                    Location lastKnownLocation = locationManager.getLastKnownLocation("gps");
                    f22516a = lastKnownLocation;
                    g(lastKnownLocation);
                }
                if (zIsProviderEnabled2 && f22516a == null) {
                    Location lastKnownLocation2 = locationManager.getLastKnownLocation("network");
                    f22516a = lastKnownLocation2;
                    g(lastKnownLocation2);
                }
            }
        } catch (Throwable unused) {
            c.Log().d("ssp", "Location Impossible to connect to LocationManager");
        }
        Location location = f22516a;
        if (location != null) {
            g(location);
        }
    }

    public static double f() {
        h();
        return f22518c;
    }

    private static void g(Location location) {
        if (location != null) {
            f22517b = location.getLatitude();
            f22518c = location.getLongitude();
            f22519d = (int) location.getAccuracy();
            f22520e = location.getTime();
            try {
                f22521f = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss SSS Z").format(new Date(f22520e));
            } catch (Exception e10) {
                c.Log().e(Log.getStackTraceString(e10));
            }
        }
    }

    private static void h() {
        if (a()) {
            e();
        }
    }
}

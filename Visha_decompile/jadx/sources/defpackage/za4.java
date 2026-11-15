package defpackage;

import android.location.Location;
import android.location.LocationManager;
import android.util.Log;
import com.mgtv.downloader.p2p.mg.DownloadFacadeEnum;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.concurrent.atomic.AtomicInteger;

public abstract class za4 {
    public static Location a = null;
    public static double b = 0.0d;
    public static double c = 0.0d;
    public static int d = 0;
    public static long e = 0;
    public static String f = "";
    public static final AtomicInteger g = new AtomicInteger(0);

    public static boolean a() {
        return b == 0.0d && c == 0.0d && g.getAndIncrement() <= 1;
    }

    public static long b() {
        h();
        return e;
    }

    public static String c() {
        h();
        return f;
    }

    public static double d() {
        h();
        return b;
    }

    public static void e() {
        try {
            if (ul4.a() != null) {
                LocationManager locationManager = (LocationManager) ul4.a().getSystemService("location");
                boolean zIsProviderEnabled = locationManager.isProviderEnabled(DownloadFacadeEnum.USER_GPS);
                boolean zIsProviderEnabled2 = locationManager.isProviderEnabled("network");
                if (!zIsProviderEnabled && !zIsProviderEnabled2) {
                    return;
                }
                if (zIsProviderEnabled) {
                    Location lastKnownLocation = locationManager.getLastKnownLocation(DownloadFacadeEnum.USER_GPS);
                    a = lastKnownLocation;
                    g(lastKnownLocation);
                }
                if (zIsProviderEnabled2 && a == null) {
                    Location lastKnownLocation2 = locationManager.getLastKnownLocation("network");
                    a = lastKnownLocation2;
                    g(lastKnownLocation2);
                }
            }
        } catch (Throwable unused) {
            ja1.Log().d("ssp", "Location Impossible to connect to LocationManager");
        }
        Location location = a;
        if (location != null) {
            g(location);
        }
    }

    public static double f() {
        h();
        return c;
    }

    public static void g(Location location) {
        if (location != null) {
            b = location.getLatitude();
            c = location.getLongitude();
            d = (int) location.getAccuracy();
            e = location.getTime();
            try {
                f = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss SSS Z").format(new Date(e));
            } catch (Exception e2) {
                ja1.Log().e(Log.getStackTraceString(e2));
            }
        }
    }

    public static void h() {
        if (a()) {
            e();
        }
    }
}

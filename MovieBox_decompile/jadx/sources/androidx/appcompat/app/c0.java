package androidx.appcompat.app;

import android.content.Context;
import android.location.Location;
import android.location.LocationManager;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.cloud.tmc.kernel.constants.TmcConstants;
import java.util.Calendar;

class c0 {

    private static c0 f811d;

    private final Context f812a;

    private final LocationManager f813b;

    private final a f814c = new a();

    private static class a {

        boolean f815a;

        long f816b;

        a() {
        }
    }

    c0(Context context, LocationManager locationManager) {
        this.f812a = context;
        this.f813b = locationManager;
    }

    static c0 a(Context context) {
        if (f811d == null) {
            Context applicationContext = context.getApplicationContext();
            f811d = new c0(applicationContext, (LocationManager) applicationContext.getSystemService(RequestParameters.SUBRESOURCE_LOCATION));
        }
        return f811d;
    }

    private Location b() {
        Location locationC = androidx.core.content.f.b(this.f812a, "android.permission.ACCESS_COARSE_LOCATION") == 0 ? c("network") : null;
        Location locationC2 = androidx.core.content.f.b(this.f812a, "android.permission.ACCESS_FINE_LOCATION") == 0 ? c("gps") : null;
        if (locationC2 == null || locationC == null) {
            return locationC2 != null ? locationC2 : locationC;
        }
        return locationC2.getTime() > locationC.getTime() ? locationC2 : locationC;
    }

    private Location c(String str) {
        try {
            if (this.f813b.isProviderEnabled(str)) {
                return this.f813b.getLastKnownLocation(str);
            }
            return null;
        } catch (Exception unused) {
            return null;
        }
    }

    private boolean e() {
        return this.f814c.f816b > System.currentTimeMillis();
    }

    private void f(Location location) {
        long j10;
        a aVar = this.f814c;
        long jCurrentTimeMillis = System.currentTimeMillis();
        b0 b0VarB = b0.b();
        b0VarB.a(jCurrentTimeMillis - 86400000, location.getLatitude(), location.getLongitude());
        b0VarB.a(jCurrentTimeMillis, location.getLatitude(), location.getLongitude());
        boolean z10 = b0VarB.f807c == 1;
        long j11 = b0VarB.f806b;
        long j12 = b0VarB.f805a;
        b0VarB.a(jCurrentTimeMillis + 86400000, location.getLatitude(), location.getLongitude());
        long j13 = b0VarB.f806b;
        if (j11 == -1 || j12 == -1) {
            j10 = jCurrentTimeMillis + TmcConstants.MINI_POPWINDOW_MSG_BUBBLE_INTERVAL;
        } else {
            if (jCurrentTimeMillis <= j12) {
                j13 = jCurrentTimeMillis > j11 ? j12 : j11;
            }
            j10 = j13 + 60000;
        }
        aVar.f815a = z10;
        aVar.f816b = j10;
    }

    boolean d() {
        a aVar = this.f814c;
        if (e()) {
            return aVar.f815a;
        }
        Location locationB = b();
        if (locationB != null) {
            f(locationB);
            return aVar.f815a;
        }
        int i10 = Calendar.getInstance().get(11);
        return i10 < 6 || i10 >= 22;
    }
}

package cn.com.custommma.mobile.tracking.util;

import android.content.Context;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;

public class LocationCollector {
    public static LocationCollector h;
    public static Handler i;
    public LocationManager a;
    public Context b;
    public long d = 0;
    public LocationListener f = new a();
    public final Runnable g = new Runnable() {
        @Override
        public void run() {
            LocationCollector.this.a.removeUpdates(LocationCollector.this.f);
            LocationCollector.this.c = false;
            LocationCollector.i.removeCallbacks(LocationCollector.this.g);
        }
    };
    public boolean c = false;
    public Location e = null;

    public class a implements LocationListener {
        public a() {
        }

        @Override
        public void onLocationChanged(Location location) {
            LocationCollector.this.d = System.currentTimeMillis();
            LocationCollector.this.e = location;
        }

        @Override
        public void onProviderDisabled(String str) {
        }

        @Override
        public void onProviderEnabled(String str) {
        }

        @Override
        public void onStatusChanged(String str, int i, Bundle bundle) {
        }
    }

    public LocationCollector(Context context) {
        this.b = context;
        this.a = (LocationManager) context.getSystemService("location");
        i = new Handler(Looper.getMainLooper());
    }

    public static LocationCollector h(Context context) {
        if (h == null) {
            synchronized (LocationCollector.class) {
                try {
                    if (h == null) {
                        h = new LocationCollector(context);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return h;
    }

    public String i() {
        if (this.e == null) {
            j();
            return "";
        }
        if (System.currentTimeMillis() - this.d > 120000) {
            j();
        }
        StringBuffer stringBuffer = new StringBuffer();
        try {
            stringBuffer.append(this.e.getLatitude());
            stringBuffer.append("x");
            stringBuffer.append(this.e.getLongitude());
            stringBuffer.append("x");
            stringBuffer.append(this.e.getAccuracy());
        } catch (Exception unused) {
        }
        return stringBuffer.toString();
    }

    public void j() {
    }
}

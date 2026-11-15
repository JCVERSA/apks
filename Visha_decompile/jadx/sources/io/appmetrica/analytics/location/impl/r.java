package io.appmetrica.analytics.location.impl;

import android.content.Context;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Looper;
import defpackage.zfb;
import io.appmetrica.analytics.coreapi.internal.backport.FunctionWithThrowable;
import io.appmetrica.analytics.coreapi.internal.permission.PermissionResolutionStrategy;
import io.appmetrica.analytics.coreutils.internal.system.SystemServiceUtils;
import io.appmetrica.analytics.location.impl.r;
import io.appmetrica.analytics.locationapi.internal.LocationReceiver;
import java.util.concurrent.TimeUnit;

public final class r extends u implements LocationReceiver {
    public final Looper e;
    public final long f;

    public r(Context context, Looper looper, PermissionResolutionStrategy permissionResolutionStrategy, LocationListener locationListener) {
        super(context, permissionResolutionStrategy, locationListener, "passive");
        this.e = looper;
        this.f = TimeUnit.SECONDS.toMillis(1L);
    }

    public static final zfb a(r rVar, LocationManager locationManager) {
        locationManager.requestLocationUpdates(rVar.d, rVar.f, 0.0f, rVar.c, rVar.e);
        return zfb.a;
    }

    public static final zfb b(r rVar, LocationManager locationManager) {
        locationManager.removeUpdates(rVar.c);
        return zfb.a;
    }

    @Override
    public final void startLocationUpdates() {
        if (this.b.hasNecessaryPermissions(this.a)) {
            SystemServiceUtils.accessSystemServiceByNameSafely(this.a, "location", "request location updates for " + this.d + " provider", "location manager", new FunctionWithThrowable() {
                @Override
                public final Object apply(Object obj) {
                    return r.a(this.a, (LocationManager) obj);
                }
            });
        }
    }

    @Override
    public final void stopLocationUpdates() {
        SystemServiceUtils.accessSystemServiceByNameSafely(this.a, "location", "stop location updates for passive provider", "location manager", new FunctionWithThrowable() {
            @Override
            public final Object apply(Object obj) {
                return r.b(this.a, (LocationManager) obj);
            }
        });
    }
}

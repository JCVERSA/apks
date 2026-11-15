package io.appmetrica.analytics.gpllibrary.internal;

import android.annotation.SuppressLint;
import android.content.Context;
import android.location.LocationListener;
import android.os.Looper;
import androidx.annotation.NonNull;
import com.google.android.gms.location.LocationRequest;
import com.google.android.gms.location.a;
import defpackage.io5;
import java.util.concurrent.Executor;

public class GplLibraryWrapper implements IGplLibraryWrapper {
    public static final String FUSED_PROVIDER = "fused";
    private final a a;
    private final LocationListener b;
    private final io5 c;
    private final Looper d;
    private final Executor e;
    private final long f;

    public static class AnonymousClass1 {
        static final int[] a;

        static {
            int[] iArr = new int[Priority.values().length];
            a = iArr;
            try {
                iArr[Priority.PRIORITY_LOW_POWER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[Priority.PRIORITY_BALANCED_POWER_ACCURACY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                a[Priority.PRIORITY_HIGH_ACCURACY.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public static class ClientProvider {
        private final Context a;

        public ClientProvider(Context context) {
            this.a = context;
        }

        public final a a() {
            return new a(this.a);
        }
    }

    public enum Priority {
        PRIORITY_NO_POWER,
        PRIORITY_LOW_POWER,
        PRIORITY_BALANCED_POWER_ACCURACY,
        PRIORITY_HIGH_ACCURACY
    }

    public GplLibraryWrapper(@NonNull Context context, @NonNull LocationListener locationListener, @NonNull Looper looper, @NonNull Executor executor, long j) throws Throwable {
        this(new ClientProvider(context), locationListener, looper, executor, j);
    }

    @Override
    @SuppressLint({"MissingPermission"})
    public void startLocationUpdates(@NonNull Priority priority) throws Throwable {
        int i;
        a aVar = this.a;
        LocationRequest interval = LocationRequest.create().setInterval(this.f);
        int i2 = AnonymousClass1.a[priority.ordinal()];
        if (i2 == 1) {
            i = 104;
        } else if (i2 != 2) {
            i = i2 != 3 ? 105 : 100;
        } else {
            i = 102;
        }
        aVar.x(interval.setPriority(i), this.c, this.d);
    }

    @Override
    public void stopLocationUpdates() throws Throwable {
        this.a.w(this.c);
    }

    @Override
    @SuppressLint({"MissingPermission"})
    public void updateLastKnownLocation() throws Throwable {
        this.a.v().g(this.e, new GplOnSuccessListener(this.b));
    }

    public GplLibraryWrapper(ClientProvider clientProvider, LocationListener locationListener, Looper looper, Executor executor, long j) {
        this.a = clientProvider.a();
        this.b = locationListener;
        this.d = looper;
        this.e = executor;
        this.f = j;
        this.c = new GplLocationCallback(locationListener);
    }
}

package defpackage;

import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.internal.util.client.zzq;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzcgj;
import defpackage.cye;
import defpackage.we;
import java.util.concurrent.atomic.AtomicBoolean;

public final class x7f {
    public static x7f b;
    public final AtomicBoolean a = new AtomicBoolean(false);

    public static x7f a() {
        if (b == null) {
            b = new x7f();
        }
        return b;
    }

    public final Thread b(final Context context, final String str) {
        if (!this.a.compareAndSet(false, true)) {
            return null;
        }
        Thread thread = new Thread(new Runnable(this) {
            @Override
            public final void run() {
                Context context2 = context;
                cye.a(context2);
                if (((Boolean) zzbd.zzc().b(cye.K0)).booleanValue()) {
                    return;
                }
                Bundle bundle = new Bundle();
                bundle.putBoolean("measurementEnabled", ((Boolean) zzbd.zzc().b(cye.z0)).booleanValue());
                if (((Boolean) zzbd.zzc().b(cye.G0)).booleanValue()) {
                    bundle.putString("ad_storage", "denied");
                    bundle.putString("analytics_storage", "denied");
                }
                try {
                    ((zzcgk) com.google.android.gms.ads.internal.util.client.zzs.zzb(context2, "com.google.android.gms.ads.measurement.DynamiteMeasurementManager", new zzq() {
                        @Override
                        public final Object zza(Object obj) {
                            return zzcgj.zzb((IBinder) obj);
                        }
                    })).zze(ObjectWrapper.wrap(context2), new zzbon(we.k(context2, "FA-Ads", "am", str, bundle)));
                } catch (RemoteException | com.google.android.gms.ads.internal.util.client.zzr | NullPointerException e) {
                    zzo.zzl("#007 Could not call remote method.", e);
                }
            }
        });
        thread.start();
        return thread;
    }
}

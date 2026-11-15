package defpackage;

import android.content.Context;
import android.os.Binder;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.a;
import com.google.android.gms.internal.ads.j8;
import com.google.android.gms.internal.ads.zzbuy;
import com.google.android.gms.internal.ads.zzdxq;
import java.util.concurrent.Executor;

public abstract class asg implements a.InterfaceC0093a, a.b {
    public final eff b = new eff();
    public final Object c = new Object();
    public boolean d = false;
    public boolean e = false;
    public zzbuy f;
    public gbf g;

    public static void b(Context context, im5 im5Var, Executor executor) {
        if (((Boolean) rze.j.e()).booleanValue() || ((Boolean) rze.h.e()).booleanValue()) {
            j8.r(im5Var, new vrg(context), executor);
        }
    }

    public final void a() {
        synchronized (this.c) {
            try {
                this.e = true;
                if (this.g.isConnected() || this.g.isConnecting()) {
                    this.g.disconnect();
                }
                Binder.flushPendingCommands();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override
    public void onConnectionFailed(ConnectionResult connectionResult) {
        int i = zze.zza;
        zzo.zze("Disconnected from remote ad request service.");
        this.b.d(new zzdxq(1));
    }

    @Override
    public final void onConnectionSuspended(int i) {
        int i2 = zze.zza;
        zzo.zze("Cannot connect to remote service, fallback to local instance.");
    }
}

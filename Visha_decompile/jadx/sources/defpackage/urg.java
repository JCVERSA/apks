package defpackage;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.ads.internal.zzv;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.internal.ads.zzbuy;
import com.google.android.gms.internal.ads.zzdwz;
import com.google.android.gms.internal.ads.zzdxa;
import com.google.android.gms.internal.ads.zzdxq;
import java.util.concurrent.Executor;

public final class urg extends asg {
    public final Context h;
    public final Executor i;

    public urg(Context context, Executor executor) {
        this.h = context;
        this.i = executor;
        this.g = new gbf(context, zzv.zzu().zzb(), this, this);
    }

    public final im5 c(zzbuy zzbuyVar) {
        synchronized (this.c) {
            try {
                if (this.d) {
                    return this.b;
                }
                this.d = true;
                this.f = zzbuyVar;
                this.g.checkAvailabilityAndConnect();
                eff effVar = this.b;
                effVar.addListener(new Runnable() {
                    @Override
                    public final void run() {
                        this.zza.a();
                    }
                }, zef.g);
                asg.b(this.h, effVar, this.i);
                return effVar;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override
    public final void onConnected(Bundle bundle) {
        synchronized (this.c) {
            try {
                if (!this.e) {
                    this.e = true;
                    try {
                        this.g.I().zzg(this.f, ((Boolean) zzbd.zzc().b(cye.Xc)).booleanValue() ? new zzdxa(this.b, this.f) : new zzdwz(this));
                    } catch (RemoteException | IllegalArgumentException unused) {
                        this.b.d(new zzdxq(1));
                    } catch (Throwable th) {
                        zzv.zzp().x(th, "RemoteAdRequestClientTask.onConnected");
                        this.b.d(new zzdxq(1));
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override
    public final void onConnectionFailed(ConnectionResult connectionResult) {
        int i = zze.zza;
        zzo.zze("Cannot connect to remote service, fallback to local instance.");
        this.b.d(new zzdxq(1));
    }
}

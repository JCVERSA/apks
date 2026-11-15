package defpackage;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.ads.internal.zzv;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.internal.ads.j8;
import com.google.android.gms.internal.ads.zzbuy;
import com.google.android.gms.internal.ads.zzdwz;
import com.google.android.gms.internal.ads.zzdxa;
import com.google.android.gms.internal.ads.zzdxq;

public final class dsg extends asg {
    public String h;
    public int i = 1;

    public dsg(Context context) {
        this.g = new gbf(context, zzv.zzu().zzb(), this, this);
    }

    public final im5 c(zzbuy zzbuyVar) {
        synchronized (this.c) {
            try {
                int i = this.i;
                if (i != 1 && i != 2) {
                    return j8.g(new zzdxq(2));
                }
                if (this.d) {
                    return this.b;
                }
                this.i = 2;
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
                return effVar;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final im5 d(String str) {
        synchronized (this.c) {
            try {
                int i = this.i;
                if (i != 1 && i != 3) {
                    return j8.g(new zzdxq(2));
                }
                if (this.d) {
                    return this.b;
                }
                this.i = 3;
                this.d = true;
                this.h = str;
                this.g.checkAvailabilityAndConnect();
                eff effVar = this.b;
                effVar.addListener(new Runnable() {
                    @Override
                    public final void run() {
                        this.zza.a();
                    }
                }, zef.g);
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
                        int i = this.i;
                        if (i == 2) {
                            this.g.I().zze(this.f, ((Boolean) zzbd.zzc().b(cye.Xc)).booleanValue() ? new zzdxa(this.b, this.f) : new zzdwz(this));
                        } else if (i == 3) {
                            this.g.I().zzh(this.h, ((Boolean) zzbd.zzc().b(cye.Xc)).booleanValue() ? new zzdxa(this.b, this.f) : new zzdwz(this));
                        } else {
                            this.b.d(new zzdxq(1));
                        }
                    } catch (RemoteException | IllegalArgumentException unused) {
                        this.b.d(new zzdxq(1));
                    } catch (Throwable th) {
                        zzv.zzp().x(th, "RemoteUrlAndCacheKeyClientTask.onConnected");
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

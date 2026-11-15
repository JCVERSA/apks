package defpackage;

import android.os.RemoteException;
import com.google.android.gms.ads.internal.client.zzdx;
import com.google.android.gms.ads.internal.client.zzm;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.internal.util.zze;

public final class x4h {
    public final c5h a;
    public final String b;
    public zzdx c;

    public x4h(c5h c5hVar, String str) {
        this.a = c5hVar;
        this.b = str;
    }

    public final synchronized String a() {
        zzdx zzdxVar;
        try {
            zzdxVar = this.c;
        } catch (RemoteException e) {
            int i = zze.zza;
            zzo.zzl("#007 Could not call remote method.", e);
            return null;
        }
        return zzdxVar != null ? zzdxVar.zzg() : null;
    }

    public final synchronized String b() {
        zzdx zzdxVar;
        try {
            zzdxVar = this.c;
        } catch (RemoteException e) {
            int i = zze.zza;
            zzo.zzl("#007 Could not call remote method.", e);
            return null;
        }
        return zzdxVar != null ? zzdxVar.zzg() : null;
    }

    public final synchronized void d(zzm zzmVar, int i) {
        this.c = null;
        d5h d5hVar = new d5h(i);
        w4h w4hVar = new w4h(this);
        this.a.a(zzmVar, this.b, d5hVar, w4hVar);
    }

    public final synchronized boolean e() {
        return this.a.zza();
    }
}

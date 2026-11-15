package defpackage;

import android.app.Activity;
import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.client.zzaz;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.client.zzco;
import com.google.android.gms.ads.internal.util.client.zzq;
import com.google.android.gms.ads.internal.util.client.zzr;
import com.google.android.gms.ads.internal.util.client.zzs;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzbsx;
import com.google.android.gms.internal.ads.zzbta;
import com.google.android.gms.internal.ads.zzbtb;

public final class u7e extends iwe {
    public final Activity b;
    public final zzaz c;

    public u7e(zzaz zzazVar, Activity activity) {
        this.b = activity;
        this.c = zzazVar;
    }

    @Override
    public final Object a() {
        zzaz.j(this.b, "ad_overlay");
        return null;
    }

    @Override
    public final Object b(zzco zzcoVar) {
        return zzcoVar.zzn(ObjectWrapper.wrap(this.b));
    }

    @Override
    public final Object c() {
        Activity activity = this.b;
        cye.a(activity);
        if (!((Boolean) zzbd.zzc().b(cye.Na)).booleanValue()) {
            zzaz zzazVar = this.c;
            return zzazVar.e.c(this.b);
        }
        try {
            return zzbsx.zzI(((zzbtb) zzs.zzb(activity, "com.google.android.gms.ads.ChimeraAdOverlayCreatorImpl", new zzq() {
                @Override
                public final Object zza(Object obj) {
                    return zzbta.zzb((IBinder) obj);
                }
            })).zze(ObjectWrapper.wrap(activity)));
        } catch (RemoteException | zzr | NullPointerException e) {
            zzaz zzazVar2 = this.c;
            zzazVar2.g = uaf.c(this.b.getApplicationContext());
            zzazVar2.g.b(e, "ClientApiBroker.createAdOverlay");
            return null;
        }
    }
}

package defpackage;

import android.content.Context;
import android.os.RemoteException;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.client.zzbx;
import com.google.android.gms.ads.internal.client.zzea;
import com.google.android.gms.ads.internal.client.zzr;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzbhe;
import com.google.android.gms.internal.ads.zzfbw;
import defpackage.wrf;
import java.util.concurrent.Executor;

public final class wrf extends srf {
    public final Context j;
    public final View k;
    public final ejf l;
    public final imh m;
    public final ztf n;
    public final sdg o;
    public final v8g p;
    public final zxi q;
    public final Executor r;
    public zzr s;

    public wrf(auf aufVar, Context context, imh imhVar, View view, ejf ejfVar, ztf ztfVar, sdg sdgVar, v8g v8gVar, zxi zxiVar, Executor executor) {
        super(aufVar);
        this.j = context;
        this.k = view;
        this.l = ejfVar;
        this.m = imhVar;
        this.n = ztfVar;
        this.o = sdgVar;
        this.p = v8gVar;
        this.q = zxiVar;
        this.r = executor;
    }

    public static void q(wrf wrfVar) {
        zzbhe zzbheVarE = wrfVar.o.e();
        if (zzbheVarE == null) {
            return;
        }
        try {
            zzbheVarE.zze((zzbx) wrfVar.q.zzb(), ObjectWrapper.wrap(wrfVar.j));
        } catch (RemoteException e) {
            int i = zze.zza;
            zzo.zzh("RemoteException when notifyAdLoad is called", e);
        }
    }

    @Override
    public final void b() {
        this.r.execute(new Runnable() {
            @Override
            public final void run() {
                wrf.q(this.zza);
            }
        });
        super.b();
    }

    @Override
    public final int i() {
        return this.a.b.b.d;
    }

    @Override
    public final int j() {
        if (((Boolean) zzbd.zzc().b(cye.U7)).booleanValue() && this.b.g0) {
            if (!((Boolean) zzbd.zzc().b(cye.V7)).booleanValue()) {
                return 0;
            }
        }
        return this.a.b.b.c;
    }

    @Override
    public final View k() {
        return this.k;
    }

    @Override
    public final zzea l() {
        try {
            return this.n.zza();
        } catch (zzfbw unused) {
            return null;
        }
    }

    @Override
    public final imh m() {
        zzr zzrVar = this.s;
        if (zzrVar != null) {
            return knh.b(zzrVar);
        }
        hmh hmhVar = this.b;
        if (hmhVar.c0) {
            for (String str : hmhVar.a) {
                if (str == null || !str.contains("FirstParty")) {
                }
            }
            View view = this.k;
            return new imh(view.getWidth(), view.getHeight(), false);
        }
        return (imh) hmhVar.r.get(0);
    }

    @Override
    public final imh n() {
        return this.m;
    }

    @Override
    public final void o() {
        this.p.zza();
    }

    @Override
    public final void p(ViewGroup viewGroup, zzr zzrVar) {
        ejf ejfVar;
        if (viewGroup == null || (ejfVar = this.l) == null) {
            return;
        }
        ejfVar.zzaj(kkf.c(zzrVar));
        viewGroup.setMinimumHeight(zzrVar.zzc);
        viewGroup.setMinimumWidth(zzrVar.zzf);
        this.s = zzrVar;
    }
}

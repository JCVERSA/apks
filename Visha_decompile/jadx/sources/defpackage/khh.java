package defpackage;

import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.internal.ads.zzfgn;
import com.google.android.gms.internal.ads.zzfgq;

public final class khh implements v7i {
    public final b5h a;
    public final zzfgn b;
    public final wrh c;
    public final nhh d;
    public final phh e;

    public khh(phh phhVar, b5h b5hVar, zzfgn zzfgnVar, wrh wrhVar, nhh nhhVar) {
        this.a = b5hVar;
        this.b = zzfgnVar;
        this.c = wrhVar;
        this.d = nhhVar;
        this.e = phhVar;
    }

    @Override
    public final void zza(Throwable th) {
        zzfgn zzfgnVar;
        if (((Boolean) zzbd.zzc().b(cye.N5)).booleanValue()) {
            zze.zzb("App open ad failed to load", th);
        }
        phh phhVar = this.e;
        erf erfVar = (erf) phhVar.e.zzd();
        final com.google.android.gms.ads.internal.client.zze zzeVarB = erfVar == null ? goh.b(th, null) : erfVar.zzb().a(th);
        synchronized (phhVar) {
            try {
                phhVar.j = null;
                if (erfVar != null) {
                    erfVar.zzc().A(zzeVarB);
                    if (((Boolean) zzbd.zzc().b(cye.m8)).booleanValue()) {
                        phhVar.b.execute(new Runnable() {
                            @Override
                            public final void run() {
                                this.zza.e.d.A(zzeVarB);
                            }
                        });
                    }
                } else {
                    phhVar.d.A(zzeVarB);
                    ((erf) phhVar.l(this.d).zzh()).zzb().c().zzh();
                }
                doh.b(zzeVarB.zza, th, "AppOpenAdLoader.onFailure");
                this.a.zza();
                if (!((Boolean) sze.c.e()).booleanValue() || (zzfgnVar = this.b) == null) {
                    zzfgq zzfgqVar = phhVar.h;
                    wrh wrhVar = this.c;
                    wrhVar.a(zzeVarB);
                    wrhVar.f(th);
                    wrhVar.zzg(false);
                    zzfgqVar.zzc(wrhVar.zzm());
                } else {
                    zzfgnVar.zzc(zzeVarB);
                    wrh wrhVar2 = this.c;
                    wrhVar2.f(th);
                    wrhVar2.zzg(false);
                    zzfgnVar.zza(wrhVar2);
                    zzfgnVar.zzh();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override
    public final void zzb(Object obj) {
        zzfgn zzfgnVar;
        buf bufVar = (buf) obj;
        phh phhVar = this.e;
        synchronized (phhVar) {
            try {
                phhVar.j = null;
                if (((Boolean) zzbd.zzc().b(cye.m8)).booleanValue()) {
                    bufVar.e().b(phhVar.d);
                }
                this.a.zzb(bufVar);
                if (!((Boolean) sze.c.e()).booleanValue() || (zzfgnVar = this.b) == null) {
                    zzfgq zzfgqVar = phhVar.h;
                    wrh wrhVar = this.c;
                    wrhVar.e(bufVar.g().b);
                    wrhVar.zzd(bufVar.c().zzg());
                    wrhVar.zzg(true);
                    zzfgqVar.zzc(wrhVar.zzm());
                } else {
                    zzfgnVar.zzg(bufVar.g().b);
                    zzfgnVar.zze(bufVar.c().zzg());
                    wrh wrhVar2 = this.c;
                    wrhVar2.zzg(true);
                    zzfgnVar.zza(wrhVar2);
                    zzfgnVar.zzh();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}

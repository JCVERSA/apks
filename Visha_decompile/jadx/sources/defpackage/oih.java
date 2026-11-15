package defpackage;

import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.internal.ads.zzfgn;
import com.google.android.gms.internal.ads.zzfgq;

public final class oih implements v7i {
    public final zzfgn a;
    public final wrh b;
    public final atf c;
    public final pih d;

    public oih(pih pihVar, zzfgn zzfgnVar, wrh wrhVar, atf atfVar) {
        this.a = zzfgnVar;
        this.b = wrhVar;
        this.c = atfVar;
        this.d = pihVar;
    }

    @Override
    public final void zza(Throwable th) {
        zzfgn zzfgnVar;
        if (((Boolean) zzbd.zzc().b(cye.N5)).booleanValue()) {
            zze.zzb("Banner ad failed to load", th);
        }
        pih pihVar = this.d;
        synchronized (pihVar) {
            try {
                atf atfVar = this.c;
                com.google.android.gms.ads.internal.client.zze zzeVarA = atfVar.c().a(th);
                pihVar.n = zzeVarA;
                atfVar.d().A(zzeVarA);
                doh.b(zzeVarA.zza, th, "BannerAdLoader.onFailure");
                if (pihVar.m) {
                    pihVar.s();
                    pihVar.h.F(pihVar.j.a());
                }
                if (!((Boolean) sze.c.e()).booleanValue() || (zzfgnVar = this.a) == null) {
                    zzfgq zzfgqVar = pihVar.i;
                    wrh wrhVar = this.b;
                    wrhVar.a(zzeVarA);
                    wrhVar.f(th);
                    wrhVar.zzg(false);
                    zzfgqVar.zzc(wrhVar.zzm());
                } else {
                    zzfgnVar.zzc(zzeVarA);
                    wrh wrhVar2 = this.b;
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
        pih pihVar = this.d;
        srf srfVar = (srf) obj;
        synchronized (pihVar) {
            try {
                if (pihVar.m) {
                    pihVar.p();
                }
                if (!((Boolean) sze.c.e()).booleanValue() || (zzfgnVar = this.a) == null) {
                    zzfgq zzfgqVar = pihVar.i;
                    wrh wrhVar = this.b;
                    wrhVar.e(srfVar.g().b);
                    wrhVar.zzd(srfVar.c().zzg());
                    wrhVar.zzg(true);
                    zzfgqVar.zzc(wrhVar.zzm());
                } else {
                    zzfgnVar.zzg(srfVar.g().b);
                    zzfgnVar.zze(srfVar.c().zzg());
                    wrh wrhVar2 = this.b;
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

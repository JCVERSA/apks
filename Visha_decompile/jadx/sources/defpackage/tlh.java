package defpackage;

import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.internal.ads.zzfgn;
import com.google.android.gms.internal.ads.zzfgq;
import java.util.Objects;
import java.util.concurrent.Executor;

public final class tlh implements v7i {
    public final b5h a;
    public final zzfgn b;
    public final wrh c;
    public final ulh d;
    public final wlh e;

    public tlh(wlh wlhVar, b5h b5hVar, zzfgn zzfgnVar, wrh wrhVar, ulh ulhVar) {
        this.a = b5hVar;
        this.b = zzfgnVar;
        this.c = wrhVar;
        this.d = ulhVar;
        this.e = wlhVar;
    }

    @Override
    public final void zza(Throwable th) {
        zzfgn zzfgnVar;
        if (((Boolean) zzbd.zzc().b(cye.N5)).booleanValue()) {
            zze.zzb("Rewarded ad failed to load", th);
        }
        wlh wlhVar = this.e;
        bjg bjgVar = (bjg) wlhVar.e.zzd();
        final com.google.android.gms.ads.internal.client.zze zzeVarB = bjgVar == null ? goh.b(th, null) : bjgVar.zzb().a(th);
        synchronized (wlhVar) {
            try {
                if (bjgVar != null) {
                    bjgVar.a().A(zzeVarB);
                    wlhVar.b.execute(new Runnable() {
                        @Override
                        public final void run() {
                            this.zza.e.d.A(zzeVarB);
                        }
                    });
                } else {
                    wlhVar.d.A(zzeVarB);
                    wlhVar.j(this.d).zzh().zzb().c().zzh();
                }
                doh.b(zzeVarB.zza, th, "RewardedAdLoader.onFailure");
                this.a.zza();
                if (!((Boolean) sze.c.e()).booleanValue() || (zzfgnVar = this.b) == null) {
                    zzfgq zzfgqVar = wlhVar.g;
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
        wlh wlhVar = this.e;
        wig wigVar = (wig) obj;
        synchronized (wlhVar) {
            try {
                wigVar.e().d(wlhVar.d);
                this.a.zzb(wigVar);
                Executor executor = wlhVar.b;
                final hlh hlhVar = wlhVar.d;
                Objects.requireNonNull(hlhVar);
                executor.execute(new Runnable() {
                    @Override
                    public final void run() {
                        hlhVar.zzt();
                    }
                });
                wlhVar.d.onAdMetadataChanged();
                if (!((Boolean) sze.c.e()).booleanValue() || (zzfgnVar = this.b) == null) {
                    zzfgq zzfgqVar = wlhVar.g;
                    wrh wrhVar = this.c;
                    wrhVar.e(wigVar.g().b);
                    wrhVar.zzd(wigVar.c().zzg());
                    wrhVar.zzg(true);
                    zzfgqVar.zzc(wrhVar.zzm());
                } else {
                    zzfgnVar.zzg(wigVar.g().b);
                    zzfgnVar.zze(wigVar.c().zzg());
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

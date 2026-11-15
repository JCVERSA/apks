package defpackage;

import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.internal.ads.zzfgn;
import com.google.android.gms.internal.ads.zzfgq;

public final class ckh implements v7i {
    public final b5h a;
    public final zzfgn b;
    public final wrh c;
    public final yag d;
    public final dkh e;

    public ckh(dkh dkhVar, b5h b5hVar, zzfgn zzfgnVar, wrh wrhVar, yag yagVar) {
        this.a = b5hVar;
        this.b = zzfgnVar;
        this.c = wrhVar;
        this.d = yagVar;
        this.e = dkhVar;
    }

    @Override
    public final void zza(Throwable th) {
        zzfgn zzfgnVar;
        if (((Boolean) zzbd.zzc().b(cye.N5)).booleanValue()) {
            zze.zzb("Interstitial ad failed to load", th);
        }
        yag yagVar = this.d;
        final com.google.android.gms.ads.internal.client.zze zzeVarA = yagVar.a().a(th);
        dkh dkhVar = this.e;
        synchronized (dkhVar) {
            try {
                dkhVar.i = null;
                yagVar.b().A(zzeVarA);
                if (((Boolean) zzbd.zzc().b(cye.n8)).booleanValue()) {
                    dkhVar.b.execute(new Runnable() {
                        @Override
                        public final void run() {
                            this.zza.e.d.A(zzeVarA);
                        }
                    });
                    dkhVar.b.execute(new Runnable() {
                        @Override
                        public final void run() {
                            this.zza.e.e.A(zzeVarA);
                        }
                    });
                }
                doh.b(zzeVarA.zza, th, "InterstitialAdLoader.onFailure");
                this.a.zza();
                if (!((Boolean) sze.c.e()).booleanValue() || (zzfgnVar = this.b) == null) {
                    zzfgq zzfgqVar = dkhVar.g;
                    wrh wrhVar = this.c;
                    wrhVar.a(zzeVarA);
                    wrhVar.f(th);
                    wrhVar.zzg(false);
                    zzfgqVar.zzc(wrhVar.zzm());
                } else {
                    zzfgnVar.zzc(zzeVarA);
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
        s9g s9gVar = (s9g) obj;
        dkh dkhVar = this.e;
        synchronized (dkhVar) {
            try {
                dkhVar.i = null;
                qxe qxeVar = cye.n8;
                if (((Boolean) zzbd.zzc().b(qxeVar)).booleanValue()) {
                    b4g b4gVarE = s9gVar.e();
                    b4gVarE.a(dkhVar.d);
                    b4gVarE.d(dkhVar.e);
                }
                this.a.zzb(s9gVar);
                if (((Boolean) zzbd.zzc().b(qxeVar)).booleanValue()) {
                    dkhVar.b.execute(new Runnable() {
                        @Override
                        public final void run() {
                            this.zza.e.d.zzt();
                        }
                    });
                    dkhVar.b.execute(new Runnable() {
                        @Override
                        public final void run() {
                            this.zza.e.e.zzt();
                        }
                    });
                }
                if (!((Boolean) sze.c.e()).booleanValue() || (zzfgnVar = this.b) == null) {
                    zzfgq zzfgqVar = dkhVar.g;
                    wrh wrhVar = this.c;
                    wrhVar.e(s9gVar.g().b);
                    wrhVar.zzd(s9gVar.c().zzg());
                    wrhVar.zzg(true);
                    zzfgqVar.zzc(wrhVar.zzm());
                } else {
                    zzfgnVar.zzg(s9gVar.g().b);
                    zzfgnVar.zze(s9gVar.c().zzg());
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

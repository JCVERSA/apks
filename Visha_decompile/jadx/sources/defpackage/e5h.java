package defpackage;

import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.internal.ads.zzfgn;
import com.google.android.gms.internal.ads.zzfgq;

public final class e5h implements v7i {
    public final b5h a;
    public final zzfgn b;
    public final wrh c;
    public final ubg d;
    public final f5h e;

    public e5h(f5h f5hVar, b5h b5hVar, zzfgn zzfgnVar, wrh wrhVar, ubg ubgVar) {
        this.a = b5hVar;
        this.b = zzfgnVar;
        this.c = wrhVar;
        this.d = ubgVar;
        this.e = f5hVar;
    }

    @Override
    public final void zza(Throwable th) {
        zzfgn zzfgnVar;
        if (((Boolean) zzbd.zzc().b(cye.N5)).booleanValue()) {
            zze.zzb("Native ad failed to load", th);
        }
        ubg ubgVar = this.d;
        final com.google.android.gms.ads.internal.client.zze zzeVarA = ubgVar.a().a(th);
        ubgVar.b().A(zzeVarA);
        f5h f5hVar = this.e;
        f5hVar.b.b().execute(new Runnable() {
            @Override
            public final void run() {
                this.zza.e.d.a().A(zzeVarA);
            }
        });
        doh.b(zzeVarA.zza, th, "NativeAdLoader.onFailure");
        this.a.zza();
        if (!((Boolean) sze.c.e()).booleanValue() || (zzfgnVar = this.b) == null) {
            zzfgq zzfgqVar = f5hVar.e;
            wrh wrhVar = this.c;
            wrhVar.a(zzeVarA);
            wrhVar.f(th);
            wrhVar.zzg(false);
            zzfgqVar.zzc(wrhVar.zzm());
            return;
        }
        zzfgnVar.zzc(zzeVarA);
        wrh wrhVar2 = this.c;
        wrhVar2.f(th);
        wrhVar2.zzg(false);
        zzfgnVar.zza(wrhVar2);
        zzfgnVar.zzh();
    }

    @Override
    public final void zzb(Object obj) {
        zzfgn zzfgnVar;
        f5h f5hVar = this.e;
        buf bufVar = (buf) obj;
        synchronized (f5hVar) {
            try {
                bufVar.e().a(f5hVar.d.d());
                this.a.zzb(bufVar);
                f5hVar.b.b().execute(new Runnable() {
                    @Override
                    public final void run() {
                        this.zza.e.d.b().zzt();
                    }
                });
                if (!((Boolean) sze.c.e()).booleanValue() || (zzfgnVar = this.b) == null) {
                    zzfgq zzfgqVar = f5hVar.e;
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

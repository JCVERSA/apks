package defpackage;

import android.content.Context;
import android.os.Bundle;
import android.util.Pair;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.client.zzcl;
import com.google.android.gms.ads.internal.client.zzm;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.ads.internal.util.zzs;
import com.google.android.gms.ads.internal.zzv;
import com.google.android.gms.internal.ads.zzdqm;
import com.google.android.gms.internal.ads.zzfgn;
import com.google.android.gms.internal.ads.zzfgq;
import defpackage.goh;
import java.util.concurrent.ScheduledExecutorService;

public final class f5h implements c5h {
    public final cnh a;
    public final lkf b;
    public final Context c;
    public final z4h d;
    public final zzfgq e;
    public ouf f;

    public f5h(lkf lkfVar, Context context, z4h z4hVar, cnh cnhVar) {
        this.b = lkfVar;
        this.c = context;
        this.d = z4hVar;
        this.a = cnhVar;
        this.e = lkfVar.C();
        cnhVar.R(z4hVar.d());
    }

    @Override
    public final boolean a(zzm zzmVar, String str, a5h a5hVar, b5h b5hVar) {
        zzfgn zzfgnVar;
        zzv.zzq();
        Context context = this.c;
        if (zzs.zzI(context) && zzmVar.zzs == null) {
            int i = zze.zza;
            zzo.zzg("Failed to load the ad because app ID is missing.");
            this.b.b().execute(new Runnable() {
                @Override
                public final void run() {
                    this.zza.d.a().A(goh.d(4, null, null));
                }
            });
            return false;
        }
        if (str == null) {
            int i2 = zze.zza;
            zzo.zzg("Ad unit ID should not be null for NativeAdLoader.");
            this.b.b().execute(new Runnable() {
                @Override
                public final void run() {
                    this.zza.d.a().A(goh.d(6, null, null));
                }
            });
            return false;
        }
        boolean z = zzmVar.zzf;
        doh.a(context, z);
        if (((Boolean) zzbd.zzc().b(cye.Z8)).booleanValue() && z) {
            this.b.p().p(true);
        }
        int i3 = ((d5h) a5hVar).a;
        long jCurrentTimeMillis = zzv.zzC().currentTimeMillis();
        String strZza = zzdqm.PUBLIC_API_CALL.zza();
        Long lValueOf = Long.valueOf(jCurrentTimeMillis);
        Bundle bundleA = bmg.a(new Pair(strZza, lValueOf), new Pair(zzdqm.DYNAMITE_ENTER.zza(), lValueOf));
        cnh cnhVar = this.a;
        cnhVar.h(zzmVar);
        cnhVar.a(bundleA);
        cnhVar.c(i3);
        enh enhVarJ = cnhVar.j();
        wrh wrhVarB = vrh.b(context, gsh.f(enhVarJ), 8, zzmVar);
        zzcl zzclVar = enhVarJ.n;
        if (zzclVar != null) {
            this.d.d().s(zzclVar);
        }
        lkf lkfVar = this.b;
        pbg pbgVarL = lkfVar.l();
        pyf pyfVar = new pyf();
        pyfVar.f(context);
        pyfVar.k(enhVarJ);
        pbgVarL.n(pyfVar.l());
        b6g b6gVar = new b6g();
        z4h z4hVar = this.d;
        b6gVar.n(z4hVar.d(), lkfVar.b());
        pbgVarL.g(b6gVar.q());
        pbgVarL.d(z4hVar.c());
        pbgVarL.c(new prf(null));
        ubg ubgVarZzg = pbgVarL.zzg();
        if (((Boolean) sze.c.e()).booleanValue()) {
            zzfgn zzfgnVarE = ubgVarZzg.e();
            zzfgnVarE.zzi(8);
            zzfgnVarE.zzb(zzmVar.zzp);
            zzfgnVarE.zzf(zzmVar.zzm);
            zzfgnVar = zzfgnVarE;
        } else {
            zzfgnVar = null;
        }
        lkfVar.B().c(1);
        g8i g8iVarB = fqh.b();
        ScheduledExecutorService scheduledExecutorServiceC = lkfVar.c();
        gvf gvfVarA = ubgVarZzg.a();
        ouf oufVar = new ouf(g8iVarB, scheduledExecutorServiceC, gvfVarA.h(gvfVarA.i()));
        this.f = oufVar;
        oufVar.e(new e5h(this, b5hVar, zzfgnVar, wrhVarB, ubgVarZzg));
        return true;
    }

    @Override
    public final boolean zza() {
        ouf oufVar = this.f;
        return oufVar != null && oufVar.f();
    }
}

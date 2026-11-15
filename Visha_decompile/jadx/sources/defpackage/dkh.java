package defpackage;

import android.content.Context;
import android.os.Bundle;
import android.util.Pair;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.client.zzm;
import com.google.android.gms.ads.internal.client.zzr;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.ads.internal.zzv;
import com.google.android.gms.internal.ads.j8;
import com.google.android.gms.internal.ads.zzbdd;
import com.google.android.gms.internal.ads.zzdqm;
import com.google.android.gms.internal.ads.zzfgn;
import com.google.android.gms.internal.ads.zzfgq;
import defpackage.goh;
import java.util.concurrent.Executor;

public final class dkh implements c5h {
    public final Context a;
    public final Executor b;
    public final lkf c;
    public final k4h d;
    public final hlh e;
    public zzbdd f;
    public final zzfgq g;
    public final cnh h;
    public im5 i;

    public dkh(Context context, Executor executor, lkf lkfVar, k4h k4hVar, hlh hlhVar, cnh cnhVar) {
        this.a = context;
        this.b = executor;
        this.c = lkfVar;
        this.d = k4hVar;
        this.h = cnhVar;
        this.e = hlhVar;
        this.g = lkfVar.C();
    }

    @Override
    public final boolean a(zzm zzmVar, String str, a5h a5hVar, b5h b5hVar) {
        yag yagVarZzf;
        zzfgn zzfgnVar;
        if (str == null) {
            int i = zze.zza;
            zzo.zzg("Ad unit ID should not be null for interstitial ad.");
            this.b.execute(new Runnable() {
                @Override
                public final void run() {
                    this.zza.d.A(goh.d(6, null, null));
                }
            });
            return false;
        }
        if (zza()) {
            return false;
        }
        if (((Boolean) zzbd.zzc().b(cye.Z8)).booleanValue() && zzmVar.zzf) {
            this.c.p().p(true);
        }
        zzr zzrVar = ((bkh) a5hVar).a;
        Bundle bundleA = bmg.a(new Pair(zzdqm.PUBLIC_API_CALL.zza(), Long.valueOf(zzmVar.zzz)), new Pair(zzdqm.DYNAMITE_ENTER.zza(), Long.valueOf(zzv.zzC().currentTimeMillis())));
        cnh cnhVar = this.h;
        cnhVar.P(str);
        cnhVar.O(zzrVar);
        cnhVar.h(zzmVar);
        cnhVar.a(bundleA);
        Context context = this.a;
        enh enhVarJ = cnhVar.j();
        wrh wrhVarB = vrh.b(context, gsh.f(enhVarJ), 4, zzmVar);
        if (((Boolean) zzbd.zzc().b(cye.n8)).booleanValue()) {
            xag xagVarK = this.c.k();
            pyf pyfVar = new pyf();
            pyfVar.f(context);
            pyfVar.k(enhVarJ);
            xagVarK.o(pyfVar.l());
            b6g b6gVar = new b6g();
            k4h k4hVar = this.d;
            Executor executor = this.b;
            b6gVar.m(k4hVar, executor);
            b6gVar.n(k4hVar, executor);
            xagVarK.h(b6gVar.q());
            xagVarK.l(new w2h(this.f));
            yagVarZzf = xagVarK.zzh();
        } else {
            b6g b6gVar2 = new b6g();
            hlh hlhVar = this.e;
            if (hlhVar != null) {
                Executor executor2 = this.b;
                b6gVar2.h(hlhVar, executor2);
                b6gVar2.i(hlhVar, executor2);
                b6gVar2.e(hlhVar, executor2);
            }
            xag xagVarK2 = this.c.k();
            pyf pyfVar2 = new pyf();
            pyfVar2.f(context);
            pyfVar2.k(enhVarJ);
            xagVarK2.o(pyfVar2.l());
            k4h k4hVar2 = this.d;
            Executor executor3 = this.b;
            b6gVar2.m(k4hVar2, executor3);
            b6gVar2.h(k4hVar2, executor3);
            b6gVar2.i(k4hVar2, executor3);
            b6gVar2.e(k4hVar2, executor3);
            b6gVar2.d(k4hVar2, executor3);
            b6gVar2.o(k4hVar2, executor3);
            b6gVar2.n(k4hVar2, executor3);
            b6gVar2.l(k4hVar2, executor3);
            b6gVar2.f(k4hVar2, executor3);
            xagVarK2.h(b6gVar2.q());
            xagVarK2.l(new w2h(this.f));
            yagVarZzf = xagVarK2.zzh();
        }
        yag yagVar = yagVarZzf;
        if (((Boolean) sze.c.e()).booleanValue()) {
            zzfgn zzfgnVarD = yagVar.d();
            zzfgnVarD.zzi(4);
            zzfgnVarD.zzb(zzmVar.zzp);
            zzfgnVarD.zzf(zzmVar.zzm);
            zzfgnVar = zzfgnVarD;
        } else {
            zzfgnVar = null;
        }
        gvf gvfVarA = yagVar.a();
        im5 im5VarH = gvfVarA.h(gvfVarA.i());
        this.i = im5VarH;
        j8.r(im5VarH, new ckh(this, b5hVar, zzfgnVar, wrhVarB, yagVar), this.b);
        return true;
    }

    public final void h(zzbdd zzbddVar) {
        this.f = zzbddVar;
    }

    @Override
    public final boolean zza() {
        im5 im5Var = this.i;
        return (im5Var == null || im5Var.isDone()) ? false : true;
    }
}

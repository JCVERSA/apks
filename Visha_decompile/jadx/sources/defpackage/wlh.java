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
import com.google.android.gms.internal.ads.zzbvr;
import com.google.android.gms.internal.ads.zzdqm;
import com.google.android.gms.internal.ads.zzfgn;
import com.google.android.gms.internal.ads.zzfgq;
import defpackage.goh;
import java.util.concurrent.Executor;

public final class wlh implements c5h {
    public final Context a;
    public final Executor b;
    public final lkf c;
    public final hlh d;
    public final wjh e;
    public final wmh f;
    public final zzfgq g;
    public final cnh h;
    public im5 i;

    public wlh(Context context, Executor executor, lkf lkfVar, wjh wjhVar, hlh hlhVar, cnh cnhVar, wmh wmhVar) {
        this.a = context;
        this.b = executor;
        this.c = lkfVar;
        this.e = wjhVar;
        this.d = hlhVar;
        this.h = cnhVar;
        this.f = wmhVar;
        this.g = lkfVar.C();
    }

    /* JADX WARN: Code duplicated, block: B:15:0x005e  */
    @Override
    public final boolean a(zzm zzmVar, String str, a5h a5hVar, b5h b5hVar) {
        zzfgn zzfgnVar;
        zzbvr zzbvrVar = new zzbvr(zzmVar, str);
        String str2 = zzbvrVar.zzb;
        if (str2 == null) {
            int i = zze.zza;
            zzo.zzg("Ad unit ID should not be null for rewarded video ad.");
            this.b.execute(new Runnable() {
                @Override
                public final void run() {
                    this.zza.d.A(goh.d(6, null, null));
                }
            });
            return false;
        }
        im5 im5Var = this.i;
        if (im5Var != null && !im5Var.isDone()) {
            return false;
        }
        if (((Boolean) sze.c.e()).booleanValue()) {
            wjh wjhVar = this.e;
            if (wjhVar.zzd() != null) {
                zzfgn zzfgnVarZzg = ((bjg) wjhVar.zzd()).zzg();
                zzfgnVarZzg.zzi(5);
                zzm zzmVar2 = zzbvrVar.zza;
                zzfgnVarZzg.zzb(zzmVar2.zzp);
                zzfgnVarZzg.zzf(zzmVar2.zzm);
                zzfgnVar = zzfgnVarZzg;
            } else {
                zzfgnVar = null;
            }
        } else {
            zzfgnVar = null;
        }
        Context context = this.a;
        zzm zzmVar3 = zzbvrVar.zza;
        boolean z = zzmVar3.zzf;
        doh.a(context, z);
        if (((Boolean) zzbd.zzc().b(cye.Z8)).booleanValue() && z) {
            this.c.p().p(true);
        }
        Bundle bundleA = bmg.a(new Pair(zzdqm.PUBLIC_API_CALL.zza(), Long.valueOf(zzmVar3.zzz)), new Pair(zzdqm.DYNAMITE_ENTER.zza(), Long.valueOf(zzv.zzC().currentTimeMillis())));
        cnh cnhVar = this.h;
        cnhVar.P(str2);
        cnhVar.O(zzr.zzd());
        cnhVar.h(zzmVar3);
        cnhVar.a(bundleA);
        enh enhVarJ = cnhVar.j();
        wrh wrhVarB = vrh.b(context, gsh.f(enhVarJ), 5, zzmVar3);
        ulh ulhVar = new ulh(null);
        ulhVar.a = enhVarJ;
        im5 im5VarA = this.e.a(new xjh(ulhVar, null), new vjh() {
            @Override
            public final nyf a(ujh ujhVar) {
                return this.a.j(ujhVar);
            }
        }, null);
        this.i = im5VarA;
        j8.r(im5VarA, new tlh(this, b5hVar, zzfgnVar, wrhVarB, ulhVar), this.b);
        return true;
    }

    public final void i(int i) {
        this.h.L().a(i);
    }

    public final ajg j(ujh ujhVar) {
        ajg ajgVarM = this.c.m();
        pyf pyfVar = new pyf();
        pyfVar.f(this.a);
        pyfVar.k(((ulh) ujhVar).a);
        pyfVar.j(this.f);
        ajgVarM.b(pyfVar.l());
        ajgVarM.a(new b6g().q());
        return ajgVarM;
    }

    @Override
    public final boolean zza() {
        throw null;
    }
}

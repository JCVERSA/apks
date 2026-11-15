package defpackage;

import android.content.Context;
import android.os.Bundle;
import android.util.Pair;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.client.zzm;
import com.google.android.gms.ads.internal.client.zzr;
import com.google.android.gms.ads.internal.client.zzx;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.ads.internal.zzv;
import com.google.android.gms.internal.ads.j8;
import com.google.android.gms.internal.ads.zzdqm;
import com.google.android.gms.internal.ads.zzfgn;
import com.google.android.gms.internal.ads.zzfgq;
import defpackage.goh;
import java.util.concurrent.Executor;

public abstract class phh implements c5h {
    public final Context a;
    public final Executor b;
    public final lkf c;
    public final fih d;
    public final wjh e;
    public final VersionInfoParcel f;
    public final ViewGroup g;
    public final zzfgq h;
    public final cnh i;
    public im5 j;

    public phh(Context context, Executor executor, lkf lkfVar, wjh wjhVar, fih fihVar, cnh cnhVar, VersionInfoParcel versionInfoParcel) {
        this.a = context;
        this.b = executor;
        this.c = lkfVar;
        this.e = wjhVar;
        this.d = fihVar;
        this.i = cnhVar;
        this.f = versionInfoParcel;
        this.g = new FrameLayout(context);
        this.h = lkfVar.C();
    }

    /* JADX WARN: Code duplicated, block: B:11:0x002c  */
    @Override
    public final synchronized boolean a(zzm zzmVar, String str, a5h a5hVar, b5h b5hVar) {
        boolean z;
        zzfgn zzfgnVar;
        erf erfVar;
        try {
            if (!zzmVar.zzb()) {
                if (!((Boolean) xze.d.e()).booleanValue()) {
                    z = false;
                } else if (((Boolean) zzbd.zzc().b(cye.nb)).booleanValue()) {
                    z = true;
                } else {
                    z = false;
                }
                if (this.f.clientJarVersion < ((Integer) zzbd.zzc().b(cye.ob)).intValue() || !z) {
                    wd8.e("loadAd must be called on the main UI thread.");
                }
            }
            if (str == null) {
                int i = zze.zza;
                zzo.zzg("Ad unit ID should not be null for app open ad.");
                this.b.execute(new Runnable() {
                    @Override
                    public final void run() {
                        this.zza.d.A(goh.d(6, null, null));
                    }
                });
                return false;
            }
            if (this.j != null) {
                return false;
            }
            if (!((Boolean) sze.c.e()).booleanValue() || (erfVar = (erf) this.e.zzd()) == null) {
                zzfgnVar = null;
            } else {
                zzfgn zzfgnVarZzg = erfVar.zzg();
                zzfgnVarZzg.zzi(7);
                zzfgnVarZzg.zzb(zzmVar.zzp);
                zzfgnVarZzg.zzf(zzmVar.zzm);
                zzfgnVar = zzfgnVarZzg;
            }
            Context context = this.a;
            boolean z2 = zzmVar.zzf;
            doh.a(context, z2);
            if (((Boolean) zzbd.zzc().b(cye.Z8)).booleanValue() && z2) {
                this.c.p().p(true);
            }
            Bundle bundleA = bmg.a(new Pair(zzdqm.PUBLIC_API_CALL.zza(), Long.valueOf(zzmVar.zzz)), new Pair(zzdqm.DYNAMITE_ENTER.zza(), Long.valueOf(zzv.zzC().currentTimeMillis())));
            cnh cnhVar = this.i;
            cnhVar.P(str);
            cnhVar.O(zzr.zzb());
            cnhVar.h(zzmVar);
            cnhVar.a(bundleA);
            enh enhVarJ = cnhVar.j();
            wrh wrhVarB = vrh.b(context, gsh.f(enhVarJ), 7, zzmVar);
            nhh nhhVar = new nhh(null);
            nhhVar.a = enhVarJ;
            im5 im5VarA = this.e.a(new xjh(nhhVar, null), new vjh() {
                @Override
                public final nyf a(ujh ujhVar) {
                    return this.a.l(ujhVar);
                }
            }, null);
            this.j = im5VarA;
            j8.r(im5VarA, new khh(this, b5hVar, zzfgnVar, wrhVarB, nhhVar), this.b);
            return true;
        } catch (Throwable th) {
            throw th;
        }
    }

    public abstract nyf d(prf prfVar, ryf ryfVar, d6g d6gVar);

    public final void k(zzx zzxVar) {
        this.i.Q(zzxVar);
    }

    public final synchronized nyf l(ujh ujhVar) {
        nhh nhhVar = (nhh) ujhVar;
        if (((Boolean) zzbd.zzc().b(cye.m8)).booleanValue()) {
            prf prfVar = new prf(this.g);
            pyf pyfVar = new pyf();
            pyfVar.f(this.a);
            pyfVar.k(nhhVar.a);
            ryf ryfVarL = pyfVar.l();
            b6g b6gVar = new b6g();
            fih fihVar = this.d;
            Executor executor = this.b;
            b6gVar.f(fihVar, executor);
            b6gVar.o(fihVar, executor);
            return d(prfVar, ryfVarL, b6gVar.q());
        }
        fih fihVarA = fih.a(this.d);
        b6g b6gVar2 = new b6g();
        Executor executor2 = this.b;
        b6gVar2.e(fihVarA, executor2);
        b6gVar2.j(fihVarA, executor2);
        b6gVar2.k(fihVarA, executor2);
        b6gVar2.l(fihVarA, executor2);
        b6gVar2.f(fihVarA, executor2);
        b6gVar2.o(fihVarA, executor2);
        b6gVar2.p(fihVarA);
        prf prfVar2 = new prf(this.g);
        pyf pyfVar2 = new pyf();
        pyfVar2.f(this.a);
        pyfVar2.k(nhhVar.a);
        return d(prfVar2, pyfVar2.l(), b6gVar2.q());
    }

    @Override
    public final boolean zza() {
        im5 im5Var = this.j;
        return (im5Var == null || im5Var.isDone()) ? false : true;
    }
}

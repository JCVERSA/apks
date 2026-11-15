package defpackage;

import android.content.Context;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.ads.internal.zzv;
import com.google.android.gms.internal.ads.j8;
import com.google.android.gms.internal.ads.zzdqm;
import com.google.android.gms.internal.ads.zzebe;
import java.util.concurrent.Executor;

public final class bzg implements kxg {
    public final Context a;
    public final ujg b;
    public final yag c;
    public final enh d;
    public final Executor e;
    public final VersionInfoParcel f;
    public final q3f g;
    public final boolean h = ((Boolean) zzbd.zzc().b(cye.Y8)).booleanValue();
    public final zzebe i;
    public final lmg j;
    public final smg k;

    public bzg(Context context, VersionInfoParcel versionInfoParcel, enh enhVar, Executor executor, yag yagVar, ujg ujgVar, q3f q3fVar, zzebe zzebeVar, lmg lmgVar, smg smgVar) {
        this.a = context;
        this.d = enhVar;
        this.c = yagVar;
        this.e = executor;
        this.f = versionInfoParcel;
        this.b = ujgVar;
        this.g = q3fVar;
        this.i = zzebeVar;
        this.j = lmgVar;
        this.k = smgVar;
    }

    public static im5 c(bzg bzgVar, final hmh hmhVar, vmh vmhVar, xjg xjgVar, Object obj) {
        final bzg bzgVar2;
        qxe qxeVar = cye.s2;
        if (((Boolean) zzbd.zzc().b(qxeVar)).booleanValue()) {
            bzgVar.j.a().putLong(zzdqm.RENDERING_WEBVIEW_CREATION_START.zza(), zzv.zzC().currentTimeMillis());
        }
        ujg ujgVar = bzgVar.b;
        enh enhVar = bzgVar.d;
        final ejf ejfVarA = ujgVar.a(enhVar.e, hmhVar, vmhVar.b.b);
        ejfVarA.zzac(hmhVar.W);
        Context context = bzgVar.a;
        xjgVar.a(context, ejfVarA.zzF());
        if (((Boolean) zzbd.zzc().b(qxeVar)).booleanValue()) {
            bzgVar.j.a().putLong(zzdqm.RENDERING_WEBVIEW_CREATION_END.zza(), zzv.zzC().currentTimeMillis());
        }
        eff effVar = new eff();
        yag yagVar = bzgVar.c;
        puf pufVar = new puf(vmhVar, hmhVar, null);
        VersionInfoParcel versionInfoParcel = bzgVar.f;
        boolean z = bzgVar.h;
        q3f q3fVar = bzgVar.g;
        final t9g t9gVarC = yagVar.c(pufVar, new w9g(new azg(context, versionInfoParcel, effVar, hmhVar, ejfVarA, enhVar, z, q3fVar, bzgVar.i, bzgVar.k), ejfVarA));
        effVar.c(t9gVarC);
        if (((Boolean) zzbd.zzc().b(qxeVar)).booleanValue()) {
            bzgVar2 = bzgVar;
            bzgVar2.j.a().putLong(zzdqm.RENDERING_AD_COMPONENT_CREATION_END.zza(), zzv.zzC().currentTimeMillis());
        } else {
            bzgVar2 = bzgVar;
        }
        t9gVarC.b().C(new d0g() {
            @Override
            public final void zzs() {
                ejf ejfVar = ejfVarA;
                if (ejfVar.zzN() != null) {
                    ejfVar.zzN().zzs();
                }
            }
        }, zef.g);
        lmh lmhVar = hmhVar.s;
        String strB = lmhVar.a;
        if (((Boolean) zzbd.zzc().b(cye.p5)).booleanValue() && t9gVarC.l().e(true)) {
            strB = yjf.b(strB, yjf.a(hmhVar));
        }
        tjg tjgVarK = t9gVarC.k();
        q3f q3fVar2 = true != z ? null : q3fVar;
        lmg lmgVar = bzgVar2.j;
        tjgVarK.i(ejfVarA, true, q3fVar2, lmgVar.a());
        t9gVarC.k();
        return j8.m(tjg.j(ejfVarA, lmhVar.b, strB, lmgVar.a()), new m2i(bzgVar2) {
            @Override
            public final Object apply(Object obj2) {
                ejf ejfVar = ejfVarA;
                if (hmhVar.M) {
                    ejfVar.zzah();
                }
                t9g t9gVar = t9gVarC;
                ejfVar.zzab();
                ejfVar.onPause();
                return t9gVar.i();
            }
        }, bzgVar2.e);
    }

    @Override
    public final im5 a(final vmh vmhVar, final hmh hmhVar) {
        final xjg xjgVar = new xjg();
        im5 im5VarH = j8.h(null);
        k7i k7iVar = new k7i() {
            @Override
            public final im5 zza(Object obj) {
                return bzg.c(this.a, hmhVar, vmhVar, xjgVar, obj);
            }
        };
        Executor executor = this.e;
        im5 im5VarN = j8.n(im5VarH, k7iVar, executor);
        im5VarN.addListener(new Runnable() {
            @Override
            public final void run() {
                xjgVar.b();
            }
        }, executor);
        return im5VarN;
    }

    @Override
    public final boolean b(vmh vmhVar, hmh hmhVar) {
        lmh lmhVar = hmhVar.s;
        return (lmhVar == null || lmhVar.a == null) ? false : true;
    }
}

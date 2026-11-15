package defpackage;

import android.app.Activity;
import android.content.Context;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.ads.internal.util.zzs;
import com.google.android.gms.ads.internal.zzv;
import com.google.android.gms.internal.ads.zzbah;
import com.google.android.gms.internal.ads.zzdfl;

public final class nrf extends buf {
    public final ejf j;
    public final int k;
    public final Context l;
    public final crf m;
    public final ebg n;
    public final u7g o;
    public final wzf p;
    public final boolean q;
    public final tef r;
    public boolean s;

    public nrf(auf aufVar, Context context, ejf ejfVar, int i, crf crfVar, ebg ebgVar, u7g u7gVar, wzf wzfVar, tef tefVar) {
        super(aufVar);
        this.s = false;
        this.j = ejfVar;
        this.l = context;
        this.k = i;
        this.m = crfVar;
        this.n = ebgVar;
        this.o = u7gVar;
        this.p = wzfVar;
        this.q = ((Boolean) zzbd.zzc().b(cye.x5)).booleanValue();
        this.r = tefVar;
    }

    @Override
    public final void a() {
        super.a();
        ejf ejfVar = this.j;
        if (ejfVar != null) {
            ejfVar.destroy();
        }
    }

    public final int i() {
        return this.k;
    }

    public final void j(mve mveVar) {
        ejf ejfVar = this.j;
        if (ejfVar != null) {
            ejfVar.zzak(mveVar);
        }
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public final void k(Activity activity, zzbah zzbahVar, boolean z) {
        ejf ejfVar;
        hmh hmhVarZzD;
        Context context = activity;
        if (activity == null) {
            context = this.l;
        }
        boolean z2 = this.q;
        if (z2) {
            this.o.zzb();
        }
        zzv.zzq();
        ebg ebgVar = this.n;
        if (!zzs.zzO(ebgVar.zza())) {
            if (((Boolean) zzbd.zzc().b(cye.Q0)).booleanValue()) {
                zzv.zzq();
                if (zzs.zzH(context)) {
                    int i = zze.zza;
                    zzo.zzj("Interstitials that show when your app is in the background are a violation of AdMob policies and may lead to blocked ad serving. To learn more, visit https://goo.gle/admob-interstitial-policies");
                    this.p.zzb();
                    if (((Boolean) zzbd.zzc().b(cye.R0)).booleanValue()) {
                        new dxh(context.getApplicationContext(), zzv.zzu().zzb()).a(this.a.b.b.b);
                        return;
                    }
                    return;
                }
            }
        }
        if (((Boolean) zzbd.zzc().b(cye.Yb)).booleanValue() && (ejfVar = this.j) != null && (hmhVarZzD = ejfVar.zzD()) != null && hmhVarZzD.r0 && hmhVarZzD.s0 != this.r.a()) {
            int i2 = zze.zza;
            zzo.zzj("The app open consent form has been shown.");
            this.p.a(goh.d(12, "The consent form has already been shown.", null));
            return;
        }
        if (this.s) {
            int i3 = zze.zza;
            zzo.zzj("App open interstitial ad is already visible.");
            this.p.a(goh.d(10, null, null));
        }
        if (this.s) {
            return;
        }
        try {
            ebgVar.a(z, context, this.p);
            if (z2) {
                this.o.zza();
            }
            this.s = true;
        } catch (zzdfl e) {
            this.p.y(e);
        }
    }

    public final void l(long j, int i) {
        this.m.a(j, i);
    }
}

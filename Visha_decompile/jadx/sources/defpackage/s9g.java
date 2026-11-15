package defpackage;

import android.app.Activity;
import android.content.Context;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.ads.internal.util.zzs;
import com.google.android.gms.ads.internal.zzv;
import com.google.android.gms.internal.ads.zzdfl;
import java.lang.ref.WeakReference;

public final class s9g extends buf {
    public final Context j;
    public final WeakReference k;
    public final u7g l;
    public final ebg m;
    public final xuf n;
    public final dxh o;
    public final wzf p;
    public final tef q;
    public boolean r;

    public s9g(auf aufVar, Context context, ejf ejfVar, u7g u7gVar, ebg ebgVar, xuf xufVar, dxh dxhVar, wzf wzfVar, tef tefVar) {
        super(aufVar);
        this.r = false;
        this.j = context;
        this.k = new WeakReference(ejfVar);
        this.l = u7gVar;
        this.m = ebgVar;
        this.n = xufVar;
        this.o = dxhVar;
        this.p = wzfVar;
        this.q = tefVar;
    }

    public final void finalize() throws Throwable {
        try {
            final ejf ejfVar = (ejf) this.k.get();
            if (((Boolean) zzbd.zzc().b(cye.H6)).booleanValue()) {
                if (!this.r && ejfVar != null) {
                    zef.f.execute(new Runnable() {
                        @Override
                        public final void run() {
                            ejfVar.destroy();
                        }
                    });
                }
            } else if (ejfVar != null) {
                ejfVar.destroy();
            }
        } finally {
            super.finalize();
        }
    }

    public final boolean i() {
        return this.n.a();
    }

    /* JADX WARN: Code duplicated, block: B:11:0x005f  */
    /* JADX WARN: Code duplicated, block: B:13:0x007a A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:21:0x00a5  */
    /* JADX WARN: Code duplicated, block: B:23:0x00a9  */
    /* JADX WARN: Code duplicated, block: B:26:0x00bf A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:27:0x00c1  */
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
    public final boolean j(boolean z, Activity activity) {
        Context context;
        hmh hmhVarZzD;
        u7g u7gVar = this.l;
        u7gVar.zzb();
        zzv.zzq();
        ebg ebgVar = this.m;
        if (zzs.zzO(ebgVar.zza())) {
            ejf ejfVar = (ejf) this.k.get();
            if (((Boolean) zzbd.zzc().b(cye.Yb)).booleanValue()) {
                if (this.r) {
                    int i = zze.zza;
                    zzo.zzj("The interstitial ad has been shown.");
                    this.p.a(goh.d(10, null, null));
                }
                context = activity;
                if (!this.r) {
                    if (activity == null) {
                        context = this.j;
                    }
                    ebgVar.a(z, context, this.p);
                    u7gVar.zza();
                    this.r = true;
                    return true;
                }
            } else {
                if (this.r) {
                    int i2 = zze.zza;
                    zzo.zzj("The interstitial ad has been shown.");
                    this.p.a(goh.d(10, null, null));
                }
                context = activity;
                if (!this.r) {
                    if (activity == null) {
                        context = this.j;
                    }
                    ebgVar.a(z, context, this.p);
                    u7gVar.zza();
                    this.r = true;
                    return true;
                }
            }
        } else if (((Boolean) zzbd.zzc().b(cye.Q0)).booleanValue()) {
            zzv.zzq();
            if (zzs.zzH(this.j)) {
                int i3 = zze.zza;
                zzo.zzj("Interstitials that show when your app is in the background are a violation of AdMob policies and may lead to blocked ad serving. To learn more, visit  https://goo.gle/admob-interstitial-policies");
                this.p.zzb();
                if (((Boolean) zzbd.zzc().b(cye.R0)).booleanValue()) {
                    this.o.a(this.a.b.b.b);
                }
            } else {
                ejf ejfVar2 = (ejf) this.k.get();
                if (((Boolean) zzbd.zzc().b(cye.Yb)).booleanValue() || ejfVar2 == null || (hmhVarZzD = ejfVar2.zzD()) == null || !hmhVarZzD.r0 || hmhVarZzD.s0 == this.q.a()) {
                    if (this.r) {
                        int i4 = zze.zza;
                        zzo.zzj("The interstitial ad has been shown.");
                        this.p.a(goh.d(10, null, null));
                    }
                    context = activity;
                    if (!this.r) {
                        if (activity == null) {
                            context = this.j;
                        }
                        try {
                            ebgVar.a(z, context, this.p);
                            u7gVar.zza();
                            this.r = true;
                            return true;
                        } catch (zzdfl e) {
                            this.p.y(e);
                        }
                    }
                } else {
                    int i5 = zze.zza;
                    zzo.zzj("The interstitial consent form has been shown.");
                    this.p.a(goh.d(12, "The consent form has already been shown.", null));
                }
            }
        } else {
            ejf ejfVar3 = (ejf) this.k.get();
            if (((Boolean) zzbd.zzc().b(cye.Yb)).booleanValue()) {
                if (this.r) {
                    int i6 = zze.zza;
                    zzo.zzj("The interstitial ad has been shown.");
                    this.p.a(goh.d(10, null, null));
                }
                context = activity;
                if (!this.r) {
                    if (activity == null) {
                        context = this.j;
                    }
                    ebgVar.a(z, context, this.p);
                    u7gVar.zza();
                    this.r = true;
                    return true;
                }
            } else {
                if (this.r) {
                    int i7 = zze.zza;
                    zzo.zzj("The interstitial ad has been shown.");
                    this.p.a(goh.d(10, null, null));
                }
                context = activity;
                if (!this.r) {
                    if (activity == null) {
                        context = this.j;
                    }
                    ebgVar.a(z, context, this.p);
                    u7gVar.zza();
                    this.r = true;
                    return true;
                }
            }
        }
        return false;
    }
}

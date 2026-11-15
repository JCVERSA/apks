package defpackage;

import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.zzv;

public final class xcg implements v7i {
    public final String a = "Google";
    public final zcg b;

    public xcg(zcg zcgVar, String str, boolean z) {
        this.b = zcgVar;
    }

    @Override
    public final void zza(Throwable th) {
        if (((Boolean) zzbd.zzc().b(cye.u5)).booleanValue()) {
            zzv.zzp().w(th, "omid native display exp");
        }
    }

    @Override
    public final void zzb(Object obj) {
        zcg zcgVar = this.b;
        zcgVar.k.t((ejf) obj);
        eff effVarC0 = zcgVar.k.c0();
        fxg fxgVarS = zcgVar.S(this.a, true);
        if (fxgVarS != null && effVarC0 != null) {
            effVarC0.c(fxgVarS);
        } else if (effVarC0 != null) {
            effVarC0.cancel(false);
        }
    }
}

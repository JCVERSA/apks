package defpackage;

import android.os.Bundle;
import com.google.android.gms.ads.internal.client.zzbd;

public final class d0h extends f0h {
    public final lkf a;
    public final lbg b;
    public final pyf c;
    public final d6g d;
    public final q0h e;
    public final oxg f;

    public d0h(lkf lkfVar, lbg lbgVar, pyf pyfVar, d6g d6gVar, q0h q0hVar, oxg oxgVar) {
        this.a = lkfVar;
        this.b = lbgVar;
        this.c = pyfVar;
        this.d = d6gVar;
        this.e = q0hVar;
        this.f = oxgVar;
    }

    @Override
    public final im5 c(enh enhVar, Bundle bundle, hmh hmhVar, vmh vmhVar) {
        pyf pyfVar = this.c;
        pyfVar.k(enhVar);
        pyfVar.g(bundle);
        pyfVar.h(new iyf(vmhVar, hmhVar, this.e));
        if (((Boolean) zzbd.zzc().b(cye.O3)).booleanValue()) {
            pyfVar.e(this.f);
        }
        pbg pbgVarL = this.a.l();
        pbgVarL.n(pyfVar.l());
        pbgVarL.g(this.d);
        pbgVarL.d(this.b);
        pbgVarL.c(new prf(null));
        gvf gvfVarA = pbgVarL.zzg().a();
        return gvfVarA.h(gvfVarA.i());
    }
}

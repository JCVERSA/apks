package defpackage;

import android.os.Bundle;
import android.view.ViewGroup;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.internal.ads.i4;

public final class i0h extends f0h {
    public final lkf a;
    public final pyf b;
    public final w2h c;
    public final d6g d;
    public final lbg e;
    public final i4 f;
    public final ViewGroup g;
    public final j5g h;
    public final q0h i;
    public final oxg j;

    public i0h(lkf lkfVar, pyf pyfVar, w2h w2hVar, d6g d6gVar, lbg lbgVar, i4 i4Var, ViewGroup viewGroup, j5g j5gVar, q0h q0hVar, oxg oxgVar) {
        this.a = lkfVar;
        this.b = pyfVar;
        this.c = w2hVar;
        this.d = d6gVar;
        this.e = lbgVar;
        this.f = i4Var;
        this.g = viewGroup;
        this.h = j5gVar;
        this.i = q0hVar;
        this.j = oxgVar;
    }

    @Override
    public final im5 c(enh enhVar, Bundle bundle, hmh hmhVar, vmh vmhVar) {
        pyf pyfVar = this.b;
        pyfVar.k(enhVar);
        pyfVar.g(bundle);
        pyfVar.h(new iyf(vmhVar, hmhVar, this.i));
        if (((Boolean) zzbd.zzc().b(cye.O3)).booleanValue()) {
            pyfVar.e(this.j);
        }
        zsf zsfVarI = this.a.i();
        zsfVarI.k(pyfVar.l());
        zsfVarI.f(this.d);
        zsfVarI.j(this.c);
        zsfVarI.d(this.e);
        zsfVarI.p(new qtf(this.f, this.h));
        zsfVarI.c(new prf(this.g));
        gvf gvfVarC = zsfVarI.zzk().c();
        return gvfVarC.h(gvfVarC.i());
    }
}

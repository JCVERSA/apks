package defpackage;

import android.os.Bundle;
import com.google.android.gms.ads.internal.client.zzbd;

public final class k0h extends f0h {
    public final lkf a;
    public final pyf b;
    public final w2h c;
    public final d6g d;
    public final q0h e;
    public final oxg f;

    public k0h(lkf lkfVar, pyf pyfVar, w2h w2hVar, d6g d6gVar, q0h q0hVar, oxg oxgVar) {
        this.a = lkfVar;
        this.b = pyfVar;
        this.c = w2hVar;
        this.d = d6gVar;
        this.e = q0hVar;
        this.f = oxgVar;
    }

    @Override
    public final im5 c(enh enhVar, Bundle bundle, hmh hmhVar, vmh vmhVar) {
        pyf pyfVar = this.b;
        pyfVar.k(enhVar);
        pyfVar.g(bundle);
        pyfVar.h(new iyf(vmhVar, hmhVar, this.e));
        if (((Boolean) zzbd.zzc().b(cye.O3)).booleanValue()) {
            pyfVar.e(this.f);
        }
        xag xagVarK = this.a.k();
        xagVarK.o(pyfVar.l());
        xagVarK.h(this.d);
        xagVarK.l(this.c);
        gvf gvfVarA = xagVarK.zzf().a();
        return gvfVarA.h(gvfVarA.i());
    }
}

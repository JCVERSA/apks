package defpackage;

import android.os.Bundle;
import com.google.android.gms.ads.internal.client.zzbd;

public final class g0h extends f0h {
    public final lkf a;
    public final pyf b;
    public final d6g c;
    public final q0h d;
    public final oxg e;

    public g0h(lkf lkfVar, pyf pyfVar, d6g d6gVar, q0h q0hVar, oxg oxgVar) {
        this.a = lkfVar;
        this.b = pyfVar;
        this.c = d6gVar;
        this.d = q0hVar;
        this.e = oxgVar;
    }

    @Override
    public final im5 c(enh enhVar, Bundle bundle, hmh hmhVar, vmh vmhVar) {
        pyf pyfVar = this.b;
        pyfVar.k(enhVar);
        pyfVar.g(bundle);
        pyfVar.h(new iyf(vmhVar, hmhVar, this.d));
        if (((Boolean) zzbd.zzc().b(cye.O3)).booleanValue()) {
            pyfVar.e(this.e);
        }
        hrf hrfVarH = this.a.h();
        hrfVarH.b(pyfVar.l());
        hrfVarH.a(this.c);
        gvf gvfVarZzb = hrfVarH.zze().zzb();
        return gvfVarZzb.h(gvfVarZzb.i());
    }
}

package defpackage;

import android.os.Bundle;
import com.google.android.gms.ads.internal.client.zzbd;

public final class m0h extends f0h {
    public final lkf a;
    public final pyf b;
    public final d6g c;
    public final q0h d;
    public final wmh e;
    public final oxg f;

    public m0h(lkf lkfVar, pyf pyfVar, d6g d6gVar, wmh wmhVar, q0h q0hVar, oxg oxgVar) {
        this.a = lkfVar;
        this.b = pyfVar;
        this.c = d6gVar;
        this.e = wmhVar;
        this.d = q0hVar;
        this.f = oxgVar;
    }

    @Override
    public final im5 c(enh enhVar, Bundle bundle, hmh hmhVar, vmh vmhVar) {
        wmh wmhVar;
        pyf pyfVar = this.b;
        pyfVar.k(enhVar);
        pyfVar.g(bundle);
        pyfVar.h(new iyf(vmhVar, hmhVar, this.d));
        if (((Boolean) zzbd.zzc().b(cye.N3)).booleanValue() && (wmhVar = this.e) != null) {
            pyfVar.j(wmhVar);
        }
        if (((Boolean) zzbd.zzc().b(cye.O3)).booleanValue()) {
            pyfVar.e(this.f);
        }
        ajg ajgVarM = this.a.m();
        ajgVarM.b(pyfVar.l());
        ajgVarM.a(this.c);
        gvf gvfVarZzb = ajgVarM.zze().zzb();
        return gvfVarZzb.h(gvfVarZzb.i());
    }
}

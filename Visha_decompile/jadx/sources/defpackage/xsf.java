package defpackage;

import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.util.zzac;

public final class xsf implements d0g {
    public final ejf b;
    public final smg c;
    public final hmh d;

    public xsf(ejf ejfVar, smg smgVar, hmh hmhVar) {
        this.b = ejfVar;
        this.c = smgVar;
        this.d = hmhVar;
    }

    @Override
    public final void zzs() {
        ejf ejfVar;
        if (!((Boolean) zzbd.zzc().b(cye.Vc)).booleanValue() || (ejfVar = this.b) == null) {
            return;
        }
        String str = true != zzac.zza(ejfVar.zzF()) ? "0" : "1";
        rmg rmgVarA = this.c.a();
        rmgVarA.b("action", "hcp");
        rmgVarA.b("hcp", str);
        rmgVarA.c(this.d);
        rmgVarA.j();
    }
}

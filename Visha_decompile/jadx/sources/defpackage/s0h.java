package defpackage;

import com.google.android.gms.internal.ads.zzbrm;
import com.google.android.gms.internal.ads.zzecj;
import java.util.Iterator;

public final class s0h {
    public final ynh a;
    public final gkg b;
    public final smg c;

    public s0h(ynh ynhVar, gkg gkgVar, smg smgVar) {
        this.a = ynhVar;
        this.b = gkgVar;
        this.c = smgVar;
    }

    public final void a(kmh kmhVar, hmh hmhVar, int i, zzecj zzecjVar, long j) {
        fkg fkgVarA;
        rmg rmgVarA = this.c.a();
        rmgVarA.d(kmhVar);
        rmgVarA.c(hmhVar);
        rmgVarA.b("action", "adapter_status");
        rmgVarA.b("adapter_l", String.valueOf(j));
        rmgVarA.b("sc", Integer.toString(i));
        if (zzecjVar != null) {
            rmgVarA.b("arec", Integer.toString(zzecjVar.zzb().zza));
            String strA = this.a.a(zzecjVar.getMessage());
            if (strA != null) {
                rmgVarA.b("areec", strA);
            }
        }
        gkg gkgVar = this.b;
        Iterator it = hmhVar.t.iterator();
        do {
            if (!it.hasNext()) {
                fkgVarA = null;
                break;
            }
            fkgVarA = gkgVar.a((String) it.next());
        } while (fkgVarA == null);
        if (fkgVarA != null) {
            rmgVarA.b("ancn", fkgVarA.a);
            zzbrm zzbrmVar = fkgVarA.b;
            if (zzbrmVar != null) {
                rmgVarA.b("adapter_v", zzbrmVar.toString());
            }
            zzbrm zzbrmVar2 = fkgVarA.c;
            if (zzbrmVar2 != null) {
                rmgVarA.b("adapter_sv", zzbrmVar2.toString());
            }
        }
        rmgVarA.j();
    }
}

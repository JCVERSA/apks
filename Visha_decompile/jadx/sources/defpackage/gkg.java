package defpackage;

import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.internal.ads.zzbqx;
import com.google.android.gms.internal.ads.zzbrm;
import com.google.android.gms.internal.ads.zzfbw;
import java.util.HashMap;
import java.util.Map;

public final class gkg {
    public final Map a = new HashMap();

    public final synchronized fkg a(String str) {
        return (fkg) this.a.get(str);
    }

    public final String b(String str) {
        zzbrm zzbrmVar;
        fkg fkgVarA = a(str);
        return (fkgVarA == null || (zzbrmVar = fkgVarA.b) == null) ? "" : zzbrmVar.toString();
    }

    public final synchronized void c(String str, eoh eohVar) {
        zzbrm zzbrmVarJ;
        if (this.a.containsKey(str)) {
            return;
        }
        zzbrm zzbrmVarK = null;
        if (eohVar == null) {
            zzbrmVarJ = null;
        } else {
            try {
                zzbrmVarJ = eohVar.j();
            } catch (zzfbw unused) {
                zzbrmVarJ = null;
            }
        }
        if (eohVar != null) {
            try {
                zzbrmVarK = eohVar.k();
            } catch (zzfbw unused2) {
            }
        }
        boolean z = true;
        if (((Boolean) zzbd.zzc().b(cye.w9)).booleanValue()) {
            if (eohVar == null) {
                z = false;
            } else {
                try {
                    eohVar.c();
                } catch (zzfbw unused3) {
                    z = false;
                }
            }
        }
        this.a.put(str, new fkg(str, zzbrmVarJ, zzbrmVarK, z));
    }

    public final synchronized void d(String str, zzbqx zzbqxVar) {
        if (this.a.containsKey(str)) {
            return;
        }
        try {
            this.a.put(str, new fkg(str, zzbqxVar.zzf(), zzbqxVar.zzg(), true));
        } catch (Throwable unused) {
        }
    }
}

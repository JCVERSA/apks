package defpackage;

import android.os.RemoteException;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.internal.ads.zzbqx;
import com.google.android.gms.internal.ads.zzedw;
import org.json.JSONObject;

public final class a2h implements mxg {
    public final f3h a;
    public final jkg b;

    public a2h(f3h f3hVar, jkg jkgVar) {
        this.a = f3hVar;
        this.b = jkgVar;
    }

    @Override
    public final nxg a(String str, JSONObject jSONObject) {
        zzbqx zzbqxVarB;
        if (((Boolean) zzbd.zzc().b(cye.Q1)).booleanValue()) {
            try {
                zzbqxVarB = this.b.b(str);
            } catch (RemoteException e) {
                int i = zze.zza;
                zzo.zzh("Coundn't create RTB adapter: ", e);
                zzbqxVarB = null;
            }
        } else {
            zzbqxVarB = this.a.a(str);
        }
        if (zzbqxVarB == null) {
            return null;
        }
        return new nxg(zzbqxVarB, new zzedw(), str);
    }
}

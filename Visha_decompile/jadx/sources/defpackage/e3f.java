package defpackage;

import com.google.android.gms.ads.internal.overlay.zzm;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.internal.util.zze;
import java.util.Map;

public final class e3f implements n3f {
    @Override
    public final void a(Object obj, Map map) {
        ejf ejfVar = (ejf) obj;
        if (ejfVar.zzJ() != null) {
            ejfVar.zzJ().zza();
        }
        zzm zzmVarZzL = ejfVar.zzL();
        if (zzmVarZzL != null) {
            zzmVarZzL.zzb();
            return;
        }
        zzm zzmVarZzM = ejfVar.zzM();
        if (zzmVarZzM != null) {
            zzmVarZzM.zzb();
        } else {
            int i = zze.zza;
            zzo.zzj("A GMSG tried to close something that wasn't an overlay.");
        }
    }
}

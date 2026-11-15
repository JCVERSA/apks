package defpackage;

import android.content.Context;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.internal.ads.h5;
import com.google.android.gms.internal.ads.zzdfl;
import com.google.android.gms.internal.ads.zzfbw;

public final class y1h implements ebg {
    public final nxg a;
    public final hmh b;

    public y1h(h5 h5Var, nxg nxgVar, hmh hmhVar) {
        this.a = nxgVar;
        this.b = hmhVar;
    }

    @Override
    public final void a(boolean z, Context context, wzf wzfVar) throws zzdfl {
        try {
            eoh eohVar = (eoh) this.a.b;
            eohVar.A(z);
            eohVar.a();
        } catch (zzfbw e) {
            int i = zze.zza;
            zzo.zzk("Cannot show rewarded video.", e);
            throw new zzdfl(e.getCause());
        }
    }

    @Override
    public final hmh zza() {
        return this.b;
    }
}

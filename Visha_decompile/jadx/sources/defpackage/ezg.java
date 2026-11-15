package defpackage;

import android.content.Context;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.internal.ads.zzdfl;
import com.google.android.gms.internal.ads.zzfbw;

public final class ezg implements ebg {
    public final nxg a;
    public final hmh b;
    public final fzg c;

    public ezg(fzg fzgVar, nxg nxgVar, hmh hmhVar) {
        this.a = nxgVar;
        this.b = hmhVar;
        this.c = fzgVar;
    }

    @Override
    public final void a(boolean z, Context context, wzf wzfVar) throws zzdfl {
        try {
            eoh eohVar = (eoh) this.a.b;
            eohVar.A(z);
            if (this.c.c.clientJarVersion < ((Integer) zzbd.zzc().b(cye.W0)).intValue()) {
                eohVar.C();
            } else {
                eohVar.D(context);
            }
        } catch (zzfbw e) {
            int i = zze.zza;
            zzo.zzi("Cannot show interstitial.");
            throw new zzdfl(e.getCause());
        }
    }

    @Override
    public final hmh zza() {
        return this.b;
    }
}

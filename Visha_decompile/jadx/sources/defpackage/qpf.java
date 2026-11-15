package defpackage;

import android.content.Context;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.internal.ads.zzfbw;

public final class qpf implements e0g {
    public final eoh b;

    public qpf(eoh eohVar) {
        this.b = eohVar;
    }

    @Override
    public final void b(Context context) {
        try {
            this.b.l();
        } catch (zzfbw e) {
            int i = zze.zza;
            zzo.zzk("Cannot invoke onDestroy for the mediation adapter.", e);
        }
    }

    @Override
    public final void k(Context context) {
        try {
            this.b.y();
        } catch (zzfbw e) {
            int i = zze.zza;
            zzo.zzk("Cannot invoke onPause for the mediation adapter.", e);
        }
    }

    @Override
    public final void n(Context context) {
        try {
            eoh eohVar = this.b;
            eohVar.z();
            if (context != null) {
                eohVar.x(context);
            }
        } catch (zzfbw e) {
            int i = zze.zza;
            zzo.zzk("Cannot invoke onResume for the mediation adapter.", e);
        }
    }
}

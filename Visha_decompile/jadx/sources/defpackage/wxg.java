package defpackage;

import android.content.Context;
import com.google.android.gms.internal.ads.zzdfl;
import com.google.android.gms.internal.ads.zzfbw;

public final class wxg implements ebg {
    public final nxg a;
    public final hmh b;

    public wxg(xxg xxgVar, nxg nxgVar, hmh hmhVar) {
        this.a = nxgVar;
        this.b = hmhVar;
    }

    @Override
    public final void a(boolean z, Context context, wzf wzfVar) throws zzdfl {
        try {
            eoh eohVar = (eoh) this.a.b;
            eohVar.A(z);
            eohVar.B(context);
        } catch (zzfbw e) {
            throw new zzdfl(e.getCause());
        }
    }

    @Override
    public final hmh zza() {
        return this.b;
    }
}

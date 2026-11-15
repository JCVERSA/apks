package defpackage;

import android.content.Context;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.ads.internal.overlay.zzn;
import com.google.android.gms.ads.internal.zzv;

public final class syg implements ebg {
    public final eff a;
    public final hmh b;
    public final tyg c;

    public syg(tyg tygVar, eff effVar, hmh hmhVar) {
        this.a = effVar;
        this.b = hmhVar;
        this.c = tygVar;
    }

    @Override
    public final void a(boolean z, Context context, wzf wzfVar) {
        try {
            zzv.zzj();
            zzn.zza(context, (AdOverlayInfoParcel) this.a.get(), true, this.c.e);
        } catch (Exception unused) {
        }
    }

    @Override
    public final hmh zza() {
        return this.b;
    }
}

package defpackage;

import android.view.View;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.zzv;

public final class ycg implements v7i {
    public final View a;
    public final zcg b;

    public ycg(zcg zcgVar, View view) {
        this.a = view;
        this.b = zcgVar;
    }

    @Override
    public final void zza(Throwable th) {
        if (((Boolean) zzbd.zzc().b(cye.u5)).booleanValue()) {
            zzv.zzp().w(th, "omid native display exp");
        }
    }

    @Override
    public final void zzb(Object obj) {
        this.b.M(this.a, (fxg) obj);
    }
}

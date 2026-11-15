package defpackage;

import com.google.android.gms.ads.internal.util.zzbw;
import com.google.android.gms.ads.internal.zzv;

public final class v2f implements v7i {
    public final ejf a;

    public v2f(ejf ejfVar) {
        this.a = ejfVar;
    }

    @Override
    public final void zza(Throwable th) {
        zzv.zzp().x(th, "DefaultGmsgHandlers.attributionReportingManager");
    }

    @Override
    public final void zzb(Object obj) {
        String str = (String) obj;
        ejf ejfVar = this.a;
        new zzbw(ejfVar.getContext(), ejfVar.zzm().afmaVersion, str, null, ejfVar.zzD() != null ? ejfVar.zzD().x0 : null).zzb();
    }
}

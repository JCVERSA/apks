package defpackage;

import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.zzv;
import java.util.List;

public final class efg implements v7i {
    public final ffg a;

    public efg(ffg ffgVar) {
        this.a = ffgVar;
    }

    @Override
    public final void zzb(List list) {
        try {
            ejf ejfVar = (ejf) list.get(0);
            if (ejfVar != null) {
                this.a.b(ejfVar);
            }
        } catch (ClassCastException | IndexOutOfBoundsException e) {
            if (((Boolean) zzbd.zzc().b(cye.u5)).booleanValue()) {
                zzv.zzp().x(e, "omid native display exp");
            }
        }
    }

    @Override
    public final void zza(Throwable th) {
        if (((Boolean) zzbd.zzc().b(cye.u5)).booleanValue()) {
            zzv.zzp().x(th, "omid native display exp");
        }
    }
}

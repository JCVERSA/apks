package defpackage;

import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.internal.ads.zzdxq;

public final class ojh implements m2i {
    public final sjh a;

    public ojh(sjh sjhVar) {
        this.a = sjhVar;
    }

    @Override
    public final Object apply(Object obj) {
        int i = zze.zza;
        zzo.zzh("", (zzdxq) obj);
        zze.zza("Failed to get a cache key, reverting to legacy flow.");
        sjh sjhVar = this.a;
        sjhVar.d = new qjh(null, sjhVar.e(), null);
        return sjhVar.d;
    }
}

package defpackage;

import android.content.Context;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.ads.internal.zzv;
import com.google.android.gms.internal.ads.zzfgq;

public final class slf implements fyi {
    public final qyi a;
    public final qyi b;

    public slf(qyi qyiVar, qyi qyiVar2) {
        this.a = qyiVar;
        this.b = qyiVar2;
    }

    @Override
    public final kbf zzb() {
        Context contextA = ((skf) this.a).a();
        zzfgq zzfgqVar = (zzfgq) this.b.zzb();
        j7f j7fVarB = zzv.zzg().b(contextA, VersionInfoParcel.forPackage(), zzfgqVar);
        x6f x6fVar = a7f.b;
        j7fVarB.a("google.afma.request.getAdDictionary", x6fVar, x6fVar);
        return new mbf(contextA, zzv.zzg().b(contextA, VersionInfoParcel.forPackage(), zzfgqVar).a("google.afma.sdkConstants.getSdkConstants", x6fVar, x6fVar), VersionInfoParcel.forPackage());
    }
}

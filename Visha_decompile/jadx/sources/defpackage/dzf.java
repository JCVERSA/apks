package defpackage;

import android.content.Context;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.internal.ads.zzbxf;

public final class dzf implements fyi {
    public final qyi a;
    public final qyi b;
    public final qyi c;

    public dzf(czf czfVar, qyi qyiVar, qyi qyiVar2, qyi qyiVar3, qyi qyiVar4) {
        this.a = qyiVar;
        this.b = qyiVar2;
        this.c = qyiVar3;
    }

    @Override
    public final Object zzb() {
        Context context = (Context) this.a.zzb();
        VersionInfoParcel versionInfoParcelA = ((klf) this.b).a();
        hmh hmhVarA = ((quf) this.c).a();
        adf adfVar = new adf();
        zzbxf zzbxfVar = hmhVarA.A;
        if (zzbxfVar == null) {
            return null;
        }
        lmh lmhVar = hmhVarA.s;
        return new zcf(context, versionInfoParcelA, zzbxfVar, lmhVar == null ? null : lmhVar.b, adfVar);
    }
}

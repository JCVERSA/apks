package defpackage;

import android.content.Context;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.ads.internal.util.zzay;
import com.google.android.gms.ads.internal.zzv;

public final class dag implements fyi {
    public final qyi a;
    public final qyi b;
    public final qyi c;
    public final qyi d;

    public dag(w9g w9gVar, qyi qyiVar, qyi qyiVar2, qyi qyiVar3, qyi qyiVar4) {
        this.a = qyiVar;
        this.b = qyiVar2;
        this.c = qyiVar3;
        this.d = qyiVar4;
    }

    @Override
    public final Object zzb() {
        final Context context = (Context) this.a.zzb();
        final VersionInfoParcel versionInfoParcelA = ((klf) this.b).a();
        final hmh hmhVarA = ((quf) this.c).a();
        final enh enhVarA = ((zyf) this.d).a();
        return new i8g(new b1g() {
            @Override
            public final void zzt() {
                zzay zzayVarZzt = zzv.zzt();
                Context context2 = context;
                enh enhVar = enhVarA;
                zzayVarZzt.zzn(context2, versionInfoParcelA.afmaVersion, hmhVarA.C.toString(), enhVar.f);
            }
        }, zef.g);
    }
}

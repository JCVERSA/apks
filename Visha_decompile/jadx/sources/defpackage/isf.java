package defpackage;

import android.content.Context;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.ads.internal.util.zzay;
import com.google.android.gms.ads.internal.zzv;

public final class isf implements fyi {
    public final asf a;
    public final qyi b;
    public final qyi c;
    public final qyi d;
    public final qyi e;

    public isf(asf asfVar, qyi qyiVar, qyi qyiVar2, qyi qyiVar3, qyi qyiVar4) {
        this.a = asfVar;
        this.b = qyiVar;
        this.c = qyiVar2;
        this.d = qyiVar3;
        this.e = qyiVar4;
    }

    public static i8g a(asf asfVar, final Context context, final VersionInfoParcel versionInfoParcel, final hmh hmhVar, final enh enhVar) {
        return new i8g(new b1g() {
            @Override
            public final void zzt() {
                zzay zzayVarZzt = zzv.zzt();
                Context context2 = context;
                enh enhVar2 = enhVar;
                zzayVarZzt.zzn(context2, versionInfoParcel.afmaVersion, hmhVar.C.toString(), enhVar2.f);
            }
        }, zef.g);
    }

    @Override
    public final Object zzb() {
        return a(this.a, (Context) this.b.zzb(), ((klf) this.c).a(), ((quf) this.d).a(), ((zyf) this.e).a());
    }
}

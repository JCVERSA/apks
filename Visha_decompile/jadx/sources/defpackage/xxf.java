package defpackage;

import android.content.Context;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.ads.internal.util.zzau;

public final class xxf implements fyi {
    public final qyi a;
    public final qyi b;
    public final qyi c;

    public xxf(qyi qyiVar, qyi qyiVar2, qyi qyiVar3) {
        this.a = qyiVar;
        this.b = qyiVar2;
        this.c = qyiVar3;
    }

    @Override
    public final Object zzb() {
        final Context context = (Context) this.a.zzb();
        final VersionInfoParcel versionInfoParcelA = ((klf) this.b).a();
        final enh enhVarA = ((zyf) this.c).a();
        return new m2i() {
            @Override
            public final Object apply(Object obj) {
                hmh hmhVar = (hmh) obj;
                zzau zzauVar = new zzau(context);
                zzauVar.zzp(hmhVar.B);
                zzauVar.zzq(hmhVar.C.toString());
                zzauVar.zzo(versionInfoParcelA.afmaVersion);
                zzauVar.zzn(enhVarA.f);
                return zzauVar;
            }
        };
    }
}

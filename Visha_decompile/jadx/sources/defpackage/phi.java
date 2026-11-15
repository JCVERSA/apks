package defpackage;

import com.google.android.gms.internal.ads.j9;
import com.google.android.gms.internal.ads.k9;
import com.google.android.gms.internal.ads.zzgsn;
import com.google.android.gms.internal.ads.zzgtt;
import com.google.android.gms.internal.ads.zzgwn;

public final class phi implements c9i {
    public final String a;
    public final Class b;
    public final zzgsn c;

    public phi(String str, Class cls, zzgsn zzgsnVar, vti vtiVar) {
        this.a = str;
        this.b = cls;
        this.c = zzgsnVar;
    }

    public static c9i c(String str, Class cls, zzgsn zzgsnVar, vti vtiVar) {
        return new phi(str, cls, zzgsnVar, vtiVar);
    }

    @Override
    public final Object a(zzgwn zzgwnVar) {
        return nii.a().b(qii.c().a(uji.a(this.a, zzgwnVar, this.c, zzgtt.RAW, null), a9i.a()), this.b);
    }

    @Override
    public final j9 b(zzgwn zzgwnVar) {
        noi noiVarB0 = k9.b0();
        noiVarB0.w(this.a);
        noiVarB0.x(zzgwnVar);
        noiVarB0.v(zzgtt.RAW);
        uji ujiVar = (uji) qii.c().d(fii.b().a(qii.c().b(vji.a((k9) noiVarB0.q())), null), uji.class, a9i.a());
        koi koiVarB0 = j9.b0();
        koiVarB0.w(ujiVar.f());
        koiVarB0.x(ujiVar.d());
        koiVarB0.v(ujiVar.b());
        return (j9) koiVarB0.q();
    }

    @Override
    public final Class zzb() {
        return this.b;
    }
}

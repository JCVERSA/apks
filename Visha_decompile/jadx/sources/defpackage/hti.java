package defpackage;

import com.google.android.gms.internal.ads.ia;
import com.google.android.gms.internal.ads.ka;
import com.google.android.gms.internal.ads.la;
import com.google.android.gms.internal.ads.pa;
import java.nio.charset.Charset;

public final class hti implements nui {
    public static final pti b = new fti();
    public final pti a;

    public hti() {
        ksi ksiVarC = ksi.c();
        xti xtiVar = xti.c;
        gti gtiVar = new gti(ksiVarC, b);
        Charset charset = zsi.a;
        this.a = gtiVar;
    }

    @Override
    public final cui a(Class cls) {
        pui puiVar = pa.a;
        if (!ia.class.isAssignableFrom(cls)) {
            xti xtiVar = xti.c;
        }
        oti otiVarA = this.a.a(cls);
        if (otiVarA.zzb()) {
            xti xtiVar2 = xti.c;
            return la.h(pa.w(), hsi.a(), otiVarA.zza());
        }
        xti xtiVar3 = xti.c;
        return ka.D(cls, otiVarA, uti.a(), dti.a(), pa.w(), otiVarA.zzc() + (-1) != 1 ? hsi.a() : null, nti.a());
    }
}

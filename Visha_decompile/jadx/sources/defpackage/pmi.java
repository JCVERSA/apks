package defpackage;

import com.google.android.gms.internal.ads.j9;
import com.google.android.gms.internal.ads.zzgtt;
import java.security.GeneralSecurityException;

public final class pmi implements o9i {
    public pmi(o9i o9iVar, zzgtt zzgttVar, byte[] bArr) {
    }

    public static o9i a(thi thiVar) throws GeneralSecurityException {
        byte[] bArrD;
        uji ujiVarB = thiVar.b(a9i.a());
        koi koiVarB0 = j9.b0();
        koiVarB0.w(ujiVarB.f());
        koiVarB0.x(ujiVarB.d());
        koiVarB0.v(ujiVarB.b());
        o9i o9iVar = (o9i) s9i.a((j9) koiVarB0.q(), o9i.class);
        zzgtt zzgttVarC = ujiVarB.c();
        int iOrdinal = zzgttVarC.ordinal();
        if (iOrdinal == 1) {
            bArrD = rii.b(thiVar.d().intValue()).d();
        } else if (iOrdinal == 2) {
            bArrD = rii.a(thiVar.d().intValue()).d();
        } else if (iOrdinal != 3) {
            if (iOrdinal != 4) {
                throw new GeneralSecurityException("unknown output prefix type");
            }
            bArrD = rii.a(thiVar.d().intValue()).d();
        } else {
            bArrD = rii.a.d();
        }
        return new pmi(o9iVar, zzgttVarC, bArrD);
    }
}

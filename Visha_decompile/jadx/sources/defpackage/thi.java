package defpackage;

import com.google.android.gms.internal.ads.zzgtt;
import java.security.GeneralSecurityException;

public final class thi extends b9i {
    public final uji a;
    public final eri b;

    public thi(uji ujiVar, t9i t9iVar) throws GeneralSecurityException {
        eri eriVarA;
        e(ujiVar, t9iVar);
        this.a = ujiVar;
        if (ujiVar.c().equals(zzgtt.RAW)) {
            eriVarA = eri.b(new byte[0]);
        } else if (ujiVar.c().equals(zzgtt.TINK)) {
            eriVarA = rii.b(ujiVar.e().intValue());
        } else {
            if (!ujiVar.c().equals(zzgtt.LEGACY) && !ujiVar.c().equals(zzgtt.CRUNCHY)) {
                throw new GeneralSecurityException("Unknown output prefix type");
            }
            eriVarA = rii.a(ujiVar.e().intValue());
        }
        this.b = eriVarA;
    }

    public static void e(uji ujiVar, t9i t9iVar) {
        int i = qhi.b[ujiVar.b().ordinal()];
    }

    @Override
    public final p9i a() {
        uji ujiVar = this.a;
        return new rhi(ujiVar.f(), ujiVar.c(), null);
    }

    public final uji b(t9i t9iVar) {
        uji ujiVar = this.a;
        e(ujiVar, t9iVar);
        return ujiVar;
    }

    public final eri c() {
        return this.b;
    }

    public final Integer d() {
        return this.a.e();
    }
}

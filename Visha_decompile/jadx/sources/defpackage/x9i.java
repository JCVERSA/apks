package defpackage;

import com.google.android.gms.internal.ads.k9;
import java.io.IOException;
import java.security.GeneralSecurityException;

public abstract class x9i {
    public static p9i a(byte[] bArr) throws GeneralSecurityException {
        try {
            k9 k9VarE0 = k9.e0(bArr, esi.a());
            qii qiiVarC = qii.c();
            vji vjiVarA = vji.a(k9VarE0);
            return !qiiVarC.k(vjiVarA) ? new uhi(vjiVarA) : qiiVarC.b(vjiVarA);
        } catch (IOException e) {
            throw new GeneralSecurityException("Failed to parse proto", e);
        }
    }

    public static byte[] b(p9i p9iVar) {
        return ((vji) qii.c().e(p9iVar, vji.class)).c().l();
    }
}

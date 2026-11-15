package defpackage;

import com.google.android.gms.internal.ads.k9;
import com.google.android.gms.internal.ads.zzgnw;
import java.security.GeneralSecurityException;

public abstract class e9i {
    public static final p9i a(p9i p9iVar) {
        return p9iVar != null ? p9iVar : x9i.a(b(null).l());
    }

    public static final k9 b(p9i p9iVar) {
        try {
            return ((vji) qii.c().e(null, vji.class)).c();
        } catch (GeneralSecurityException e) {
            throw new zzgnw("Parsing parameters failed in getProto(). You probably want to call some Tink register function for ".concat("null"), e);
        }
    }
}

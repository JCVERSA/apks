package defpackage;

import java.security.GeneralSecurityException;
import java.util.HashMap;
import java.util.Map;

public final class dki {
    public final Map a;
    public final Map b;
    public final Map c;
    public final Map d;

    public dki(zji zjiVar, cki ckiVar) {
        this.a = new HashMap(zjiVar.a);
        this.b = new HashMap(zjiVar.b);
        this.c = new HashMap(zjiVar.c);
        this.d = new HashMap(zjiVar.d);
    }

    public final b9i a(yji yjiVar, t9i t9iVar) throws GeneralSecurityException {
        aki akiVar = new aki(yjiVar.getClass(), yjiVar.zzd(), null);
        Map map = this.b;
        if (map.containsKey(akiVar)) {
            return ((ihi) map.get(akiVar)).a(yjiVar, t9iVar);
        }
        throw new GeneralSecurityException("No Key Parser for requested key type " + akiVar.toString() + " available");
    }

    public final p9i b(yji yjiVar) throws GeneralSecurityException {
        aki akiVar = new aki(yjiVar.getClass(), yjiVar.zzd(), null);
        Map map = this.d;
        if (map.containsKey(akiVar)) {
            return ((vii) map.get(akiVar)).a(yjiVar);
        }
        throw new GeneralSecurityException("No Parameters Parser for requested key type " + akiVar.toString() + " available");
    }

    public final yji c(b9i b9iVar, Class cls, t9i t9iVar) throws GeneralSecurityException {
        bki bkiVar = new bki(b9iVar.getClass(), cls, null);
        Map map = this.a;
        if (map.containsKey(bkiVar)) {
            return ((mhi) map.get(bkiVar)).a(b9iVar, t9iVar);
        }
        throw new GeneralSecurityException("No Key serializer for " + bkiVar.toString() + " available");
    }

    public final yji d(p9i p9iVar, Class cls) throws GeneralSecurityException {
        bki bkiVar = new bki(p9iVar.getClass(), cls, null);
        Map map = this.c;
        if (map.containsKey(bkiVar)) {
            return ((zii) map.get(bkiVar)).a(p9iVar);
        }
        throw new GeneralSecurityException("No Key Format serializer for " + bkiVar.toString() + " available");
    }

    public final boolean i(yji yjiVar) {
        return this.b.containsKey(new aki(yjiVar.getClass(), yjiVar.zzd(), null));
    }

    public final boolean j(yji yjiVar) {
        return this.d.containsKey(new aki(yjiVar.getClass(), yjiVar.zzd(), null));
    }
}

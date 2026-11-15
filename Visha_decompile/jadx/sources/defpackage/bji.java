package defpackage;

import java.security.GeneralSecurityException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public final class bji {
    public final Map a = new HashMap();

    public final bji a(eri eriVar, Object obj) throws GeneralSecurityException {
        List list;
        if (eriVar.a() != 0 && eriVar.a() != 5) {
            throw new GeneralSecurityException("PrefixMap only supports 0 and 5 byte prefixes");
        }
        Map map = this.a;
        if (map.containsKey(eriVar)) {
            list = (List) map.get(eriVar);
        } else {
            ArrayList arrayList = new ArrayList();
            map.put(eriVar, arrayList);
            list = arrayList;
        }
        list.add(obj);
        return this;
    }

    public final eji b() {
        return new eji(this.a, null);
    }
}

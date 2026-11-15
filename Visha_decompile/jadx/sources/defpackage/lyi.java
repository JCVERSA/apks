package defpackage;

import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;

public final class lyi extends byi {
    static {
        gyi.a(Collections.emptyMap());
    }

    public lyi(Map map, jyi jyiVar) {
        super(map);
    }

    public static kyi b(int i) {
        return new kyi(i, null);
    }

    @Override
    public final Map zzb() {
        LinkedHashMap linkedHashMapB = cyi.b(a().size());
        for (Map.Entry entry : a().entrySet()) {
            linkedHashMapB.put(entry.getKey(), ((qyi) entry.getValue()).zzb());
        }
        return Collections.unmodifiableMap(linkedHashMapB);
    }
}

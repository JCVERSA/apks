package defpackage;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import org.schabi.newpipe.extractor.a;
import org.schabi.newpipe.extractor.localization.Localization;

public abstract class c23 {
    public abstract fu8 a(vs8 vs8Var);

    public fu8 b(String str) {
        return d(str, null, a.e());
    }

    public fu8 c(String str, Map map) {
        return d(str, map, a.e());
    }

    public fu8 d(String str, Map map, Localization localization) {
        return a(vs8.e().h(str).j(map).k(localization).g());
    }

    public fu8 e(String str, Localization localization) {
        return d(str, null, localization);
    }

    public fu8 f(String str) {
        return g(str, null);
    }

    public fu8 g(String str, Map map) {
        return a(vs8.e().i(str).j(map).g());
    }

    public fu8 h(String str, Map map, byte[] bArr, Localization localization) {
        return a(vs8.e().l(str, bArr).j(map).k(localization).g());
    }

    public fu8 i(String str, Map map, byte[] bArr, Localization localization, String str2) {
        HashMap map2 = new HashMap();
        if (map != null) {
            map2.putAll(map);
        }
        map2.put("Content-Type", Collections.singletonList(str2));
        return h(str, map2, bArr, localization);
    }

    public fu8 j(String str, Map map, byte[] bArr) {
        return k(str, map, bArr, a.e());
    }

    public fu8 k(String str, Map map, byte[] bArr, Localization localization) {
        return i(str, map, bArr, localization, "application/json");
    }
}

package defpackage;

import java.util.Map;

public final class j3f implements n3f {
    @Override
    public final void a(Object obj, Map map) {
        ejf ejfVar = (ejf) obj;
        String str = (String) map.get("action");
        if ("pause".equals(str)) {
            ejfVar.zzde();
        } else if ("resume".equals(str)) {
            ejfVar.zzdf();
        }
    }
}

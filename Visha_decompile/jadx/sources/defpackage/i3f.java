package defpackage;

import java.util.Map;

public final class i3f implements n3f {
    @Override
    public final void a(Object obj, Map map) {
        ((ejf) obj).zzal(!Boolean.parseBoolean((String) map.get("disabled")));
    }
}

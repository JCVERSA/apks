package u;

import java.util.Map;
import kotlin.jvm.internal.markers.KMutableMap;

final class c extends b implements Map.Entry, KMutableMap.Entry {

    private final i f72891c;

    private Object f72892d;

    public c(i iVar, Object obj, Object obj2) {
        super(obj, obj2);
        this.f72891c = iVar;
        this.f72892d = obj2;
    }

    public void a(Object obj) {
        this.f72892d = obj;
    }

    @Override
    public Object getValue() {
        return this.f72892d;
    }

    @Override
    public Object setValue(Object obj) {
        Object value = getValue();
        a(obj);
        this.f72891c.c(getKey(), obj);
        return value;
    }
}

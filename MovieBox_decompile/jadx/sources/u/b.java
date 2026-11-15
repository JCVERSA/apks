package u;

import java.util.Map;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;

public class b implements Map.Entry, KMappedMarker {

    private final Object f72889a;

    private final Object f72890b;

    public b(Object obj, Object obj2) {
        this.f72889a = obj;
        this.f72890b = obj2;
    }

    @Override
    public boolean equals(Object obj) {
        Map.Entry entry = obj instanceof Map.Entry ? (Map.Entry) obj : null;
        return entry != null && Intrinsics.c(entry.getKey(), getKey()) && Intrinsics.c(entry.getValue(), getValue());
    }

    @Override
    public Object getKey() {
        return this.f72889a;
    }

    @Override
    public Object getValue() {
        return this.f72890b;
    }

    @Override
    public int hashCode() {
        Object key = getKey();
        int iHashCode = key != null ? key.hashCode() : 0;
        Object value = getValue();
        return iHashCode ^ (value != null ? value.hashCode() : 0);
    }

    @Override
    public Object setValue(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(getKey());
        sb2.append('=');
        sb2.append(getValue());
        return sb2.toString();
    }
}

package defpackage;

import java.util.Map;

public class zn4 implements Map.Entry {
    public final Object b;
    public final ao4 c;

    public zn4(ao4 ao4Var, Object obj) {
        this.c = ao4Var;
        this.b = obj;
    }

    @Override
    public boolean equals(Object obj) {
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        Object key = getKey();
        Object key2 = entry.getKey();
        if (key == key2 || (key != null && key.equals(key2))) {
            Object value = getValue();
            Object value2 = entry.getValue();
            if (value == value2) {
                return true;
            }
            if (value != null && value.equals(value2)) {
                return true;
            }
        }
        return false;
    }

    @Override
    public Object getKey() {
        return this.b;
    }

    @Override
    public Object getValue() {
        return this.c.c.b.get(this.b);
    }

    @Override
    public int hashCode() {
        Object value = getValue();
        Object obj = this.b;
        return (obj == null ? 0 : obj.hashCode()) ^ (value != null ? value.hashCode() : 0);
    }

    @Override
    public Object setValue(Object obj) {
        throw new UnsupportedOperationException();
    }
}

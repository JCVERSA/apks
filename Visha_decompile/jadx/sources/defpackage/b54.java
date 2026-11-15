package defpackage;

import java.util.Map;

public abstract class b54 extends c54 implements Map.Entry {
    @Override
    public boolean equals(Object obj) {
        return f().equals(obj);
    }

    public abstract Map.Entry f();

    @Override
    public Object getKey() {
        return f().getKey();
    }

    @Override
    public Object getValue() {
        return f().getValue();
    }

    @Override
    public int hashCode() {
        return f().hashCode();
    }

    @Override
    public Object setValue(Object obj) {
        return f().setValue(obj);
    }

    public boolean standardEquals(Object obj) {
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        return kc7.a(getKey(), entry.getKey()) && kc7.a(getValue(), entry.getValue());
    }
}

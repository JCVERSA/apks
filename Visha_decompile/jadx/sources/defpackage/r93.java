package defpackage;

import java.util.Collection;
import java.util.Collections;
import java.util.Map;
import java.util.Set;

public class r93 implements Map, Cloneable {
    public static final r93 b = new r93();

    @Override
    public void clear() {
    }

    @Override
    public boolean containsKey(Object obj) {
        return false;
    }

    @Override
    public boolean containsValue(Object obj) {
        return false;
    }

    @Override
    public Set entrySet() {
        return Collections.EMPTY_SET;
    }

    @Override
    public Object get(Object obj) {
        return null;
    }

    @Override
    public boolean isEmpty() {
        return true;
    }

    @Override
    public Set keySet() {
        return Collections.EMPTY_SET;
    }

    @Override
    public Object put(Object obj, Object obj2) {
        throw new UnsupportedOperationException("This Map is read-only.");
    }

    @Override
    public void putAll(Map map) {
        if (map.entrySet().iterator().hasNext()) {
            throw new UnsupportedOperationException("This Map is read-only.");
        }
    }

    @Override
    public Object remove(Object obj) {
        return null;
    }

    @Override
    public int size() {
        return 0;
    }

    @Override
    public Collection values() {
        return Collections.EMPTY_LIST;
    }
}

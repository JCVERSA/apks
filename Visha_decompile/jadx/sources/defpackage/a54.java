package defpackage;

import com.google.common.collect.Iterators;
import com.google.common.collect.Maps;
import com.google.common.collect.Sets;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public abstract class a54 extends c54 implements Map {
    @Override
    public void clear() {
        f().clear();
    }

    @Override
    public boolean containsKey(Object obj) {
        return f().containsKey(obj);
    }

    @Override
    public boolean containsValue(Object obj) {
        return f().containsValue(obj);
    }

    @Override
    public abstract Map f();

    @Override
    public Set<Map.Entry<Object, Object>> entrySet() {
        return f().entrySet();
    }

    @Override
    public boolean equals(Object obj) {
        return obj == this || f().equals(obj);
    }

    @Override
    public Object get(Object obj) {
        return f().get(obj);
    }

    @Override
    public int hashCode() {
        return f().hashCode();
    }

    @Override
    public boolean isEmpty() {
        return f().isEmpty();
    }

    @Override
    public Set<Object> keySet() {
        return f().keySet();
    }

    @Override
    public Object put(Object obj, Object obj2) {
        return f().put(obj, obj2);
    }

    @Override
    public void putAll(Map<Object, Object> map) {
        f().putAll(map);
    }

    @Override
    public Object remove(Object obj) {
        return f().remove(obj);
    }

    @Override
    public int size() {
        return f().size();
    }

    public void standardClear() {
        Iterators.d(entrySet().iterator());
    }

    public boolean standardContainsKey(Object obj) {
        return Maps.f(this, obj);
    }

    public boolean standardContainsValue(Object obj) {
        return Maps.g(this, obj);
    }

    public boolean standardEquals(Object obj) {
        return Maps.h(this, obj);
    }

    public int standardHashCode() {
        return Sets.d(entrySet());
    }

    public boolean standardIsEmpty() {
        return !entrySet().iterator().hasNext();
    }

    public void standardPutAll(Map<Object, Object> map) {
        Maps.t(this, map);
    }

    public Object standardRemove(Object obj) {
        Iterator<Map.Entry<Object, Object>> it = entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry<Object, Object> next = it.next();
            if (kc7.a(next.getKey(), obj)) {
                Object value = next.getValue();
                it.remove();
                return value;
            }
        }
        return null;
    }

    public String standardToString() {
        return Maps.x(this);
    }

    @Override
    public Collection<Object> values() {
        return f().values();
    }
}

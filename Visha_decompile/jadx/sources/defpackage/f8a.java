package defpackage;

import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
import kotlin.Pair;
import org.mozilla.javascript.ES6Iterator;

public final class f8a extends WeakHashMap {
    public final Object b = new Object();

    public final Map a() {
        LinkedHashMap linkedHashMap;
        synchronized (this.b) {
            Set<Map.Entry> setEntrySet = entrySet();
            linkedHashMap = new LinkedHashMap(wn8.d(ky5.g(z71.v(setEntrySet, 10)), 16));
            for (Map.Entry entry : setEntrySet) {
                Pair pairA = abb.a(entry.getKey(), entry.getValue());
                linkedHashMap.put(pairA.getFirst(), pairA.getSecond());
            }
        }
        return linkedHashMap;
    }

    public Set b() {
        Set setEntrySet;
        synchronized (this.b) {
            setEntrySet = super.entrySet();
        }
        y45.i(setEntrySet, "synchronized(lock) { super.entries }");
        return setEntrySet;
    }

    public Set c() {
        Set setKeySet;
        synchronized (this.b) {
            setKeySet = super.keySet();
        }
        y45.i(setKeySet, "synchronized(lock) { super.keys }");
        return setKeySet;
    }

    @Override
    public void clear() {
        synchronized (this.b) {
            super.clear();
            zfb zfbVar = zfb.a;
        }
    }

    public int d() {
        return super.size();
    }

    public Collection e() {
        Collection collectionValues;
        synchronized (this.b) {
            collectionValues = super.values();
        }
        y45.i(collectionValues, "synchronized(lock) { super.values }");
        return collectionValues;
    }

    @Override
    public final Set entrySet() {
        return b();
    }

    @Override
    public Object get(Object obj) {
        Object obj2;
        synchronized (this.b) {
            obj2 = super.get(obj);
        }
        return obj2;
    }

    @Override
    public final Set keySet() {
        return c();
    }

    @Override
    public Object put(Object obj, Object obj2) {
        Object objPut;
        y45.j(obj, "key");
        y45.j(obj2, ES6Iterator.VALUE_PROPERTY);
        synchronized (this.b) {
            objPut = super.put(obj, obj2);
        }
        return objPut;
    }

    @Override
    public void putAll(Map map) {
        y45.j(map, "from");
        synchronized (this.b) {
            super.putAll(map);
            zfb zfbVar = zfb.a;
        }
    }

    @Override
    public Object remove(Object obj) {
        Object objRemove;
        synchronized (this.b) {
            objRemove = super.remove(obj);
        }
        return objRemove;
    }

    @Override
    public final int size() {
        return d();
    }

    @Override
    public final Collection values() {
        return e();
    }

    @Override
    public boolean remove(Object obj, Object obj2) {
        boolean zRemove;
        if (obj == null || obj2 == null) {
            return false;
        }
        synchronized (this.b) {
            zRemove = super.remove(obj, obj2);
        }
        return zRemove;
    }
}

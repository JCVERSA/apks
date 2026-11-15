package defpackage;

import java.util.Collection;
import java.util.Map;
import java.util.Set;

public interface at6 {
    Map asMap();

    void clear();

    boolean containsEntry(Object obj, Object obj2);

    boolean containsKey(Object obj);

    Collection entries();

    Collection get(Object obj);

    boolean isEmpty();

    Set keySet();

    boolean put(Object obj, Object obj2);

    boolean putAll(at6 at6Var);

    boolean remove(Object obj, Object obj2);

    Collection removeAll(Object obj);

    int size();

    Collection values();
}

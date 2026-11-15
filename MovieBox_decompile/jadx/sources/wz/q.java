package wz;

import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashSet;

public class q implements org.mvel2.a {
    @Override
    public boolean a(Class cls) {
        return cls.isArray() || Collection.class.isAssignableFrom(cls) || Iterable.class.isAssignableFrom(cls);
    }

    @Override
    public Object b(Object obj) {
        Class<?> cls = obj.getClass();
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        if (cls.isArray()) {
            linkedHashSet.addAll(Arrays.asList((Object[]) obj));
        } else if (Collection.class.isAssignableFrom(cls)) {
            linkedHashSet.addAll((Collection) obj);
        } else if (Iterable.class.isAssignableFrom(cls)) {
            Iterator it = ((Iterable) obj).iterator();
            while (it.hasNext()) {
                linkedHashSet.add(it.next());
            }
        }
        return linkedHashSet;
    }
}

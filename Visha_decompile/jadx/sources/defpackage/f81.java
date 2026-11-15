package defpackage;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;

public abstract class f81 extends e81 {
    public static List V(Iterable iterable, Class cls) {
        y45.j(iterable, "<this>");
        y45.j(cls, "klass");
        return (List) W(iterable, new ArrayList(), cls);
    }

    public static final Collection W(Iterable iterable, Collection collection, Class cls) {
        y45.j(iterable, "<this>");
        y45.j(collection, "destination");
        y45.j(cls, "klass");
        for (Object obj : iterable) {
            if (cls.isInstance(obj)) {
                collection.add(obj);
            }
        }
        return collection;
    }

    public static void X(List list) {
        y45.j(list, "<this>");
        Collections.reverse(list);
    }
}

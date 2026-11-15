package defpackage;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.reflect.jvm.internal.impl.types.checker.c;

public abstract class hh5 {
    public static final mq6 a = new mq6("KotlinTypeRefiner");

    public static final mq6 a() {
        return a;
    }

    public static final List b(c cVar, Iterable iterable) {
        y45.j(cVar, "<this>");
        y45.j(iterable, "types");
        ArrayList arrayList = new ArrayList(z71.v(iterable, 10));
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            arrayList.add(cVar.a((eh5) it.next()));
        }
        return arrayList;
    }
}

package defpackage;

import java.util.Iterator;
import java.util.List;

public abstract class j27 {
    public static final void a(List list, h27.b bVar) {
        y45.j(list, "<this>");
        y45.j(bVar, "observer");
        Iterator it = list.iterator();
        while (it.hasNext()) {
            h27.c().b(bVar, ((Number) it.next()).intValue());
        }
    }

    public static final void b(List list, h27.b bVar) {
        y45.j(list, "<this>");
        y45.j(bVar, "observer");
        Iterator it = list.iterator();
        while (it.hasNext()) {
            h27.c().f(bVar, ((Number) it.next()).intValue());
        }
    }
}

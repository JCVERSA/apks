package zc;

import java.util.Iterator;
import java.util.Set;
import ob.r;

public class c implements i {

    private final String f76769a;

    private final d f76770b;

    c(Set set, d dVar) {
        this.f76769a = d(set);
        this.f76770b = dVar;
    }

    public static ob.c b() {
        return ob.c.c(i.class).b(r.o(f.class)).f(new ob.h() {
            @Override
            public final Object a(ob.e eVar) {
                return c.c(eVar);
            }
        }).d();
    }

    public static i c(ob.e eVar) {
        return new c(eVar.e(f.class), d.a());
    }

    private static String d(Set set) {
        StringBuilder sb2 = new StringBuilder();
        Iterator it = set.iterator();
        while (it.hasNext()) {
            f fVar = (f) it.next();
            sb2.append(fVar.b());
            sb2.append('/');
            sb2.append(fVar.c());
            if (it.hasNext()) {
                sb2.append(' ');
            }
        }
        return sb2.toString();
    }

    @Override
    public String getUserAgent() {
        if (this.f76770b.b().isEmpty()) {
            return this.f76769a;
        }
        return this.f76769a + ' ' + d(this.f76770b.b());
    }
}

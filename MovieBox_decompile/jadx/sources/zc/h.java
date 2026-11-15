package zc;

import android.content.Context;
import ob.r;

public abstract class h {

    public interface a {
        String a(Object obj);
    }

    public static ob.c b(String str, String str2) {
        return ob.c.l(f.a(str, str2), f.class);
    }

    public static ob.c c(final String str, final a aVar) {
        return ob.c.m(f.class).b(r.k(Context.class)).f(new ob.h() {
            @Override
            public final Object a(ob.e eVar) {
                return h.d(str, aVar, eVar);
            }
        }).d();
    }

    public static f d(String str, a aVar, ob.e eVar) {
        return f.a(str, aVar.a((Context) eVar.a(Context.class)));
    }
}

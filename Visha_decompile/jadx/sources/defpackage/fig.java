package defpackage;

import java.lang.ref.WeakReference;
import java.util.Map;

public final class fig implements n3f {
    public final WeakReference a;
    public final String b;
    public final n3f c;
    public final hig d;

    public fig(hig higVar, WeakReference weakReference, String str, n3f n3fVar, gig gigVar) {
        this.d = higVar;
        this.a = weakReference;
        this.b = str;
        this.c = n3fVar;
    }

    @Override
    public final void a(Object obj, Map map) {
        Object obj2 = this.a.get();
        if (obj2 == null) {
            this.d.n(this.b, this);
        } else {
            this.c.a(obj2, map);
        }
    }
}

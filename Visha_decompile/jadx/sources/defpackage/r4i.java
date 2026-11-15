package defpackage;

import java.util.Iterator;

public final class r4i extends p3i {
    public final Iterator d;
    public final w2i e;

    public r4i(Iterator it, w2i w2iVar) {
        this.d = it;
        this.e = w2iVar;
    }

    @Override
    public final Object a() {
        w2i w2iVar;
        Object next;
        do {
            Iterator it = this.d;
            if (!it.hasNext()) {
                b();
                return null;
            }
            w2iVar = this.e;
            next = it.next();
        } while (!w2iVar.zza(next));
        return next;
    }
}

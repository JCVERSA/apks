package defpackage;

import android.view.View;
import java.util.Iterator;

public final class bvh extends evh {
    public static final bvh e = new bvh();

    public static bvh i() {
        return e;
    }

    @Override
    public final void b(boolean z) {
        Iterator it = cvh.a().c().iterator();
        while (it.hasNext()) {
            ((suh) it.next()).g().k(z);
        }
    }

    @Override
    public final boolean c() {
        Iterator it = cvh.a().b().iterator();
        while (it.hasNext()) {
            View viewF = ((suh) it.next()).f();
            if (viewF != null && viewF.hasWindowFocus()) {
                return true;
            }
        }
        return false;
    }
}

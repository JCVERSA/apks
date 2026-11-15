package defpackage;

import android.view.View;
import java.util.Iterator;

public class u6d extends r9d {
    public static u6d e = new u6d();

    public static u6d k() {
        return e;
    }

    @Override
    public void f(boolean z) {
        Iterator it = i8d.e().c().iterator();
        while (it.hasNext()) {
            ((e3d) it.next()).l().k(z);
        }
    }

    @Override
    public boolean h() {
        Iterator it = i8d.e().a().iterator();
        while (it.hasNext()) {
            View viewM = ((e3d) it.next()).m();
            if (viewM != null && viewM.hasWindowFocus()) {
                return true;
            }
        }
        return false;
    }
}

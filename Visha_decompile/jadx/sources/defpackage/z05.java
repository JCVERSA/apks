package defpackage;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import org.mozilla.javascript.ES6Iterator;

public final class z05 implements ua0 {
    public final List a;
    public String b;
    public int c;

    public z05(List list) {
        y45.j(list, "filters");
        this.a = list;
        this.b = "";
    }

    @Override
    public boolean a(String str) {
        y45.j(str, ES6Iterator.VALUE_PROPERTY);
        List list = this.a;
        if ((list instanceof Collection) && list.isEmpty()) {
            return true;
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            if (!((ua0) it.next()).a(str)) {
                return false;
            }
        }
        return true;
    }

    public final String b() {
        return this.b;
    }

    public final int c() {
        return this.c;
    }

    public final void d(String str) {
        y45.j(str, "<set-?>");
        this.b = str;
    }

    public final void e(int i) {
        this.c = i;
    }
}

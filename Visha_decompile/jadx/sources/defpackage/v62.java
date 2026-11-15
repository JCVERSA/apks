package defpackage;

import java.util.Iterator;
import java.util.Set;
import org.apache.commons.io.IOUtils;

public class v62 implements ljb {
    public final String a;
    public final ni4 b;

    public v62(Set set, ni4 ni4Var) {
        this.a = d(set);
        this.b = ni4Var;
    }

    public static zb1 b() {
        return zb1.e(ljb.class).b(k82.m(ok5.class)).f(new nc1() {
            @Override
            public final Object a(ic1 ic1Var) {
                return v62.c(ic1Var);
            }
        }).d();
    }

    public static ljb c(ic1 ic1Var) {
        return new v62(ic1Var.c(ok5.class), ni4.a());
    }

    public static String d(Set set) {
        StringBuilder sb = new StringBuilder();
        Iterator it = set.iterator();
        while (it.hasNext()) {
            ok5 ok5Var = (ok5) it.next();
            sb.append(ok5Var.b());
            sb.append(IOUtils.DIR_SEPARATOR_UNIX);
            sb.append(ok5Var.c());
            if (it.hasNext()) {
                sb.append(' ');
            }
        }
        return sb.toString();
    }

    @Override
    public String getUserAgent() {
        if (this.b.b().isEmpty()) {
            return this.a;
        }
        return this.a + ' ' + d(this.b.b());
    }
}

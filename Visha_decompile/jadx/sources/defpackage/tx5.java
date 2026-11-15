package defpackage;

import java.util.Iterator;
import java.util.List;
import java.util.ServiceLoader;
import kotlin.sequences.SequencesKt___SequencesKt;

public final class tx5 {
    public static final tx5 a;
    public static final rx5 b;

    static {
        tx5 tx5Var = new tx5();
        a = tx5Var;
        naa.f("kotlinx.coroutines.fast.service.loader", true);
        b = tx5Var.a();
    }

    public final rx5 a() {
        Object next;
        rx5 rx5VarE;
        try {
            List listC0 = SequencesKt___SequencesKt.c0(zc9.g(ServiceLoader.load(sx5.class, sx5.class.getClassLoader()).iterator()));
            Iterator it = listC0.iterator();
            if (it.hasNext()) {
                next = it.next();
                if (it.hasNext()) {
                    int iA = ((sx5) next).a();
                    do {
                        Object next2 = it.next();
                        int iA2 = ((sx5) next2).a();
                        if (iA < iA2) {
                            next = next2;
                            iA = iA2;
                        }
                    } while (it.hasNext());
                }
            } else {
                next = null;
            }
            sx5 sx5Var = (sx5) next;
            if (sx5Var != null && (rx5VarE = ux5.e(sx5Var, listC0)) != null) {
                return rx5VarE;
            }
            return ux5.b(null, null, 3, null);
        } catch (Throwable th) {
            return ux5.b(th, null, 2, null);
        }
    }
}

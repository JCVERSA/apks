package defpackage;

import com.transsion.json.k;
import java.util.Iterator;
import java.util.Map;

public class sid extends w2d {
    @Override
    public void a(Object obj) {
        khd khdVarB = b();
        prd prdVarX = khdVarB.x();
        Map map = (Map) obj;
        try {
            ixd ixdVarH = b().H();
            Iterator it = map.keySet().iterator();
            while (it.hasNext()) {
                Object next = it.next();
                prdVarX.b(next != null ? next.toString() : null);
                if (khdVarB.o(next != null ? next.toString() : null, map.get(next))) {
                    mod modVarA = khdVarB.a(null, map.get(next));
                    if (!(modVarA instanceof rfd) || !((rfd) modVarA).a().booleanValue()) {
                        if (ixdVarH.e()) {
                            b().E();
                        }
                        ixdVarH.d();
                        if (next != null) {
                            b().u(next.toString());
                        } else {
                            b().u(null);
                        }
                    }
                    if (next != null) {
                        ixdVarH.b(next.toString());
                    } else {
                        ixdVarH.b(null);
                    }
                    modVarA.a(map.get(next));
                }
                prdVarX.d();
            }
            b().D();
        } catch (Exception e) {
            throw new k(String.format("%s: Error while trying to serialize.", prdVarX), e);
        }
    }
}

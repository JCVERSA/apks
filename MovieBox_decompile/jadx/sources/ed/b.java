package ed;

import com.google.firebase.components.ComponentRegistrar;
import java.util.ArrayList;
import java.util.List;
import ob.e;
import ob.h;
import ob.j;

public class b implements j {
    public static Object c(String str, ob.c cVar, e eVar) {
        try {
            c.b(str);
            return cVar.h().a(eVar);
        } finally {
            c.a();
        }
    }

    @Override
    public List a(ComponentRegistrar componentRegistrar) {
        ArrayList arrayList = new ArrayList();
        for (final ob.c cVarT : componentRegistrar.getComponents()) {
            final String strI = cVarT.i();
            if (strI != null) {
                cVarT = cVarT.t(new h() {
                    @Override
                    public final Object a(e eVar) {
                        return b.c(strI, cVarT, eVar);
                    }
                });
            }
            arrayList.add(cVarT);
        }
        return arrayList;
    }
}

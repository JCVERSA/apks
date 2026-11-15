package defpackage;

import com.google.firebase.components.ComponentRegistrar;
import java.util.ArrayList;
import java.util.List;

public class qc1 implements sc1 {
    public static Object c(String str, zb1 zb1Var, ic1 ic1Var) {
        try {
            zw3.b(str);
            return zb1Var.h().a(ic1Var);
        } finally {
            zw3.a();
        }
    }

    @Override
    public List a(ComponentRegistrar componentRegistrar) {
        ArrayList arrayList = new ArrayList();
        for (final zb1 zb1VarT : componentRegistrar.getComponents()) {
            final String strI = zb1VarT.i();
            if (strI != null) {
                zb1VarT = zb1VarT.t(new nc1() {
                    @Override
                    public final Object a(ic1 ic1Var) {
                        return qc1.c(strI, zb1VarT, ic1Var);
                    }
                });
            }
            arrayList.add(zb1VarT);
        }
        return arrayList;
    }
}

package defpackage;

import java.lang.reflect.Array;

public class o6d extends w2d {
    @Override
    public void a(Object obj) {
        ixd ixdVarG = b().G();
        int length = Array.getLength(obj);
        for (int i = 0; i < length; i++) {
            if (ixdVarG.e()) {
                b().E();
            }
            ixdVarG.d();
            b().h(Array.get(obj, i));
        }
        b().C();
    }
}

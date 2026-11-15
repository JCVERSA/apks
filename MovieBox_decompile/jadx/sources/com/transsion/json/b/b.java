package com.transsion.json.b;

import com.transsion.json.u;
import java.lang.reflect.Array;

public class b extends a {
    @Override
    public void a(Object obj) {
        u uVarG = b().G();
        int length = Array.getLength(obj);
        for (int i10 = 0; i10 < length; i10++) {
            if (uVarG.e()) {
                b().E();
            }
            uVarG.d();
            b().j(Array.get(obj, i10));
        }
        b().C();
    }
}

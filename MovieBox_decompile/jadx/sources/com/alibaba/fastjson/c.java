package com.alibaba.fastjson;

import c5.j1;
import c5.m0;
import c5.o0;
import com.alibaba.fastjson.serializer.SerializerFeature;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.List;

public class c implements m0 {

    public static String f17525c = "/**/";

    private String f17526a;

    private final List f17527b = new ArrayList();

    public c() {
    }

    @Override
    public void a(o0 o0Var, Object obj, Type type, int i10) {
        j1 j1Var = o0Var.f16619k;
        int i11 = SerializerFeature.BrowserSecure.mask;
        if ((i10 & i11) != 0 || j1Var.n(i11)) {
            j1Var.write(f17525c);
        }
        j1Var.write(this.f17526a);
        j1Var.write(40);
        for (int i12 = 0; i12 < this.f17527b.size(); i12++) {
            if (i12 != 0) {
                j1Var.write(44);
            }
            o0Var.A(this.f17527b.get(i12));
        }
        j1Var.write(41);
    }

    public void b(Object obj) {
        this.f17527b.add(obj);
    }

    public String toString() {
        return a.toJSONString(this);
    }

    public c(String str) {
        this.f17526a = str;
    }
}

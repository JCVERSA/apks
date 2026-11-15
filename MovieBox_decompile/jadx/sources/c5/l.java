package c5;

import com.alibaba.fastjson.serializer.SerializerFeature;
import java.lang.reflect.Type;

public class l implements z0 {

    private final Class f16611a;

    private final z0 f16612b;

    public l(Class cls, z0 z0Var) {
        this.f16611a = cls;
        this.f16612b = z0Var;
    }

    @Override
    public final void c(o0 o0Var, Object obj, Object obj2, Type type, int i10) {
        j1 j1Var = o0Var.f16619k;
        if (obj == null) {
            j1Var.l0(SerializerFeature.WriteNullListAsEmpty);
            return;
        }
        Object[] objArr = (Object[]) obj;
        int length = objArr.length;
        e1 e1Var = o0Var.f16626r;
        o0Var.w(e1Var, obj, obj2, 0);
        try {
            j1Var.append('[');
            for (int i11 = 0; i11 < length; i11++) {
                if (i11 != 0) {
                    j1Var.append(',');
                }
                Object obj3 = objArr[i11];
                if (obj3 == null) {
                    if (j1Var.o(SerializerFeature.WriteNullStringAsEmpty) && (obj instanceof String[])) {
                        j1Var.o0("");
                    } else {
                        j1Var.append("null");
                    }
                } else if (obj3.getClass() == this.f16611a) {
                    this.f16612b.c(o0Var, obj3, Integer.valueOf(i11), null, 0);
                } else {
                    o0Var.q(obj3.getClass()).c(o0Var, obj3, Integer.valueOf(i11), null, 0);
                }
            }
            j1Var.append(']');
        } finally {
            o0Var.f16626r = e1Var;
        }
    }
}

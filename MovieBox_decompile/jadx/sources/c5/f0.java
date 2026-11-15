package c5;

import com.alibaba.fastjson.serializer.SerializerFeature;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.Enumeration;

public class f0 implements z0 {

    public static f0 f16521a = new f0();

    @Override
    public void c(o0 o0Var, Object obj, Object obj2, Type type, int i10) {
        j1 j1Var = o0Var.f16619k;
        if (obj == null) {
            j1Var.l0(SerializerFeature.WriteNullListAsEmpty);
            return;
        }
        int i11 = 0;
        Type type2 = (j1Var.o(SerializerFeature.WriteClassName) && (type instanceof ParameterizedType)) ? ((ParameterizedType) type).getActualTypeArguments()[0] : null;
        Enumeration enumeration = (Enumeration) obj;
        e1 e1Var = o0Var.f16626r;
        o0Var.w(e1Var, obj, obj2, 0);
        try {
            j1Var.append('[');
            while (enumeration.hasMoreElements()) {
                Object objNextElement = enumeration.nextElement();
                int i12 = i11 + 1;
                if (i11 != 0) {
                    j1Var.append(',');
                }
                if (objNextElement == null) {
                    j1Var.h0();
                } else {
                    o0Var.q(objNextElement.getClass()).c(o0Var, objNextElement, Integer.valueOf(i11), type2, 0);
                }
                i11 = i12;
            }
            j1Var.append(']');
        } finally {
            o0Var.f16626r = e1Var;
        }
    }
}

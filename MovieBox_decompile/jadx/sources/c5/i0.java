package c5;

import b5.b2;
import com.google.common.collect.ArrayListMultimap;
import com.google.common.collect.j3;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.Collection;
import java.util.List;
import java.util.Map;

public class i0 implements z0, b2 {

    public static i0 f16568a = new i0();

    @Override
    public int b() {
        return 0;
    }

    @Override
    public void c(o0 o0Var, Object obj, Object obj2, Type type, int i10) {
        j1 j1Var = o0Var.f16619k;
        if (obj instanceof j3) {
            o0Var.A(((j3) obj).asMap());
        }
    }

    @Override
    public Object d(a5.a aVar, Type type, Object obj) {
        if (type instanceof ParameterizedType) {
            type = ((ParameterizedType) type).getRawType();
        }
        if (type != ArrayListMultimap.class) {
            return null;
        }
        ArrayListMultimap arrayListMultimapCreate = ArrayListMultimap.create();
        for (Map.Entry<String, Object> entry : aVar.h0().entrySet()) {
            Object value = entry.getValue();
            if (value instanceof Collection) {
                arrayListMultimapCreate.putAll(entry.getKey(), (List) value);
            } else {
                arrayListMultimapCreate.put(entry.getKey(), value);
            }
        }
        return arrayListMultimapCreate;
    }
}

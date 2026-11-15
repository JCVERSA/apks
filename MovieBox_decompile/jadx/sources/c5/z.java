package c5;

import b5.b2;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.serializer.SerializerFeature;
import com.alibaba.fastjson.util.TypeUtils;
import java.lang.reflect.Type;
import java.util.Collection;
import java.util.HashSet;
import java.util.TreeSet;

public class z implements z0, b2 {

    public static final z f16685a = new z();

    @Override
    public int b() {
        return 14;
    }

    @Override
    public void c(o0 o0Var, Object obj, Object obj2, Type type, int i10) {
        j1 j1Var = o0Var.f16619k;
        if (obj == null) {
            j1Var.l0(SerializerFeature.WriteNullListAsEmpty);
            return;
        }
        SerializerFeature serializerFeature = SerializerFeature.WriteClassName;
        Type typeV = (j1Var.o(serializerFeature) || SerializerFeature.isEnabled(i10, serializerFeature)) ? TypeUtils.V(type) : null;
        Collection collection = (Collection) obj;
        e1 e1Var = o0Var.f16626r;
        int i11 = 0;
        o0Var.w(e1Var, obj, obj2, 0);
        if (j1Var.o(serializerFeature)) {
            if (HashSet.class.isAssignableFrom(collection.getClass())) {
                j1Var.append("Set");
            } else if (TreeSet.class == collection.getClass()) {
                j1Var.append("TreeSet");
            }
        }
        try {
            j1Var.append('[');
            for (Object obj3 : collection) {
                int i12 = i11 + 1;
                if (i11 != 0) {
                    j1Var.append(',');
                }
                if (obj3 == null) {
                    j1Var.h0();
                } else {
                    Class<?> cls = obj3.getClass();
                    if (cls == Integer.class) {
                        j1Var.e0(((Integer) obj3).intValue());
                    } else if (cls == Long.class) {
                        j1Var.g0(((Long) obj3).longValue());
                        if (j1Var.o(SerializerFeature.WriteClassName)) {
                            j1Var.write(76);
                        }
                    } else {
                        z0 z0VarQ = o0Var.q(cls);
                        if (SerializerFeature.isEnabled(i10, SerializerFeature.WriteClassName) && (z0VarQ instanceof p0)) {
                            ((p0) z0VarQ).x(o0Var, obj3, Integer.valueOf(i11), typeV, i10);
                        } else {
                            z0VarQ.c(o0Var, obj3, Integer.valueOf(i11), typeV, i10);
                        }
                    }
                }
                i11 = i12;
            }
            j1Var.append(']');
        } finally {
            o0Var.f16626r = e1Var;
        }
    }

    @Override
    public Object d(a5.a aVar, Type type, Object obj) {
        Collection collectionG;
        if (aVar.f141f.t0() == 8) {
            aVar.f141f.f0(16);
            return null;
        }
        if (type == JSONArray.class) {
            JSONArray jSONArray = new JSONArray();
            aVar.d0(jSONArray);
            return jSONArray;
        }
        if (aVar.f141f.t0() == 21) {
            aVar.f141f.d0();
            collectionG = TypeUtils.H(type);
        } else {
            collectionG = TypeUtils.G(type);
        }
        aVar.X(TypeUtils.V(type), collectionG, obj);
        return collectionG;
    }
}

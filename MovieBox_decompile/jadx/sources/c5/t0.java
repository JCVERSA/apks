package c5;

import com.alibaba.fastjson.serializer.SerializerFeature;
import com.alibaba.fastjson.util.TypeUtils;
import java.lang.reflect.Type;
import java.util.List;

public final class t0 implements z0 {

    public static final t0 f16668a = new t0();

    @Override
    public final void c(o0 o0Var, Object obj, Object obj2, Type type, int i10) {
        j1 j1Var = o0Var.f16619k;
        SerializerFeature serializerFeature = SerializerFeature.WriteClassName;
        boolean z10 = j1Var.o(serializerFeature) || SerializerFeature.isEnabled(i10, serializerFeature);
        j1 j1Var2 = o0Var.f16619k;
        Type typeV = z10 ? TypeUtils.V(type) : null;
        if (obj == null) {
            j1Var2.l0(SerializerFeature.WriteNullListAsEmpty);
            return;
        }
        List list = (List) obj;
        if (list.size() == 0) {
            j1Var2.append("[]");
            return;
        }
        e1 e1Var = o0Var.f16626r;
        o0Var.w(e1Var, obj, obj2, 0);
        try {
            char c10 = ',';
            if (j1Var2.o(SerializerFeature.PrettyFormat)) {
                j1Var2.append('[');
                o0Var.s();
                int i11 = 0;
                for (Object obj3 : list) {
                    if (i11 != 0) {
                        j1Var2.append(c10);
                    }
                    o0Var.v();
                    if (obj3 == null) {
                        o0Var.f16619k.h0();
                    } else if (o0Var.k(obj3)) {
                        o0Var.D(obj3);
                    } else {
                        z0 z0VarQ = o0Var.q(obj3.getClass());
                        o0Var.f16626r = new e1(e1Var, obj, obj2, 0, 0);
                        z0VarQ.c(o0Var, obj3, Integer.valueOf(i11), typeV, i10);
                    }
                    i11++;
                    c10 = c10;
                }
                o0Var.l();
                o0Var.v();
                j1Var2.append(']');
                return;
            }
            char c11 = ',';
            j1Var2.append('[');
            int size = list.size();
            int i12 = 0;
            while (i12 < size) {
                Object obj4 = list.get(i12);
                if (i12 != 0) {
                    j1Var2.append(c11);
                }
                if (obj4 == null) {
                    j1Var2.append("null");
                } else {
                    Class<?> cls = obj4.getClass();
                    if (cls == Integer.class) {
                        j1Var2.e0(((Integer) obj4).intValue());
                    } else {
                        if (cls == Long.class) {
                            long jLongValue = ((Long) obj4).longValue();
                            if (z10) {
                                j1Var2.g0(jLongValue);
                                j1Var2.write(76);
                            } else {
                                j1Var2.g0(jLongValue);
                            }
                        } else if ((SerializerFeature.DisableCircularReferenceDetect.mask & i10) != 0) {
                            o0Var.q(obj4.getClass()).c(o0Var, obj4, Integer.valueOf(i12), typeV, i10);
                            z10 = z10;
                        } else {
                            i12 = i12;
                            if (!j1Var2.f16597h) {
                                o0Var.f16626r = new e1(e1Var, obj, obj2, 0, 0);
                            }
                            if (o0Var.k(obj4)) {
                                o0Var.D(obj4);
                            } else {
                                z0 z0VarQ2 = o0Var.q(obj4.getClass());
                                if ((SerializerFeature.WriteClassName.mask & i10) == 0 || !(z0VarQ2 instanceof p0)) {
                                    z0VarQ2.c(o0Var, obj4, Integer.valueOf(i12), typeV, i10);
                                } else {
                                    ((p0) z0VarQ2).x(o0Var, obj4, Integer.valueOf(i12), typeV, i10);
                                }
                            }
                        }
                        i12++;
                        z10 = z10;
                        c11 = ',';
                    }
                }
                z10 = z10;
                i12++;
                z10 = z10;
                c11 = ',';
            }
            j1Var2.append(']');
        } finally {
            o0Var.f16626r = e1Var;
        }
    }
}

package b5;

import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.util.TypeUtils;
import java.lang.reflect.Type;
import java.util.Optional;
import java.util.OptionalDouble;
import java.util.OptionalInt;
import java.util.OptionalLong;

public class d3 implements c5.z0, b2 {

    public static d3 f15535a = new d3();

    @Override
    public int b() {
        return 12;
    }

    @Override
    public void c(c5.o0 o0Var, Object obj, Object obj2, Type type, int i10) {
        if (obj == null) {
            o0Var.C();
            return;
        }
        if (e2.a(obj)) {
            Optional optionalA = l2.a(obj);
            o0Var.A(optionalA.isPresent() ? optionalA.get() : null);
            return;
        }
        if (p2.a(obj)) {
            OptionalDouble optionalDoubleA = q2.a(obj);
            if (optionalDoubleA.isPresent()) {
                o0Var.A(Double.valueOf(optionalDoubleA.getAsDouble()));
                return;
            } else {
                o0Var.C();
                return;
            }
        }
        if (t2.a(obj)) {
            OptionalInt optionalIntA = u2.a(obj);
            if (optionalIntA.isPresent()) {
                o0Var.f16619k.e0(optionalIntA.getAsInt());
                return;
            } else {
                o0Var.C();
                return;
            }
        }
        if (!h2.a(obj)) {
            throw new JSONException("not support optional : " + obj.getClass());
        }
        OptionalLong optionalLongA = i2.a(obj);
        if (optionalLongA.isPresent()) {
            o0Var.f16619k.g0(optionalLongA.getAsLong());
        } else {
            o0Var.C();
        }
    }

    @Override
    public Object d(a5.a aVar, Type type, Object obj) {
        if (type == c2.a()) {
            Integer numT = TypeUtils.t(aVar.j0(Integer.class));
            return numT == null ? OptionalInt.empty() : OptionalInt.of(numT.intValue());
        }
        if (type == x2.a()) {
            Long lW = TypeUtils.w(aVar.j0(Long.class));
            return lW == null ? OptionalLong.empty() : OptionalLong.of(lW.longValue());
        }
        if (type == a3.a()) {
            Double dQ = TypeUtils.q(aVar.j0(Double.class));
            return dQ == null ? OptionalDouble.empty() : OptionalDouble.of(dQ.doubleValue());
        }
        Object objL0 = aVar.l0(TypeUtils.P0(type));
        return objL0 == null ? Optional.empty() : Optional.of(objL0);
    }
}

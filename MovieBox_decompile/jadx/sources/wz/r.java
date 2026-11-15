package wz;

import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.HashMap;
import java.util.Map;
import org.mvel2.ConversionException;

public class r implements org.mvel2.a {

    private static final Short f74795a = 1;

    private static final Short f74796b = 0;

    private static wz.i f74797c = new b();

    private static final Map f74798d;

    static class a implements wz.i {
        a() {
        }

        @Override
        public Short convert(Object obj) {
            return ((Boolean) obj).booleanValue() ? r.f74795a : r.f74796b;
        }
    }

    static class b implements wz.i {
        b() {
        }

        @Override
        public Short convert(Object obj) {
            return Short.valueOf(Short.parseShort((String) obj));
        }
    }

    static class c implements wz.i {
        c() {
        }

        @Override
        public Object convert(Object obj) {
            return r.f74797c.convert(String.valueOf(obj));
        }
    }

    static class d implements wz.i {
        d() {
        }

        @Override
        public Short convert(Object obj) {
            return Short.valueOf(((BigDecimal) obj).shortValue());
        }
    }

    static class e implements wz.i {
        e() {
        }

        @Override
        public Short convert(Object obj) {
            return Short.valueOf(((BigInteger) obj).shortValue());
        }
    }

    static class g implements wz.i {
        g() {
        }

        @Override
        public Short convert(Object obj) {
            Integer num = (Integer) obj;
            if (num.intValue() <= 32767) {
                return Short.valueOf(num.shortValue());
            }
            throw new ConversionException("cannot coerce Integer to Short since the value (" + String.valueOf(obj) + ") exceeds that maximum precision of Integer.");
        }
    }

    static class h implements wz.i {
        h() {
        }

        @Override
        public Short convert(Object obj) {
            Float f10 = (Float) obj;
            if (f10.floatValue() <= 32767.0f) {
                return Short.valueOf(f10.shortValue());
            }
            throw new ConversionException("cannot coerce Float to Short since the value (" + String.valueOf(obj) + ") exceeds that maximum precision of Integer.");
        }
    }

    static class i implements wz.i {
        i() {
        }

        @Override
        public Short convert(Object obj) {
            Double d10 = (Double) obj;
            if (d10.doubleValue() <= 32767.0d) {
                return Short.valueOf(d10.shortValue());
            }
            throw new ConversionException("cannot coerce Double to Short since the value (" + String.valueOf(obj) + ") exceeds that maximum precision of Integer.");
        }
    }

    static class j implements wz.i {
        j() {
        }

        @Override
        public Short convert(Object obj) {
            Long l10 = (Long) obj;
            if (l10.longValue() <= 32767) {
                return Short.valueOf(l10.shortValue());
            }
            throw new ConversionException("cannot coerce Integer to Short since the value (" + String.valueOf(obj) + ") exceeds that maximum precision of Integer.");
        }
    }

    static {
        HashMap map = new HashMap();
        f74798d = map;
        map.put(String.class, f74797c);
        map.put(Object.class, new c());
        map.put(BigDecimal.class, new d());
        map.put(BigInteger.class, new e());
        map.put(Short.class, new f());
        map.put(Integer.class, new g());
        map.put(Float.class, new h());
        map.put(Double.class, new i());
        map.put(Long.class, new j());
        map.put(Boolean.class, new a());
    }

    @Override
    public boolean a(Class cls) {
        return f74798d.containsKey(cls);
    }

    @Override
    public Object b(Object obj) {
        Map map = f74798d;
        if (map.containsKey(obj.getClass())) {
            return ((wz.i) map.get(obj.getClass())).convert(obj);
        }
        throw new ConversionException("cannot convert type: " + obj.getClass().getName() + " to: " + Short.class.getName());
    }

    static class f implements wz.i {
        f() {
        }

        @Override
        public Object convert(Object obj) {
            return obj;
        }
    }
}

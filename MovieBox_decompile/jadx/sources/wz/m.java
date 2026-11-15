package wz;

import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.HashMap;
import java.util.Map;
import org.mvel2.ConversionException;

public class m implements org.mvel2.a {

    private static final Map f74792a;

    static class a implements wz.i {
        a() {
        }

        @Override
        public Integer convert(Object obj) {
            return ((Boolean) obj).booleanValue() ? 1 : 0;
        }
    }

    static class b implements wz.i {
        b() {
        }

        @Override
        public Integer convert(Object obj) {
            return Integer.valueOf(((Character) obj).charValue());
        }
    }

    static class c implements wz.i {
        c() {
        }

        @Override
        public Object convert(Object obj) {
            if (((String) obj).length() == 0) {
                return 0;
            }
            return Integer.valueOf(Integer.parseInt(String.valueOf(obj)));
        }
    }

    static class d implements wz.i {
        d() {
        }

        @Override
        public Integer convert(Object obj) {
            return Integer.valueOf(((BigDecimal) obj).intValue());
        }
    }

    static class e implements wz.i {
        e() {
        }

        @Override
        public Integer convert(Object obj) {
            return Integer.valueOf(((BigInteger) obj).intValue());
        }
    }

    static class f implements wz.i {
        f() {
        }

        @Override
        public Object convert(Object obj) {
            return Integer.valueOf(Integer.parseInt((String) obj));
        }
    }

    static class g implements wz.i {
        g() {
        }

        @Override
        public Object convert(Object obj) {
            return Integer.valueOf(((Short) obj).intValue());
        }
    }

    static class h implements wz.i {
        h() {
        }

        @Override
        public Object convert(Object obj) {
            Long l10 = (Long) obj;
            if (l10.longValue() <= 2147483647L) {
                return Integer.valueOf(l10.intValue());
            }
            throw new ConversionException("cannot coerce Long to Integer since the value (" + String.valueOf(obj) + ") exceeds that maximum precision of Integer.");
        }
    }

    static class i implements wz.i {
        i() {
        }

        @Override
        public Object convert(Object obj) {
            Float f10 = (Float) obj;
            if (f10.floatValue() <= 2.14748365E9f) {
                return Integer.valueOf(f10.intValue());
            }
            throw new ConversionException("cannot coerce Float to Integer since the value (" + String.valueOf(obj) + ") exceeds that maximum precision of Integer.");
        }
    }

    static class j implements wz.i {
        j() {
        }

        @Override
        public Object convert(Object obj) {
            Double d10 = (Double) obj;
            if (d10.doubleValue() <= 2.147483647E9d) {
                return Integer.valueOf(d10.intValue());
            }
            throw new ConversionException("cannot coerce Long to Integer since the value (" + String.valueOf(obj) + ") exceeds that maximum precision of Integer.");
        }
    }

    static {
        HashMap map = new HashMap(10);
        f74792a = map;
        map.put(Object.class, new c());
        map.put(BigDecimal.class, new d());
        map.put(BigInteger.class, new e());
        map.put(String.class, new f());
        map.put(Short.class, new g());
        map.put(Long.class, new h());
        map.put(Float.class, new i());
        map.put(Double.class, new j());
        map.put(Integer.class, new k());
        map.put(Boolean.class, new a());
        map.put(Character.class, new b());
    }

    @Override
    public boolean a(Class cls) {
        return f74792a.containsKey(cls);
    }

    @Override
    public Object b(Object obj) {
        Map map = f74792a;
        if (map.containsKey(obj.getClass())) {
            return ((wz.i) map.get(obj.getClass())).convert(obj);
        }
        throw new ConversionException("cannot convert type: " + obj.getClass().getName() + " to: " + Integer.class.getName());
    }

    static class k implements wz.i {
        k() {
        }

        @Override
        public Object convert(Object obj) {
            return obj;
        }
    }
}

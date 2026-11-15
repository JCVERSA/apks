package wz;

import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.HashMap;
import java.util.Map;
import org.mvel2.ConversionException;

public class j implements org.mvel2.a {

    private static final Map f74787a;

    private static wz.i f74788b;

    static class a implements wz.i {
        a() {
        }

        @Override
        public Double convert(Object obj) {
            return ((Boolean) obj).booleanValue() ? Double.valueOf(1.0d) : Double.valueOf(0.0d);
        }
    }

    static class b implements wz.i {
        b() {
        }

        @Override
        public Object convert(Object obj) {
            String str = (String) obj;
            return str.length() == 0 ? Double.valueOf(0.0d) : Double.valueOf(Double.parseDouble(str));
        }
    }

    static class c implements wz.i {
        c() {
        }

        @Override
        public Object convert(Object obj) {
            return j.f74788b.convert(String.valueOf(obj));
        }
    }

    static class d implements wz.i {
        d() {
        }

        @Override
        public Double convert(Object obj) {
            return Double.valueOf(((BigDecimal) obj).doubleValue());
        }
    }

    static class e implements wz.i {
        e() {
        }

        @Override
        public Double convert(Object obj) {
            return Double.valueOf(((BigInteger) obj).doubleValue());
        }
    }

    static class g implements wz.i {
        g() {
        }

        @Override
        public Double convert(Object obj) {
            Float f10 = (Float) obj;
            if (f10.floatValue() <= Double.MAX_VALUE) {
                return Double.valueOf(f10.doubleValue());
            }
            throw new ConversionException("cannot coerce Float to Double since the value (" + String.valueOf(obj) + ") exceeds that maximum precision of Double.");
        }
    }

    static class h implements wz.i {
        h() {
        }

        @Override
        public Double convert(Object obj) {
            return Double.valueOf(((Integer) obj).doubleValue());
        }
    }

    static class i implements wz.i {
        i() {
        }

        @Override
        public Double convert(Object obj) {
            return Double.valueOf(((Short) obj).doubleValue());
        }
    }

    static class C0936j implements wz.i {
        C0936j() {
        }

        @Override
        public Double convert(Object obj) {
            return Double.valueOf(((Long) obj).doubleValue());
        }
    }

    static {
        HashMap map = new HashMap();
        f74787a = map;
        b bVar = new b();
        f74788b = bVar;
        map.put(String.class, bVar);
        map.put(Object.class, new c());
        map.put(BigDecimal.class, new d());
        map.put(BigInteger.class, new e());
        map.put(Double.class, new f());
        map.put(Float.class, new g());
        map.put(Integer.class, new h());
        map.put(Short.class, new i());
        map.put(Long.class, new C0936j());
        map.put(Boolean.class, new a());
    }

    @Override
    public boolean a(Class cls) {
        return f74787a.containsKey(cls);
    }

    @Override
    public Object b(Object obj) {
        Map map = f74787a;
        if (map.containsKey(obj.getClass())) {
            return ((wz.i) map.get(obj.getClass())).convert(obj);
        }
        throw new ConversionException("cannot convert type: " + obj.getClass().getName() + " to: " + Integer.class.getName());
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

package wz;

import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.HashMap;
import java.util.Map;
import org.mvel2.ConversionException;

public class o implements org.mvel2.a {

    private static final Map f74793a;

    private static wz.i f74794b;

    static class a implements wz.i {
        a() {
        }

        @Override
        public Long convert(Object obj) {
            return ((Boolean) obj).booleanValue() ? 1L : 0L;
        }
    }

    static class b implements wz.i {
        b() {
        }

        @Override
        public Object convert(Object obj) {
            String str = (String) obj;
            if (str.length() == 0) {
                return 0L;
            }
            return Long.valueOf(Long.parseLong(str));
        }
    }

    static class c implements wz.i {
        c() {
        }

        @Override
        public Object convert(Object obj) {
            return o.f74794b.convert(String.valueOf(obj));
        }
    }

    static class d implements wz.i {
        d() {
        }

        @Override
        public Long convert(Object obj) {
            return Long.valueOf(((BigDecimal) obj).longValue());
        }
    }

    static class e implements wz.i {
        e() {
        }

        @Override
        public Long convert(Object obj) {
            return Long.valueOf(((BigInteger) obj).longValue());
        }
    }

    static class f implements wz.i {
        f() {
        }

        @Override
        public Object convert(Object obj) {
            return Long.valueOf(((Short) obj).longValue());
        }
    }

    static class g implements wz.i {
        g() {
        }

        @Override
        public Object convert(Object obj) {
            return new Long(((Long) obj).longValue());
        }
    }

    static class h implements wz.i {
        h() {
        }

        @Override
        public Object convert(Object obj) {
            return Long.valueOf(((Integer) obj).longValue());
        }
    }

    static class i implements wz.i {
        i() {
        }

        @Override
        public Object convert(Object obj) {
            return Long.valueOf(((Double) obj).longValue());
        }
    }

    static class j implements wz.i {
        j() {
        }

        @Override
        public Object convert(Object obj) {
            return Long.valueOf(((Float) obj).longValue());
        }
    }

    static {
        HashMap map = new HashMap();
        f74793a = map;
        b bVar = new b();
        f74794b = bVar;
        map.put(String.class, bVar);
        map.put(Object.class, new c());
        map.put(BigDecimal.class, new d());
        map.put(BigInteger.class, new e());
        map.put(Short.class, new f());
        map.put(Long.class, new g());
        map.put(Integer.class, new h());
        map.put(Double.class, new i());
        map.put(Float.class, new j());
        map.put(Boolean.class, new a());
    }

    @Override
    public boolean a(Class cls) {
        return f74793a.containsKey(cls);
    }

    @Override
    public Object b(Object obj) {
        Map map = f74793a;
        if (map.containsKey(obj.getClass())) {
            return ((wz.i) map.get(obj.getClass())).convert(obj);
        }
        throw new ConversionException("cannot convert type: " + obj.getClass().getName() + " to: " + Long.class.getName());
    }
}

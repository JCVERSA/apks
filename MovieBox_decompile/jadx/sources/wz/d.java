package wz;

import java.math.BigDecimal;
import java.util.HashMap;
import java.util.Map;
import org.mvel2.ConversionException;

public class d implements org.mvel2.a {

    private static final Map f74779a;

    private static wz.i f74780b;

    static class a implements wz.i {
        a() {
        }

        @Override
        public Boolean convert(Object obj) {
            return Boolean.valueOf(((BigDecimal) obj).doubleValue() > 0.0d);
        }
    }

    static class b implements wz.i {
        b() {
        }

        @Override
        public Object convert(Object obj) {
            String str = (String) obj;
            return Boolean.valueOf((str.equalsIgnoreCase("false") || str.equalsIgnoreCase("no") || str.equalsIgnoreCase("off") || "0".equals(obj) || "".equals(obj)) ? false : true);
        }
    }

    static class c implements wz.i {
        c() {
        }

        @Override
        public Object convert(Object obj) {
            return d.f74780b.convert(String.valueOf(obj));
        }
    }

    static class e implements wz.i {
        e() {
        }

        @Override
        public Boolean convert(Object obj) {
            return Boolean.valueOf(((Integer) obj).intValue() > 0);
        }
    }

    static class f implements wz.i {
        f() {
        }

        @Override
        public Boolean convert(Object obj) {
            return Boolean.valueOf(((Float) obj).floatValue() > 0.0f);
        }
    }

    static class g implements wz.i {
        g() {
        }

        @Override
        public Boolean convert(Object obj) {
            return Boolean.valueOf(((Double) obj).doubleValue() > 0.0d);
        }
    }

    static class h implements wz.i {
        h() {
        }

        @Override
        public Boolean convert(Object obj) {
            return Boolean.valueOf(((Short) obj).shortValue() > 0);
        }
    }

    static class i implements wz.i {
        i() {
        }

        @Override
        public Boolean convert(Object obj) {
            return Boolean.valueOf(((Long) obj).longValue() > 0);
        }
    }

    static class j implements wz.i {
        j() {
        }

        @Override
        public Boolean convert(Object obj) {
            Boolean bool = (Boolean) obj;
            bool.booleanValue();
            return bool;
        }
    }

    static {
        HashMap map = new HashMap();
        f74779a = map;
        b bVar = new b();
        f74780b = bVar;
        map.put(String.class, bVar);
        map.put(Object.class, new c());
        map.put(Boolean.class, new C0934d());
        map.put(Integer.class, new e());
        map.put(Float.class, new f());
        map.put(Double.class, new g());
        map.put(Short.class, new h());
        map.put(Long.class, new i());
        map.put(Boolean.TYPE, new j());
        map.put(BigDecimal.class, new a());
    }

    @Override
    public boolean a(Class cls) {
        return f74779a.containsKey(cls);
    }

    @Override
    public Object b(Object obj) {
        Map map = f74779a;
        if (map.containsKey(obj.getClass())) {
            return ((wz.i) map.get(obj.getClass())).convert(obj);
        }
        throw new ConversionException("cannot convert type: " + obj.getClass().getName() + " to: " + Boolean.class.getName());
    }

    static class C0934d implements wz.i {
        C0934d() {
        }

        @Override
        public Object convert(Object obj) {
            return obj;
        }
    }
}

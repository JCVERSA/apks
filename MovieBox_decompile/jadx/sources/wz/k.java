package wz;

import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.HashMap;
import java.util.Map;
import org.mvel2.ConversionException;

public class k implements org.mvel2.a {

    private static final Map f74789a;

    private static wz.i f74790b;

    static class a implements wz.i {
        a() {
        }

        @Override
        public Float convert(Object obj) {
            return ((Boolean) obj).booleanValue() ? Float.valueOf(1.0f) : Float.valueOf(0.0f);
        }
    }

    static class b implements wz.i {
        b() {
        }

        @Override
        public Object convert(Object obj) {
            String str = (String) obj;
            return str.length() == 0 ? Float.valueOf(0.0f) : Float.valueOf(Float.parseFloat(str));
        }
    }

    static class c implements wz.i {
        c() {
        }

        @Override
        public Object convert(Object obj) {
            return k.f74790b.convert(String.valueOf(obj));
        }
    }

    static class d implements wz.i {
        d() {
        }

        @Override
        public Float convert(Object obj) {
            return Float.valueOf(((BigDecimal) obj).floatValue());
        }
    }

    static class e implements wz.i {
        e() {
        }

        @Override
        public Float convert(Object obj) {
            return Float.valueOf(((BigInteger) obj).floatValue());
        }
    }

    static class g implements wz.i {
        g() {
        }

        @Override
        public Float convert(Object obj) {
            return Float.valueOf(((Integer) obj).floatValue());
        }
    }

    static class h implements wz.i {
        h() {
        }

        @Override
        public Float convert(Object obj) {
            return Float.valueOf(((Double) obj).floatValue());
        }
    }

    static class i implements wz.i {
        i() {
        }

        @Override
        public Float convert(Object obj) {
            return Float.valueOf(((Long) obj).floatValue());
        }
    }

    static class j implements wz.i {
        j() {
        }

        @Override
        public Float convert(Object obj) {
            return Float.valueOf(((Short) obj).floatValue());
        }
    }

    static {
        HashMap map = new HashMap();
        f74789a = map;
        b bVar = new b();
        f74790b = bVar;
        map.put(String.class, bVar);
        map.put(Object.class, new c());
        map.put(BigDecimal.class, new d());
        map.put(BigInteger.class, new e());
        map.put(Float.class, new f());
        map.put(Integer.class, new g());
        map.put(Double.class, new h());
        map.put(Long.class, new i());
        map.put(Short.class, new j());
        map.put(Boolean.class, new a());
    }

    @Override
    public boolean a(Class cls) {
        return f74789a.containsKey(cls);
    }

    @Override
    public Object b(Object obj) {
        Map map = f74789a;
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

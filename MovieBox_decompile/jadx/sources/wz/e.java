package wz;

import java.util.HashMap;
import java.util.Map;
import org.mvel2.ConversionException;

public class e implements org.mvel2.a {

    private static final Map f74781a;

    private static i f74782b;

    static class a implements i {
        a() {
        }

        @Override
        public Object convert(Object obj) {
            return Byte.valueOf(Byte.parseByte((String) obj));
        }
    }

    static class b implements i {
        b() {
        }

        @Override
        public Object convert(Object obj) {
            return e.f74782b.convert(String.valueOf(obj));
        }
    }

    static class c implements i {
        c() {
        }

        @Override
        public Object convert(Object obj) {
            return new Byte(((Byte) obj).byteValue());
        }
    }

    static class d implements i {
        d() {
        }

        @Override
        public Object convert(Object obj) {
            return Byte.valueOf(((Integer) obj).byteValue());
        }
    }

    static class C0935e implements i {
        C0935e() {
        }

        @Override
        public Object convert(Object obj) {
            return Byte.valueOf(((Long) obj).byteValue());
        }
    }

    static class f implements i {
        f() {
        }

        @Override
        public Object convert(Object obj) {
            return Byte.valueOf(((Double) obj).byteValue());
        }
    }

    static class g implements i {
        g() {
        }

        @Override
        public Object convert(Object obj) {
            return Byte.valueOf(((Float) obj).byteValue());
        }
    }

    static class h implements i {
        h() {
        }

        @Override
        public Object convert(Object obj) {
            return Byte.valueOf(((Short) obj).byteValue());
        }
    }

    static {
        HashMap map = new HashMap();
        f74781a = map;
        a aVar = new a();
        f74782b = aVar;
        map.put(String.class, aVar);
        map.put(Object.class, new b());
        map.put(Byte.class, new c());
        map.put(Integer.class, new d());
        map.put(Long.class, new C0935e());
        map.put(Double.class, new f());
        map.put(Float.class, new g());
        map.put(Short.class, new h());
    }

    @Override
    public boolean a(Class cls) {
        return f74781a.containsKey(cls);
    }

    @Override
    public Object b(Object obj) {
        Map map = f74781a;
        if (map.containsKey(obj.getClass())) {
            return ((i) map.get(obj.getClass())).convert(obj);
        }
        throw new ConversionException("cannot convert type: " + obj.getClass().getName() + " to: " + Integer.class.getName());
    }
}

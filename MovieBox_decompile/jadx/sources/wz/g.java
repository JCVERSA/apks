package wz;

import java.math.BigDecimal;
import java.util.HashMap;
import java.util.Map;
import org.mvel2.ConversionException;

public class g implements org.mvel2.a {

    private static final Map f74784a;

    private static final i f74785b;

    static class a implements i {
        a() {
        }

        @Override
        public Object convert(Object obj) {
            String str = (String) obj;
            if (str.length() <= 1) {
                return Character.valueOf(str.charAt(0));
            }
            throw new ConversionException("cannot convert a string with a length greater than 1 to java.lang.Character");
        }
    }

    static class b implements i {
        b() {
        }

        @Override
        public Object convert(Object obj) {
            return g.f74785b.convert(String.valueOf(obj));
        }
    }

    static class c implements i {
        c() {
        }

        @Override
        public Object convert(Object obj) {
            return new Character(((Character) obj).charValue());
        }
    }

    static class d implements i {
        d() {
        }

        @Override
        public Object convert(Object obj) {
            return Character.valueOf((char) ((BigDecimal) obj).intValue());
        }
    }

    static class e implements i {
        e() {
        }

        @Override
        public Object convert(Object obj) {
            return Character.valueOf((char) ((Integer) obj).intValue());
        }
    }

    static {
        HashMap map = new HashMap();
        f74784a = map;
        a aVar = new a();
        f74785b = aVar;
        map.put(String.class, aVar);
        map.put(Object.class, new b());
        map.put(Character.class, new c());
        map.put(BigDecimal.class, new d());
        map.put(Integer.class, new e());
    }

    @Override
    public boolean a(Class cls) {
        return f74784a.containsKey(cls);
    }

    @Override
    public Object b(Object obj) {
        Map map = f74784a;
        if (map.containsKey(obj.getClass())) {
            return ((i) map.get(obj.getClass())).convert(obj);
        }
        throw new ConversionException("cannot convert type: " + obj.getClass().getName() + " to: " + Integer.class.getName());
    }
}

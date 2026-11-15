package wz;

import java.util.HashMap;
import java.util.Map;
import org.mvel2.ConversionException;

public class f implements org.mvel2.a {

    private static final Map f74783a;

    static class a implements i {
        a() {
        }

        @Override
        public Object convert(Object obj) {
            return ((String) obj).toCharArray();
        }
    }

    static {
        HashMap map = new HashMap();
        f74783a = map;
        map.put(String.class, new a());
    }

    @Override
    public boolean a(Class cls) {
        return f74783a.containsKey(cls);
    }

    @Override
    public Object b(Object obj) {
        Map map = f74783a;
        if (map.containsKey(obj.getClass())) {
            return ((i) map.get(obj.getClass())).convert(obj);
        }
        throw new ConversionException("cannot convert type: " + obj.getClass().getName() + " to: " + Boolean.class.getName());
    }
}

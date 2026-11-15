package wz;

import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.HashMap;
import java.util.Map;
import org.mvel2.ConversionException;

public class c implements org.mvel2.a {

    private static final Map f74778a;

    static class a implements wz.i {
        a() {
        }

        @Override
        public BigInteger convert(Object obj) {
            return new BigInteger(String.valueOf(obj));
        }
    }

    static class b implements wz.i {
        b() {
        }

        @Override
        public BigInteger convert(Object obj) {
            return (BigInteger) obj;
        }
    }

    static class C0933c implements wz.i {
        C0933c() {
        }

        @Override
        public BigInteger convert(Object obj) {
            return ((BigDecimal) obj).toBigInteger();
        }
    }

    static class d implements wz.i {
        d() {
        }

        @Override
        public BigInteger convert(Object obj) {
            return new BigInteger((String) obj);
        }
    }

    static class e implements wz.i {
        e() {
        }

        @Override
        public BigInteger convert(Object obj) {
            return new BigInteger(String.valueOf(obj));
        }
    }

    static class f implements wz.i {
        f() {
        }

        @Override
        public BigInteger convert(Object obj) {
            return new BigInteger(String.valueOf(obj));
        }
    }

    static class g implements wz.i {
        g() {
        }

        @Override
        public BigInteger convert(Object obj) {
            return new BigInteger(String.valueOf(obj));
        }
    }

    static class h implements wz.i {
        h() {
        }

        @Override
        public BigInteger convert(Object obj) {
            return new BigInteger((String) obj);
        }
    }

    static class i implements wz.i {
        i() {
        }

        @Override
        public BigInteger convert(Object obj) {
            return new BigInteger(new String((char[]) obj));
        }
    }

    static {
        HashMap map = new HashMap();
        f74778a = map;
        map.put(Object.class, new a());
        map.put(BigInteger.class, new b());
        map.put(BigDecimal.class, new C0933c());
        map.put(String.class, new d());
        map.put(Short.class, new e());
        map.put(Long.class, new f());
        map.put(Integer.class, new g());
        map.put(String.class, new h());
        map.put(char[].class, new i());
    }

    @Override
    public boolean a(Class cls) {
        return f74778a.containsKey(cls);
    }

    @Override
    public Object b(Object obj) {
        Map map = f74778a;
        if (map.containsKey(obj.getClass())) {
            return ((wz.i) map.get(obj.getClass())).convert(obj);
        }
        throw new ConversionException("cannot convert type: " + obj.getClass().getName() + " to: " + Integer.class.getName());
    }
}

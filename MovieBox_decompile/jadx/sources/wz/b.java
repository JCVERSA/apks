package wz;

import java.math.BigDecimal;
import java.math.BigInteger;
import java.math.MathContext;
import java.util.HashMap;
import java.util.Map;
import org.mvel2.ConversionException;

public class b implements org.mvel2.a {

    private static final Map f74777a;

    static class a implements wz.i {
        a() {
        }

        @Override
        public BigDecimal convert(Object obj) {
            return new BigDecimal((String) obj, MathContext.DECIMAL128);
        }
    }

    static class C0932b implements wz.i {
        C0932b() {
        }

        @Override
        public BigDecimal convert(Object obj) {
            return new BigDecimal((char[]) obj, MathContext.DECIMAL128);
        }
    }

    static class c implements wz.i {
        c() {
        }

        @Override
        public BigDecimal convert(Object obj) {
            return new BigDecimal(String.valueOf(obj), MathContext.DECIMAL128);
        }
    }

    static class d implements wz.i {
        d() {
        }

        @Override
        public BigDecimal convert(Object obj) {
            return (BigDecimal) obj;
        }
    }

    static class e implements wz.i {
        e() {
        }

        @Override
        public BigDecimal convert(Object obj) {
            return new BigDecimal(((BigInteger) obj).doubleValue(), MathContext.DECIMAL128);
        }
    }

    static class f implements wz.i {
        f() {
        }

        @Override
        public BigDecimal convert(Object obj) {
            return new BigDecimal((String) obj, MathContext.DECIMAL128);
        }
    }

    static class g implements wz.i {
        g() {
        }

        @Override
        public BigDecimal convert(Object obj) {
            return new BigDecimal(((Double) obj).doubleValue(), MathContext.DECIMAL128);
        }
    }

    static class h implements wz.i {
        h() {
        }

        @Override
        public BigDecimal convert(Object obj) {
            return new BigDecimal(((Float) obj).doubleValue(), MathContext.DECIMAL128);
        }
    }

    static class i implements wz.i {
        i() {
        }

        @Override
        public BigDecimal convert(Object obj) {
            return new BigDecimal(((Short) obj).doubleValue(), MathContext.DECIMAL128);
        }
    }

    static class j implements wz.i {
        j() {
        }

        @Override
        public BigDecimal convert(Object obj) {
            return new BigDecimal(((Long) obj).doubleValue(), MathContext.DECIMAL128);
        }
    }

    static class k implements wz.i {
        k() {
        }

        @Override
        public BigDecimal convert(Object obj) {
            return new BigDecimal(((Integer) obj).doubleValue(), MathContext.DECIMAL128);
        }
    }

    static {
        HashMap map = new HashMap();
        f74777a = map;
        map.put(Object.class, new c());
        map.put(BigDecimal.class, new d());
        map.put(BigInteger.class, new e());
        map.put(String.class, new f());
        map.put(Double.class, new g());
        map.put(Float.class, new h());
        map.put(Short.class, new i());
        map.put(Long.class, new j());
        map.put(Integer.class, new k());
        map.put(String.class, new a());
        map.put(char[].class, new C0932b());
    }

    @Override
    public boolean a(Class cls) {
        return f74777a.containsKey(cls);
    }

    @Override
    public Object b(Object obj) {
        Map map = f74777a;
        if (map.containsKey(obj.getClass())) {
            return ((wz.i) map.get(obj.getClass())).convert(obj);
        }
        throw new ConversionException("cannot convert type: " + obj.getClass().getName() + " to: " + Integer.class.getName());
    }
}

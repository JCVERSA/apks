package wz;

import java.util.HashMap;
import java.util.Map;
import org.mvel2.ConversionException;

public class l implements org.mvel2.a {

    private static final Map f74791a;

    static class a implements i {
        a() {
        }

        @Override
        public Object convert(Object obj) {
            String[] strArr = (String[]) obj;
            Integer[] numArr = new Integer[strArr.length];
            for (int i10 = 0; i10 < strArr.length; i10++) {
                numArr[i10] = Integer.valueOf(Integer.parseInt(strArr[i10]));
            }
            return numArr;
        }
    }

    static class b implements i {
        b() {
        }

        @Override
        public Object convert(Object obj) {
            Object[] objArr = (Object[]) obj;
            Integer[] numArr = new Integer[objArr.length];
            for (int i10 = 0; i10 < objArr.length; i10++) {
                numArr[i10] = Integer.valueOf(Integer.parseInt(String.valueOf(objArr[i10])));
            }
            return numArr;
        }
    }

    static {
        HashMap map = new HashMap();
        f74791a = map;
        map.put(String[].class, new a());
        map.put(Object[].class, new b());
    }

    @Override
    public boolean a(Class cls) {
        return f74791a.containsKey(cls);
    }

    @Override
    public Object b(Object obj) {
        Map map = f74791a;
        if (map.containsKey(obj.getClass())) {
            return ((i) map.get(obj.getClass())).convert(obj);
        }
        throw new ConversionException("cannot convert type: " + obj.getClass().getName() + " to: " + Boolean.class.getName());
    }
}

package wz;

import java.util.HashMap;
import java.util.Map;

public class s implements org.mvel2.a {

    private static final Map f74799a;

    static class a implements i {
        a() {
        }

        @Override
        public Object convert(Object obj) {
            Object[] objArr = (Object[]) obj;
            String[] strArr = new String[objArr.length];
            for (int i10 = 0; i10 < objArr.length; i10++) {
                strArr[i10] = String.valueOf(objArr[i10]);
            }
            return strArr;
        }
    }

    static {
        HashMap map = new HashMap();
        f74799a = map;
        map.put(Object[].class, new a());
    }

    @Override
    public boolean a(Class cls) {
        return f74799a.containsKey(cls);
    }

    @Override
    public Object b(Object obj) {
        if (!obj.getClass().isArray()) {
            return new String[]{String.valueOf(obj)};
        }
        Object[] objArr = (Object[]) obj;
        String[] strArr = new String[objArr.length];
        for (int i10 = 0; i10 < objArr.length; i10++) {
            strArr[i10] = String.valueOf(objArr[i10]);
        }
        return strArr;
    }
}

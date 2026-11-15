package defpackage;

import java.lang.reflect.Type;

public class hkd implements tpd {
    @Override
    public Object a(yod yodVar, Object obj, Type type, Class cls) {
        if (obj instanceof Number) {
            return Integer.valueOf(((Number) obj).intValue());
        }
        try {
            return Integer.valueOf(Integer.parseInt(obj.toString()));
        } catch (Exception unused) {
            throw yodVar.q(obj, Integer.class);
        }
    }
}

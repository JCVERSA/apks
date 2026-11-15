package defpackage;

import java.lang.reflect.Type;

public class knd implements tpd {
    @Override
    public Object a(yod yodVar, Object obj, Type type, Class cls) {
        if (obj instanceof Number) {
            return Long.valueOf(((Number) obj).longValue());
        }
        try {
            return Long.valueOf(Long.parseLong(obj.toString()));
        } catch (Exception unused) {
            throw yodVar.q(obj, Long.class);
        }
    }
}

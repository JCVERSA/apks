package defpackage;

import java.lang.reflect.Type;

public class rid implements tpd {
    @Override
    public Object a(yod yodVar, Object obj, Type type, Class cls) {
        if (obj instanceof Number) {
            return Float.valueOf(((Number) obj).floatValue());
        }
        try {
            return Float.valueOf(Float.parseFloat(obj.toString()));
        } catch (Exception unused) {
            throw yodVar.q(obj, Float.class);
        }
    }
}

package defpackage;

import java.lang.reflect.Type;

public class qfd implements tpd {
    @Override
    public Object a(yod yodVar, Object obj, Type type, Class cls) {
        if (obj instanceof Number) {
            return Double.valueOf(((Number) obj).doubleValue());
        }
        try {
            return Double.valueOf(Double.parseDouble(obj.toString()));
        } catch (Exception unused) {
            throw yodVar.q(obj, Double.class);
        }
    }
}

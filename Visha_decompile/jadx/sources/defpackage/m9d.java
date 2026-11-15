package defpackage;

import java.lang.reflect.Type;

public class m9d implements tpd {
    @Override
    public Object a(yod yodVar, Object obj, Type type, Class cls) {
        if (obj instanceof Number) {
            return Byte.valueOf(((Number) obj).byteValue());
        }
        throw yodVar.q(obj, Byte.class);
    }
}

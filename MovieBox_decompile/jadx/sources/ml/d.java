package ml;

import java.lang.reflect.Type;

public class d implements com.transsion.json.o {
    @Override
    public Object a(com.transsion.json.m mVar, Object obj, Type type, Class cls) {
        if (obj instanceof Number) {
            return Byte.valueOf(((Number) obj).byteValue());
        }
        throw mVar.q(obj, Byte.class);
    }
}

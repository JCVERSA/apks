package ml;

import java.lang.reflect.Type;

public class f implements com.transsion.json.o {
    @Override
    public Object a(com.transsion.json.m mVar, Object obj, Type type, Class cls) {
        if (obj instanceof Number) {
            return Double.valueOf(((Number) obj).doubleValue());
        }
        try {
            return Double.valueOf(Double.parseDouble(obj.toString()));
        } catch (Exception unused) {
            throw mVar.q(obj, Double.class);
        }
    }
}

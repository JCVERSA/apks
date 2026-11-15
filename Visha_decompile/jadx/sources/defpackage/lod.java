package defpackage;

import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.HashMap;
import java.util.Map;

public class lod implements tpd {
    @Override
    public Object a(yod yodVar, Object obj, Type type, Class cls) {
        if (type == null || !(type instanceof ParameterizedType)) {
            return yodVar.h((Map) obj, b(), null, null);
        }
        ParameterizedType parameterizedType = (ParameterizedType) type;
        Type type2 = parameterizedType.getActualTypeArguments()[0];
        Type type3 = parameterizedType.getActualTypeArguments()[1];
        Map map = (Map) obj;
        HashMap mapB = b();
        if (type2 == Object.class) {
            type2 = null;
        }
        return yodVar.h(map, mapB, type2, type3 != Object.class ? type3 : null);
    }

    public HashMap b() {
        return new HashMap();
    }
}

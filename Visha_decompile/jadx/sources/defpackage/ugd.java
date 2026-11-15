package defpackage;

import com.transsion.json.k;
import java.lang.reflect.Type;

public class ugd implements tpd {
    @Override
    public Object a(yod yodVar, Object obj, Type type, Class cls) {
        if (obj instanceof String) {
            return Enum.valueOf((Class) type, obj.toString());
        }
        throw new k(String.format("%s:  Don't know how to convert %s to enumerated constant of %s", yodVar.o(), obj, type));
    }
}

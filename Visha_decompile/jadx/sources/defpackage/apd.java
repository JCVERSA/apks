package defpackage;

import java.lang.reflect.Type;
import java.util.Collection;
import java.util.HashSet;

public class apd implements tpd {
    @Override
    public Object a(yod yodVar, Object obj, Type type, Class cls) {
        if (obj instanceof Collection) {
            return yodVar.k((Collection) obj, new HashSet(), type);
        }
        HashSet hashSet = new HashSet();
        hashSet.add(yodVar.e(obj));
        return hashSet;
    }
}

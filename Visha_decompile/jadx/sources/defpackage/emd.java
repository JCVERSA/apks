package defpackage;

import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Collection;

public class emd implements tpd {
    @Override
    public Object a(yod yodVar, Object obj, Type type, Class cls) {
        if (obj instanceof Collection) {
            return yodVar.k((Collection) obj, new ArrayList(), type);
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(yodVar.e(obj));
        return arrayList;
    }
}

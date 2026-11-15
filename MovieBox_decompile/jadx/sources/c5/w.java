package c5;

import b5.b2;
import com.alibaba.fastjson.JSONException;
import java.lang.reflect.Type;
import java.util.Collection;
import java.util.Iterator;

public class w implements b2 {
    public static Object a(a5.a aVar) {
        a5.b bVar = aVar.f141f;
        if (bVar.t0() == 4) {
            String strO0 = bVar.o0();
            bVar.f0(16);
            return strO0.toCharArray();
        }
        if (bVar.t0() == 2) {
            Number numberR0 = bVar.r0();
            bVar.f0(16);
            return numberR0.toString().toCharArray();
        }
        Object objX = aVar.x();
        if (objX instanceof String) {
            return ((String) objX).toCharArray();
        }
        if (!(objX instanceof Collection)) {
            if (objX == null) {
                return null;
            }
            return com.alibaba.fastjson.a.toJSONString(objX).toCharArray();
        }
        Collection collection = (Collection) objX;
        for (Object obj : collection) {
            if ((obj instanceof String) && ((String) obj).length() != 1) {
                throw new JSONException("can not cast to char[]");
            }
        }
        char[] cArr = new char[collection.size()];
        Iterator it = collection.iterator();
        int i10 = 0;
        while (it.hasNext()) {
            cArr[i10] = ((String) it.next()).charAt(0);
            i10++;
        }
        return cArr;
    }

    @Override
    public int b() {
        return 4;
    }

    @Override
    public Object d(a5.a aVar, Type type, Object obj) {
        return a(aVar);
    }
}

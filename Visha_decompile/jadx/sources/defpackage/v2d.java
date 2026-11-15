package defpackage;

import com.transsion.json.k;
import java.lang.reflect.Array;
import java.lang.reflect.Type;
import java.util.List;

public class v2d implements tpd {
    @Override
    public Object a(yod yodVar, Object obj, Type type, Class cls) {
        List list = (List) obj;
        yodVar.o().b("values");
        try {
            try {
                Class<?> componentType = cls.getComponentType() != null ? cls.getComponentType() : yodVar.d(yodVar.o());
                if (componentType == null) {
                    throw new k("Missing concrete class for array.  You might require a use() method.");
                }
                Object objNewInstance = Array.newInstance(componentType, list.size());
                for (int i = 0; i < list.size(); i++) {
                    Array.set(objNewInstance, i, yodVar.f(list.get(i), componentType));
                }
                yodVar.o().d();
                return objNewInstance;
            } catch (ClassNotFoundException e) {
                throw new k(String.format("%s: Could not find class %s", yodVar.o(), e.getMessage()), e);
            }
        } catch (Throwable th) {
            yodVar.o().d();
            throw th;
        }
    }
}

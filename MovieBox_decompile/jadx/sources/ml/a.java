package ml;

import java.lang.reflect.Array;
import java.lang.reflect.Type;
import java.util.List;

public class a implements com.transsion.json.o {
    @Override
    public Object a(com.transsion.json.m mVar, Object obj, Type type, Class cls) {
        List list = (List) obj;
        mVar.d().a("values");
        try {
            try {
                Class<?> componentType = cls.getComponentType() != null ? cls.getComponentType() : mVar.e(mVar.d());
                if (componentType == null) {
                    throw new com.transsion.json.k("Missing concrete class for array.  You might require a use() method.");
                }
                Object objNewInstance = Array.newInstance(componentType, list.size());
                for (int i10 = 0; i10 < list.size(); i10++) {
                    Array.set(objNewInstance, i10, mVar.j(list.get(i10), componentType));
                }
                mVar.d().d();
                return objNewInstance;
            } catch (ClassNotFoundException e10) {
                throw new com.transsion.json.k(String.format("%s: Could not find class %s", mVar.d(), e10.getMessage()), e10);
            }
        } catch (Throwable th2) {
            mVar.d().d();
            throw th2;
        }
    }
}

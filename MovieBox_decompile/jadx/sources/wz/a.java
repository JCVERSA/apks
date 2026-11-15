package wz;

import java.lang.reflect.Array;
import java.util.Collection;
import java.util.Iterator;

public class a implements org.mvel2.a {

    private final Class f74776a;

    public a(Class cls) {
        this.f74776a = cls;
    }

    private static Object c(Class cls, Object obj, Class cls2) {
        Class<?> componentType = cls2.getComponentType();
        int i10 = 0;
        if (Collection.class.isAssignableFrom(cls)) {
            Collection collection = (Collection) obj;
            Object objNewInstance = Array.newInstance(componentType, collection.size());
            Iterator it = collection.iterator();
            while (it.hasNext()) {
                Array.set(objNewInstance, i10, org.mvel2.b.b(it.next(), componentType));
                i10++;
            }
            return objNewInstance;
        }
        if (!obj.getClass().isArray()) {
            Object objNewInstance2 = Array.newInstance(componentType, 1);
            Array.set(objNewInstance2, 0, obj);
            return objNewInstance2;
        }
        int length = Array.getLength(obj);
        Object objNewInstance3 = Array.newInstance(componentType, length);
        while (i10 < length) {
            Array.set(objNewInstance3, i10, org.mvel2.b.b(Array.get(obj, i10), componentType));
            i10++;
        }
        return objNewInstance3;
    }

    @Override
    public boolean a(Class cls) {
        return cls.isArray() || Collection.class.isAssignableFrom(cls);
    }

    @Override
    public Object b(Object obj) {
        return c(obj.getClass(), obj, this.f74776a);
    }
}

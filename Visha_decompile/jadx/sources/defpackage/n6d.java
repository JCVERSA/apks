package defpackage;

import com.transsion.json.k;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Type;
import java.util.Map;

public class n6d implements tpd {
    @Override
    public Object a(yod yodVar, Object obj, Type type, Class cls) {
        try {
            return yodVar.g((Map) obj, b(cls), type);
        } catch (IllegalAccessException e) {
            throw new k(yodVar.o() + ":There was an exception trying to instantiate an instance of " + cls.getName(), e);
        } catch (InstantiationException e2) {
            throw new k(yodVar.o() + ":There was an exception trying to instantiate an instance of " + cls.getName(), e2);
        } catch (NoSuchMethodException e3) {
            throw new k(yodVar.o() + ": " + cls.getName() + " lacks a no argument constructor.  com.zero.json will instantiate any protected, private, or public no-arg constructor.", e3);
        } catch (InvocationTargetException e4) {
            throw new k(yodVar.o() + ":There was an exception trying to instantiate an instance of " + cls.getName(), e4);
        }
    }

    public Object b(Class cls) throws NoSuchMethodException {
        Constructor declaredConstructor = cls.getDeclaredConstructor(null);
        declaredConstructor.setAccessible(true);
        return declaredConstructor.newInstance(null);
    }
}

package q1;

import androidx.p009lifecycle.t0;
import java.lang.reflect.InvocationTargetException;
import kotlin.jvm.internal.Intrinsics;

public final class d {

    public static final d f69324a = new d();

    private d() {
    }

    public final t0 a(Class modelClass) throws InvocationTargetException {
        Intrinsics.h(modelClass, "modelClass");
        try {
            Object objNewInstance = modelClass.getDeclaredConstructor(null).newInstance(null);
            Intrinsics.g(objNewInstance, "{\n            modelClass…).newInstance()\n        }");
            return (t0) objNewInstance;
        } catch (IllegalAccessException e10) {
            throw new RuntimeException("Cannot create an instance of " + modelClass, e10);
        } catch (InstantiationException e11) {
            throw new RuntimeException("Cannot create an instance of " + modelClass, e11);
        } catch (NoSuchMethodException e12) {
            throw new RuntimeException("Cannot create an instance of " + modelClass, e12);
        }
    }
}

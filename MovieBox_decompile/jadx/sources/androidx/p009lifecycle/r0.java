package androidx.p009lifecycle;

import android.app.Application;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.Arrays;
import java.util.List;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

public abstract class r0 {

    private static final List f9334a = CollectionsKt.o(Application.class, l0.class);

    private static final List f9335b = CollectionsKt.e(l0.class);

    public static final Constructor c(Class modelClass, List signature) {
        Intrinsics.h(modelClass, "modelClass");
        Intrinsics.h(signature, "signature");
        Constructor<?>[] constructors = modelClass.getConstructors();
        Intrinsics.g(constructors, "modelClass.constructors");
        for (Constructor<?> constructor : constructors) {
            Class<?>[] parameterTypes = constructor.getParameterTypes();
            Intrinsics.g(parameterTypes, "constructor.parameterTypes");
            List listG0 = ArraysKt.G0(parameterTypes);
            if (Intrinsics.c(signature, listG0)) {
                Intrinsics.f(constructor, "null cannot be cast to non-null type java.lang.reflect.Constructor<T of androidx.lifecycle.SavedStateViewModelFactoryKt.findMatchingConstructor>");
                return constructor;
            }
            if (signature.size() == listG0.size() && listG0.containsAll(signature)) {
                throw new UnsupportedOperationException("Class " + modelClass.getSimpleName() + " must have parameters in the proper order: " + signature);
            }
        }
        return null;
    }

    public static final t0 d(Class modelClass, Constructor constructor, Object... params) {
        Intrinsics.h(modelClass, "modelClass");
        Intrinsics.h(constructor, "constructor");
        Intrinsics.h(params, "params");
        try {
            return (t0) constructor.newInstance(Arrays.copyOf(params, params.length));
        } catch (IllegalAccessException e10) {
            throw new RuntimeException("Failed to access " + modelClass, e10);
        } catch (InstantiationException e11) {
            throw new RuntimeException("A " + modelClass + " cannot be instantiated.", e11);
        } catch (InvocationTargetException e12) {
            throw new RuntimeException("An exception happened in constructor of " + modelClass, e12.getCause());
        }
    }
}

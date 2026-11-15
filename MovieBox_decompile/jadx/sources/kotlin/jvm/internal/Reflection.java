package kotlin.jvm.internal;

import java.util.Arrays;
import java.util.Collections;
import kotlin.reflect.KClass;
import kotlin.reflect.KDeclarationContainer;
import kotlin.reflect.KFunction;
import kotlin.reflect.KMutableProperty0;
import kotlin.reflect.KMutableProperty1;
import kotlin.reflect.KMutableProperty2;
import kotlin.reflect.KProperty0;
import kotlin.reflect.KProperty1;
import kotlin.reflect.KProperty2;
import kotlin.reflect.KType;
import kotlin.reflect.KTypeProjection;

public class Reflection {

    private static final ReflectionFactory f64321a;

    private static final KClass[] f64322b;

    static {
        ReflectionFactory reflectionFactory = null;
        try {
            reflectionFactory = (ReflectionFactory) Class.forName("kotlin.reflect.jvm.internal.ReflectionFactoryImpl").newInstance();
        } catch (ClassCastException | ClassNotFoundException | IllegalAccessException | InstantiationException unused) {
        }
        if (reflectionFactory == null) {
            reflectionFactory = new ReflectionFactory();
        }
        f64321a = reflectionFactory;
        f64322b = new KClass[0];
    }

    public static KFunction a(FunctionReference functionReference) {
        return f64321a.a(functionReference);
    }

    public static KClass b(Class cls) {
        return f64321a.b(cls);
    }

    public static KDeclarationContainer c(Class cls) {
        return f64321a.c(cls, "");
    }

    public static KType d(KType kType) {
        return f64321a.d(kType);
    }

    public static KMutableProperty0 e(MutablePropertyReference0 mutablePropertyReference0) {
        return f64321a.e(mutablePropertyReference0);
    }

    public static KMutableProperty1 f(MutablePropertyReference1 mutablePropertyReference1) {
        return f64321a.f(mutablePropertyReference1);
    }

    public static KMutableProperty2 g(MutablePropertyReference2 mutablePropertyReference2) {
        return f64321a.g(mutablePropertyReference2);
    }

    public static KProperty0 h(PropertyReference0 propertyReference0) {
        return f64321a.h(propertyReference0);
    }

    public static KProperty1 i(PropertyReference1 propertyReference1) {
        return f64321a.i(propertyReference1);
    }

    public static KProperty2 j(PropertyReference2 propertyReference2) {
        return f64321a.j(propertyReference2);
    }

    public static String k(FunctionBase functionBase) {
        return f64321a.k(functionBase);
    }

    public static String l(Lambda lambda) {
        return f64321a.l(lambda);
    }

    public static KType m(Class cls) {
        return f64321a.m(b(cls), Collections.emptyList(), false);
    }

    public static KType n(Class cls, KTypeProjection kTypeProjection) {
        return f64321a.m(b(cls), Collections.singletonList(kTypeProjection), false);
    }

    public static KType o(Class cls, KTypeProjection kTypeProjection, KTypeProjection kTypeProjection2) {
        return f64321a.m(b(cls), Arrays.asList(kTypeProjection, kTypeProjection2), false);
    }
}

package defpackage;

import java.lang.annotation.Annotation;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import kotlin.reflect.jvm.internal.impl.builtins.PrimitiveType;
import kotlin.reflect.jvm.internal.impl.builtins.e;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectClassUtilKt;
import kotlin.reflect.jvm.internal.impl.load.kotlin.c;
import kotlin.reflect.jvm.internal.impl.resolve.jvm.JvmPrimitiveType;

public final class op8 {
    public static final op8 a = new op8();

    public final zw0 a(Class cls) {
        int i = 0;
        while (cls.isArray()) {
            i++;
            cls = cls.getComponentType();
            y45.i(cls, "currentClass.componentType");
        }
        if (!cls.isPrimitive()) {
            xw0 xw0VarA = ReflectClassUtilKt.a(cls);
            m85 m85Var = m85.a;
            o54 o54VarB = xw0VarA.b();
            y45.i(o54VarB, "javaClassId.asSingleFqName()");
            xw0 xw0VarM = m85Var.m(o54VarB);
            if (xw0VarM != null) {
                xw0VarA = xw0VarM;
            }
            return new zw0(xw0VarA, i);
        }
        if (y45.e(cls, Void.TYPE)) {
            xw0 xw0VarM2 = xw0.m(e.a.f.l());
            y45.i(xw0VarM2, "topLevel(StandardNames.FqNames.unit.toSafe())");
            return new zw0(xw0VarM2, i);
        }
        PrimitiveType primitiveType = JvmPrimitiveType.get(cls.getName()).getPrimitiveType();
        y45.i(primitiveType, "get(currentClass.name).primitiveType");
        if (i > 0) {
            xw0 xw0VarM3 = xw0.m(primitiveType.getArrayTypeFqName());
            y45.i(xw0VarM3, "topLevel(primitiveType.arrayTypeFqName)");
            return new zw0(xw0VarM3, i - 1);
        }
        xw0 xw0VarM4 = xw0.m(primitiveType.getTypeFqName());
        y45.i(xw0VarM4, "topLevel(primitiveType.typeFqName)");
        return new zw0(xw0VarM4, i);
    }

    public final void b(Class cls, c.InterfaceC0394c interfaceC0394c) throws InvocationTargetException {
        y45.j(cls, "klass");
        y45.j(interfaceC0394c, "visitor");
        Annotation[] declaredAnnotations = cls.getDeclaredAnnotations();
        y45.i(declaredAnnotations, "klass.declaredAnnotations");
        for (Annotation annotation : declaredAnnotations) {
            y45.i(annotation, "annotation");
            f(interfaceC0394c, annotation);
        }
        interfaceC0394c.visitEnd();
    }

    public final void c(Class cls, c.d dVar) throws InvocationTargetException {
        Constructor<?>[] constructorArr;
        int i;
        Constructor<?>[] declaredConstructors = cls.getDeclaredConstructors();
        y45.i(declaredConstructors, "klass.declaredConstructors");
        int length = declaredConstructors.length;
        int i2 = 0;
        while (i2 < length) {
            Constructor<?> constructor = declaredConstructors[i2];
            by6 by6Var = su9.j;
            bj9 bj9Var = bj9.a;
            y45.i(constructor, "constructor");
            c.e eVarA = dVar.a(by6Var, bj9Var.a(constructor));
            if (eVarA == null) {
                constructorArr = declaredConstructors;
                i = length;
            } else {
                Annotation[] declaredAnnotations = constructor.getDeclaredAnnotations();
                y45.i(declaredAnnotations, "constructor.declaredAnnotations");
                for (Annotation annotation : declaredAnnotations) {
                    y45.i(annotation, "annotation");
                    f(eVarA, annotation);
                }
                Annotation[][] parameterAnnotations = constructor.getParameterAnnotations();
                y45.i(parameterAnnotations, "parameterAnnotations");
                if (!(parameterAnnotations.length == 0)) {
                    int length2 = constructor.getParameterTypes().length - parameterAnnotations.length;
                    int length3 = parameterAnnotations.length;
                    for (int i3 = 0; i3 < length3; i3++) {
                        Annotation[] annotationArr = parameterAnnotations[i3];
                        y45.i(annotationArr, "annotations");
                        int length4 = annotationArr.length;
                        int i4 = 0;
                        while (i4 < length4) {
                            Annotation annotation2 = annotationArr[i4];
                            Class clsB = ed5.b(ed5.a(annotation2));
                            Constructor<?>[] constructorArr2 = declaredConstructors;
                            int i5 = length;
                            xw0 xw0VarA = ReflectClassUtilKt.a(clsB);
                            int i6 = length2;
                            y45.i(annotation2, "annotation");
                            c.a aVarB = eVarA.b(i3 + length2, xw0VarA, new np8(annotation2));
                            if (aVarB != null) {
                                a.h(aVarB, annotation2, clsB);
                            }
                            i4++;
                            declaredConstructors = constructorArr2;
                            length = i5;
                            length2 = i6;
                        }
                    }
                }
                constructorArr = declaredConstructors;
                i = length;
                eVarA.visitEnd();
            }
            i2++;
            declaredConstructors = constructorArr;
            length = i;
        }
    }

    public final void d(Class cls, c.d dVar) throws InvocationTargetException {
        Field[] declaredFields = cls.getDeclaredFields();
        y45.i(declaredFields, "klass.declaredFields");
        for (Field field : declaredFields) {
            by6 by6VarG = by6.g(field.getName());
            y45.i(by6VarG, "identifier(field.name)");
            bj9 bj9Var = bj9.a;
            y45.i(field, "field");
            c.InterfaceC0394c interfaceC0394cB = dVar.b(by6VarG, bj9Var.b(field), null);
            if (interfaceC0394cB != null) {
                Annotation[] declaredAnnotations = field.getDeclaredAnnotations();
                y45.i(declaredAnnotations, "field.declaredAnnotations");
                for (Annotation annotation : declaredAnnotations) {
                    y45.i(annotation, "annotation");
                    f(interfaceC0394cB, annotation);
                }
                interfaceC0394cB.visitEnd();
            }
        }
    }

    public final void e(Class cls, c.d dVar) throws InvocationTargetException {
        Method[] methodArr;
        Method[] declaredMethods = cls.getDeclaredMethods();
        y45.i(declaredMethods, "klass.declaredMethods");
        int length = declaredMethods.length;
        int i = 0;
        while (i < length) {
            Method method = declaredMethods[i];
            by6 by6VarG = by6.g(method.getName());
            y45.i(by6VarG, "identifier(method.name)");
            bj9 bj9Var = bj9.a;
            y45.i(method, "method");
            c.e eVarA = dVar.a(by6VarG, bj9Var.c(method));
            if (eVarA == null) {
                methodArr = declaredMethods;
            } else {
                Annotation[] declaredAnnotations = method.getDeclaredAnnotations();
                y45.i(declaredAnnotations, "method.declaredAnnotations");
                for (Annotation annotation : declaredAnnotations) {
                    y45.i(annotation, "annotation");
                    f(eVarA, annotation);
                }
                Annotation[][] parameterAnnotations = method.getParameterAnnotations();
                y45.i(parameterAnnotations, "method.parameterAnnotations");
                Annotation[][] annotationArr = parameterAnnotations;
                int length2 = annotationArr.length;
                for (int i2 = 0; i2 < length2; i2++) {
                    Annotation[] annotationArr2 = annotationArr[i2];
                    y45.i(annotationArr2, "annotations");
                    int length3 = annotationArr2.length;
                    int i3 = 0;
                    while (i3 < length3) {
                        Annotation annotation2 = annotationArr2[i3];
                        Class clsB = ed5.b(ed5.a(annotation2));
                        xw0 xw0VarA = ReflectClassUtilKt.a(clsB);
                        Method[] methodArr2 = declaredMethods;
                        y45.i(annotation2, "annotation");
                        c.a aVarB = eVarA.b(i2, xw0VarA, new np8(annotation2));
                        if (aVarB != null) {
                            a.h(aVarB, annotation2, clsB);
                        }
                        i3++;
                        declaredMethods = methodArr2;
                    }
                }
                methodArr = declaredMethods;
                eVarA.visitEnd();
            }
            i++;
            declaredMethods = methodArr;
        }
    }

    public final void f(c.InterfaceC0394c interfaceC0394c, Annotation annotation) throws InvocationTargetException {
        Class clsB = ed5.b(ed5.a(annotation));
        c.a aVarA = interfaceC0394c.a(ReflectClassUtilKt.a(clsB), new np8(annotation));
        if (aVarA != null) {
            a.h(aVarA, annotation, clsB);
        }
    }

    public final void g(c.a aVar, by6 by6Var, Object obj) throws InvocationTargetException {
        Class<?> enclosingClass = obj.getClass();
        if (y45.e(enclosingClass, Class.class)) {
            y45.h(obj, "null cannot be cast to non-null type java.lang.Class<*>");
            aVar.d(by6Var, a((Class) obj));
            return;
        }
        if (tq8.a.contains(enclosingClass)) {
            aVar.c(by6Var, obj);
            return;
        }
        if (ReflectClassUtilKt.h(enclosingClass)) {
            if (!enclosingClass.isEnum()) {
                enclosingClass = enclosingClass.getEnclosingClass();
            }
            y45.i(enclosingClass, "if (clazz.isEnum) clazz else clazz.enclosingClass");
            xw0 xw0VarA = ReflectClassUtilKt.a(enclosingClass);
            y45.h(obj, "null cannot be cast to non-null type kotlin.Enum<*>");
            by6 by6VarG = by6.g(((Enum) obj).name());
            y45.i(by6VarG, "identifier((value as Enum<*>).name)");
            aVar.a(by6Var, xw0VarA, by6VarG);
            return;
        }
        if (Annotation.class.isAssignableFrom(enclosingClass)) {
            Class<?>[] interfaces = enclosingClass.getInterfaces();
            y45.i(interfaces, "clazz.interfaces");
            Class cls = (Class) hi.F0(interfaces);
            y45.i(cls, "annotationClass");
            c.a aVarB = aVar.b(by6Var, ReflectClassUtilKt.a(cls));
            if (aVarB == null) {
                return;
            }
            y45.h(obj, "null cannot be cast to non-null type kotlin.Annotation");
            h(aVarB, (Annotation) obj, cls);
            return;
        }
        if (!enclosingClass.isArray()) {
            throw new UnsupportedOperationException("Unsupported annotation argument value (" + enclosingClass + "): " + obj);
        }
        c.b bVarE = aVar.e(by6Var);
        if (bVarE == null) {
            return;
        }
        Class<?> componentType = enclosingClass.getComponentType();
        int i = 0;
        if (componentType.isEnum()) {
            y45.i(componentType, "componentType");
            xw0 xw0VarA2 = ReflectClassUtilKt.a(componentType);
            y45.h(obj, "null cannot be cast to non-null type kotlin.Array<*>");
            Object[] objArr = (Object[]) obj;
            int length = objArr.length;
            while (i < length) {
                Object obj2 = objArr[i];
                y45.h(obj2, "null cannot be cast to non-null type kotlin.Enum<*>");
                by6 by6VarG2 = by6.g(((Enum) obj2).name());
                y45.i(by6VarG2, "identifier((element as Enum<*>).name)");
                bVarE.d(xw0VarA2, by6VarG2);
                i++;
            }
        } else if (y45.e(componentType, Class.class)) {
            y45.h(obj, "null cannot be cast to non-null type kotlin.Array<*>");
            Object[] objArr2 = (Object[]) obj;
            int length2 = objArr2.length;
            while (i < length2) {
                Object obj3 = objArr2[i];
                y45.h(obj3, "null cannot be cast to non-null type java.lang.Class<*>");
                bVarE.c(a((Class) obj3));
                i++;
            }
        } else if (Annotation.class.isAssignableFrom(componentType)) {
            y45.h(obj, "null cannot be cast to non-null type kotlin.Array<*>");
            Object[] objArr3 = (Object[]) obj;
            int length3 = objArr3.length;
            while (i < length3) {
                Object obj4 = objArr3[i];
                y45.i(componentType, "componentType");
                c.a aVarA = bVarE.a(ReflectClassUtilKt.a(componentType));
                if (aVarA != null) {
                    y45.h(obj4, "null cannot be cast to non-null type kotlin.Annotation");
                    h(aVarA, (Annotation) obj4, componentType);
                }
                i++;
            }
        } else {
            y45.h(obj, "null cannot be cast to non-null type kotlin.Array<*>");
            Object[] objArr4 = (Object[]) obj;
            int length4 = objArr4.length;
            while (i < length4) {
                bVarE.b(objArr4[i]);
                i++;
            }
        }
        bVarE.visitEnd();
    }

    public final void h(c.a aVar, Annotation annotation, Class cls) throws InvocationTargetException {
        Method[] declaredMethods = cls.getDeclaredMethods();
        y45.i(declaredMethods, "annotationType.declaredMethods");
        for (Method method : declaredMethods) {
            try {
                Object objInvoke = method.invoke(annotation, null);
                y45.g(objInvoke);
                by6 by6VarG = by6.g(method.getName());
                y45.i(by6VarG, "identifier(method.name)");
                g(aVar, by6VarG, objInvoke);
            } catch (IllegalAccessException unused) {
            }
        }
        aVar.visitEnd();
    }

    public final void i(Class cls, c.d dVar) throws InvocationTargetException {
        y45.j(cls, "klass");
        y45.j(dVar, "memberVisitor");
        e(cls, dVar);
        c(cls, dVar);
        d(cls, dVar);
    }
}

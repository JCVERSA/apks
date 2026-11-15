package com.google.common.reflect;

import defpackage.xd8;
import java.lang.annotation.Annotation;
import java.lang.reflect.AccessibleObject;
import java.lang.reflect.AnnotatedElement;
import java.lang.reflect.Constructor;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.lang.reflect.Type;
import java.util.Arrays;

public abstract class a implements AnnotatedElement, Member {
    public static final boolean c = b();
    public final AccessibleObject a;
    public final Member b;

    public static class C0107a extends a {
        public final Constructor d;

        public C0107a(Constructor constructor) {
            super(constructor);
            this.d = constructor;
        }

        public Type[] c() {
            Type[] genericParameterTypes = this.d.getGenericParameterTypes();
            if (genericParameterTypes.length > 0 && d()) {
                Class<?>[] parameterTypes = this.d.getParameterTypes();
                if (genericParameterTypes.length == parameterTypes.length && parameterTypes[0] == getDeclaringClass().getEnclosingClass()) {
                    return (Type[]) Arrays.copyOfRange(genericParameterTypes, 1, genericParameterTypes.length);
                }
            }
            return genericParameterTypes;
        }

        public final boolean d() {
            Class declaringClass = this.d.getDeclaringClass();
            if (declaringClass.getEnclosingConstructor() != null) {
                return true;
            }
            Method enclosingMethod = declaringClass.getEnclosingMethod();
            if (enclosingMethod != null) {
                return !Modifier.isStatic(enclosingMethod.getModifiers());
            }
            return (declaringClass.getEnclosingClass() == null || Modifier.isStatic(declaringClass.getModifiers())) ? false : true;
        }
    }

    public static class b extends a {
        public final Method d;

        public b(Method method) {
            super(method);
            this.d = method;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public a(AccessibleObject accessibleObject) {
        xd8.o(accessibleObject);
        this.a = accessibleObject;
        this.b = (Member) accessibleObject;
    }

    public static boolean b() {
        try {
            Class.forName("java.lang.reflect.AnnotatedType");
            return true;
        } catch (ClassNotFoundException unused) {
            return false;
        }
    }

    public abstract TypeToken a();

    public boolean equals(Object obj) {
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return a().equals(aVar.a()) && this.b.equals(aVar.b);
    }

    @Override
    public final Annotation getAnnotation(Class cls) {
        return this.a.getAnnotation(cls);
    }

    @Override
    public final Annotation[] getAnnotations() {
        return this.a.getAnnotations();
    }

    @Override
    public final Annotation[] getDeclaredAnnotations() {
        return this.a.getDeclaredAnnotations();
    }

    @Override
    public final Class getDeclaringClass() {
        return this.b.getDeclaringClass();
    }

    @Override
    public final int getModifiers() {
        return this.b.getModifiers();
    }

    @Override
    public final String getName() {
        return this.b.getName();
    }

    public int hashCode() {
        return this.b.hashCode();
    }

    @Override
    public final boolean isAnnotationPresent(Class cls) {
        return this.a.isAnnotationPresent(cls);
    }

    @Override
    public final boolean isSynthetic() {
        return this.b.isSynthetic();
    }

    public String toString() {
        return this.b.toString();
    }
}

package com.google.common.reflect;

import com.google.common.base.m;
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

    private static final boolean f30125c = b();

    private final AccessibleObject f30126a;

    private final Member f30127b;

    static class C0390a extends a {

        final Constructor f30128d;

        C0390a(Constructor constructor) {
            super(constructor);
            this.f30128d = constructor;
        }

        private boolean d() {
            Class declaringClass = this.f30128d.getDeclaringClass();
            if (declaringClass.getEnclosingConstructor() != null) {
                return true;
            }
            Method enclosingMethod = declaringClass.getEnclosingMethod();
            if (enclosingMethod != null) {
                return !Modifier.isStatic(enclosingMethod.getModifiers());
            }
            return (declaringClass.getEnclosingClass() == null || Modifier.isStatic(declaringClass.getModifiers())) ? false : true;
        }

        Type[] c() {
            Type[] genericParameterTypes = this.f30128d.getGenericParameterTypes();
            if (genericParameterTypes.length <= 0 || !d()) {
                return genericParameterTypes;
            }
            Class<?>[] parameterTypes = this.f30128d.getParameterTypes();
            return (genericParameterTypes.length == parameterTypes.length && parameterTypes[0] == getDeclaringClass().getEnclosingClass()) ? (Type[]) Arrays.copyOfRange(genericParameterTypes, 1, genericParameterTypes.length) : genericParameterTypes;
        }
    }

    static class b extends a {

        final Method f30129d;

        b(Method method) {
            super(method);
            this.f30129d = method;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    a(AccessibleObject accessibleObject) {
        m.o(accessibleObject);
        this.f30126a = accessibleObject;
        this.f30127b = (Member) accessibleObject;
    }

    private static boolean b() {
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
        return a().equals(aVar.a()) && this.f30127b.equals(aVar.f30127b);
    }

    @Override
    public final Annotation getAnnotation(Class cls) {
        return this.f30126a.getAnnotation(cls);
    }

    @Override
    public final Annotation[] getAnnotations() {
        return this.f30126a.getAnnotations();
    }

    @Override
    public final Annotation[] getDeclaredAnnotations() {
        return this.f30126a.getDeclaredAnnotations();
    }

    @Override
    public final Class getDeclaringClass() {
        return this.f30127b.getDeclaringClass();
    }

    @Override
    public final int getModifiers() {
        return this.f30127b.getModifiers();
    }

    @Override
    public final String getName() {
        return this.f30127b.getName();
    }

    public int hashCode() {
        return this.f30127b.hashCode();
    }

    @Override
    public final boolean isAnnotationPresent(Class cls) {
        return this.f30126a.isAnnotationPresent(cls);
    }

    @Override
    public final boolean isSynthetic() {
        return this.f30127b.isSynthetic();
    }

    public String toString() {
        return this.f30127b.toString();
    }
}

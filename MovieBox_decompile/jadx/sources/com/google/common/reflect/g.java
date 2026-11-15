package com.google.common.reflect;

import com.google.common.collect.Sets;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
import java.util.Set;

abstract class g {

    private final Set f30143a = Sets.f();

    g() {
    }

    public final void a(Type... typeArr) {
        for (Type type : typeArr) {
            if (type != null && this.f30143a.add(type)) {
                try {
                    if (type instanceof TypeVariable) {
                        e((TypeVariable) type);
                    } else if (type instanceof WildcardType) {
                        f((WildcardType) type);
                    } else if (type instanceof ParameterizedType) {
                        d((ParameterizedType) type);
                    } else if (type instanceof Class) {
                        b((Class) type);
                    } else {
                        if (!(type instanceof GenericArrayType)) {
                            throw new AssertionError("Unknown type: " + type);
                        }
                        c((GenericArrayType) type);
                    }
                } catch (Throwable th2) {
                    this.f30143a.remove(type);
                    throw th2;
                }
            }
        }
    }

    void b(Class cls) {
    }

    void c(GenericArrayType genericArrayType) {
    }

    void d(ParameterizedType parameterizedType) {
    }

    abstract void e(TypeVariable typeVariable);

    abstract void f(WildcardType wildcardType);
}

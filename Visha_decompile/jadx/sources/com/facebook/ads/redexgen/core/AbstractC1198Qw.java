package com.facebook.ads.redexgen.core;

import java.lang.reflect.Proxy;

public abstract class AbstractC1198Qw {
    public static <T> T A00(T impl, Class<T> clazz) {
        ClassLoader classLoader = impl.getClass().getClassLoader();
        return clazz.cast(Proxy.newProxyInstance(classLoader, new Class[]{clazz}, new C1197Qv(impl, classLoader)));
    }
}

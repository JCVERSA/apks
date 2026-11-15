package com.facebook.ads.redexgen.core;

import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;

public class C1196Qu implements InvocationHandler {
    public final ClassLoader A00;

    public C1196Qu(ClassLoader classLoader) {
        this.A00 = classLoader;
    }

    @Override
    public final Object invoke(Object obj, Method method, Object[] objArr) {
        return C1197Qv.A00(this.A00, method);
    }
}

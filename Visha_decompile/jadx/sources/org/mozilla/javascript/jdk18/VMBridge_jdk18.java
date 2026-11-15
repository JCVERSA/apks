package org.mozilla.javascript.jdk18;

import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import org.mozilla.javascript.Context;
import org.mozilla.javascript.ContextFactory;
import org.mozilla.javascript.InterfaceAdapter;
import org.mozilla.javascript.Scriptable;
import org.mozilla.javascript.VMBridge;

public class VMBridge_jdk18 extends VMBridge {
    private static final ThreadLocal<Object[]> contextLocal = new ThreadLocal<>();

    public class a implements InvocationHandler {
        public final Object b;
        public final InterfaceAdapter c;
        public final ContextFactory d;
        public final Scriptable e;

        public a(Object obj, InterfaceAdapter interfaceAdapter, ContextFactory contextFactory, Scriptable scriptable) {
            this.b = obj;
            this.c = interfaceAdapter;
            this.d = contextFactory;
            this.e = scriptable;
        }

        @Override
        public Object invoke(Object obj, Method method, Object[] objArr) {
            if (method.getDeclaringClass() == Object.class) {
                String name = method.getName();
                if (name.equals("equals")) {
                    return Boolean.valueOf(obj == objArr[0]);
                }
                if (name.equals("hashCode")) {
                    return Integer.valueOf(this.b.hashCode());
                }
                if (name.equals("toString")) {
                    return "Proxy[" + this.b.toString() + "]";
                }
            }
            return this.c.invoke(this.d, this.b, this.e, obj, method, objArr);
        }
    }

    @Override
    public Context getContext(Object obj) {
        return (Context) ((Object[]) obj)[0];
    }

    @Override
    public Object getInterfaceProxyHelper(ContextFactory contextFactory, Class<?>[] clsArr) {
        try {
            return Proxy.getProxyClass(clsArr[0].getClassLoader(), clsArr).getConstructor(InvocationHandler.class);
        } catch (NoSuchMethodException e) {
            throw new IllegalStateException(e);
        }
    }

    @Override
    public Object getThreadContextHelper() {
        ThreadLocal<Object[]> threadLocal = contextLocal;
        Object[] objArr = threadLocal.get();
        if (objArr != null) {
            return objArr;
        }
        Object[] objArr2 = new Object[1];
        threadLocal.set(objArr2);
        return objArr2;
    }

    @Override
    public Object newInterfaceProxy(Object obj, ContextFactory contextFactory, InterfaceAdapter interfaceAdapter, Object obj2, Scriptable scriptable) {
        try {
            return ((Constructor) obj).newInstance(new a(obj2, interfaceAdapter, contextFactory, scriptable));
        } catch (IllegalAccessException e) {
            throw new IllegalStateException(e);
        } catch (InstantiationException e2) {
            throw new IllegalStateException(e2);
        } catch (InvocationTargetException e3) {
            throw Context.throwAsScriptRuntimeEx(e3);
        }
    }

    @Override
    public void setContext(Object obj, Context context) {
        ((Object[]) obj)[0] = context;
    }

    @Override
    public boolean tryToMakeAccessible(AccessibleObject accessibleObject) {
        if (accessibleObject.isAccessible()) {
            return true;
        }
        try {
            accessibleObject.setAccessible(true);
        } catch (Exception unused) {
        }
        return accessibleObject.isAccessible();
    }
}

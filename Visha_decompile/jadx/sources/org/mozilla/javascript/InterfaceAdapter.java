package org.mozilla.javascript;

import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import org.mozilla.javascript.Context;

public class InterfaceAdapter {
    private final Object proxyHelper;

    private InterfaceAdapter(ContextFactory contextFactory, Class<?> cls) {
        this.proxyHelper = VMBridge.instance.getInterfaceProxyHelper(contextFactory, new Class[]{cls});
    }

    public static Object create(Context context, Class<?> cls, ScriptableObject scriptableObject) {
        InterfaceAdapter interfaceAdapter;
        if (!cls.isInterface()) {
            throw new IllegalArgumentException();
        }
        Scriptable topCallScope = ScriptRuntime.getTopCallScope(context);
        ClassCache classCache = ClassCache.get(topCallScope);
        InterfaceAdapter interfaceAdapter2 = (InterfaceAdapter) classCache.getInterfaceAdapter(cls);
        ContextFactory factory = context.getFactory();
        if (interfaceAdapter2 == null) {
            Method[] methods = cls.getMethods();
            if (scriptableObject instanceof Callable) {
                int length = methods.length;
                if (length == 0) {
                    throw Context.reportRuntimeError1("msg.no.empty.interface.conversion", cls.getName());
                }
                if (length > 1) {
                    String name = null;
                    for (Method method : methods) {
                        if (isFunctionalMethodCandidate(method)) {
                            if (name == null) {
                                name = method.getName();
                            } else if (!name.equals(method.getName())) {
                                throw Context.reportRuntimeError1("msg.no.function.interface.conversion", cls.getName());
                            }
                        }
                    }
                }
            }
            InterfaceAdapter interfaceAdapter3 = new InterfaceAdapter(factory, cls);
            classCache.cacheInterfaceAdapter(cls, interfaceAdapter3);
            interfaceAdapter = interfaceAdapter3;
        } else {
            interfaceAdapter = interfaceAdapter2;
        }
        return VMBridge.instance.newInterfaceProxy(interfaceAdapter.proxyHelper, factory, interfaceAdapter, scriptableObject, topCallScope);
    }

    private static boolean isFunctionalMethodCandidate(Method method) {
        if (method.getName().equals("equals") || method.getName().equals("hashCode") || method.getName().equals("toString")) {
            return false;
        }
        return Modifier.isAbstract(method.getModifiers());
    }

    public Object invoke(ContextFactory contextFactory, final Object obj, final Scriptable scriptable, final Object obj2, final Method method, final Object[] objArr) {
        return contextFactory.call(new ContextAction() {
            @Override
            public final Object run(Context context) {
                return this.b.lambda$invoke$0(obj, scriptable, obj2, method, objArr, context);
            }
        });
    }

    public Object lambda$invoke$0(Context context, Object obj, Scriptable scriptable, Object obj2, Method method, Object[] objArr) {
        Callable callable;
        if (obj instanceof Callable) {
            callable = (Callable) obj;
        } else {
            String name = method.getName();
            Object property = ScriptableObject.getProperty((Scriptable) obj, name);
            if (property == Scriptable.NOT_FOUND) {
                Context.reportWarning(ScriptRuntime.getMessage1("msg.undefined.function.interface", name));
                Class<?> returnType = method.getReturnType();
                if (returnType == Void.TYPE) {
                    return null;
                }
                return Context.jsToJava(null, returnType);
            }
            if (!(property instanceof Callable)) {
                throw Context.reportRuntimeError1("msg.not.function.interface", name);
            }
            callable = (Callable) property;
        }
        WrapFactory wrapFactory = context.getWrapFactory();
        if (objArr == null) {
            objArr = ScriptRuntime.emptyArgs;
        } else {
            int length = objArr.length;
            for (int i = 0; i != length; i++) {
                Object obj3 = objArr[i];
                if (!(obj3 instanceof String) && !(obj3 instanceof Number) && !(obj3 instanceof Boolean)) {
                    objArr[i] = wrapFactory.wrap(context, scriptable, obj3, null);
                }
            }
        }
        Object objCall = callable.call(context, scriptable, wrapFactory.wrapAsJavaObject(context, scriptable, obj2, null), objArr);
        Class<?> returnType2 = method.getReturnType();
        if (returnType2 == Void.TYPE) {
            return null;
        }
        return Context.jsToJava(objCall, returnType2);
    }
}

package androidx.p009lifecycle;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

final class c {

    static c f9266c = new c();

    private final Map f9267a = new HashMap();

    private final Map f9268b = new HashMap();

    static class a {

        final Map f9269a = new HashMap();

        final Map f9270b;

        a(Map map) {
            this.f9270b = map;
            for (Map.Entry entry : map.entrySet()) {
                Lifecycle.Event event = (Lifecycle.Event) entry.getValue();
                List arrayList = (List) this.f9269a.get(event);
                if (arrayList == null) {
                    arrayList = new ArrayList();
                    this.f9269a.put(event, arrayList);
                }
                arrayList.add((b) entry.getKey());
            }
        }

        private static void b(List list, u uVar, Lifecycle.Event event, Object obj) {
            if (list != null) {
                for (int size = list.size() - 1; size >= 0; size--) {
                    ((b) list.get(size)).a(uVar, event, obj);
                }
            }
        }

        void a(u uVar, Lifecycle.Event event, Object obj) {
            b((List) this.f9269a.get(event), uVar, event, obj);
            b((List) this.f9269a.get(Lifecycle.Event.ON_ANY), uVar, event, obj);
        }
    }

    static final class b {

        final int f9271a;

        final Method f9272b;

        b(int i10, Method method) {
            this.f9271a = i10;
            this.f9272b = method;
            method.setAccessible(true);
        }

        void a(u uVar, Lifecycle.Event event, Object obj) {
            try {
                int i10 = this.f9271a;
                if (i10 == 0) {
                    this.f9272b.invoke(obj, null);
                } else if (i10 == 1) {
                    this.f9272b.invoke(obj, uVar);
                } else {
                    if (i10 != 2) {
                        return;
                    }
                    this.f9272b.invoke(obj, uVar, event);
                }
            } catch (IllegalAccessException e10) {
                throw new RuntimeException(e10);
            } catch (InvocationTargetException e11) {
                throw new RuntimeException("Failed to call observer method", e11.getCause());
            }
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            return this.f9271a == bVar.f9271a && this.f9272b.getName().equals(bVar.f9272b.getName());
        }

        public int hashCode() {
            return (this.f9271a * 31) + this.f9272b.getName().hashCode();
        }
    }

    c() {
    }

    private a a(Class cls, Method[] methodArr) {
        int i10;
        a aVarC;
        Class superclass = cls.getSuperclass();
        HashMap map = new HashMap();
        if (superclass != null && (aVarC = c(superclass)) != null) {
            map.putAll(aVarC.f9270b);
        }
        for (Class<?> cls2 : cls.getInterfaces()) {
            for (Map.Entry entry : c(cls2).f9270b.entrySet()) {
                e(map, (b) entry.getKey(), (Lifecycle.Event) entry.getValue(), cls);
            }
        }
        if (methodArr == null) {
            methodArr = b(cls);
        }
        boolean z10 = false;
        for (Method method : methodArr) {
            d0 d0Var = (d0) method.getAnnotation(d0.class);
            if (d0Var != null) {
                Class<?>[] parameterTypes = method.getParameterTypes();
                if (parameterTypes.length <= 0) {
                    i10 = 0;
                } else {
                    if (!u.class.isAssignableFrom(parameterTypes[0])) {
                        throw new IllegalArgumentException("invalid parameter type. Must be one and instanceof LifecycleOwner");
                    }
                    i10 = 1;
                }
                Lifecycle.Event eventValue = d0Var.value();
                if (parameterTypes.length > 1) {
                    if (!Lifecycle.Event.class.isAssignableFrom(parameterTypes[1])) {
                        throw new IllegalArgumentException("invalid parameter type. second arg must be an event");
                    }
                    if (eventValue != Lifecycle.Event.ON_ANY) {
                        throw new IllegalArgumentException("Second arg is supported only for ON_ANY value");
                    }
                    i10 = 2;
                }
                if (parameterTypes.length > 2) {
                    throw new IllegalArgumentException("cannot have more than 2 params");
                }
                e(map, new b(i10, method), eventValue, cls);
                z10 = true;
            }
        }
        a aVar = new a(map);
        this.f9267a.put(cls, aVar);
        this.f9268b.put(cls, Boolean.valueOf(z10));
        return aVar;
    }

    private Method[] b(Class cls) {
        try {
            return cls.getDeclaredMethods();
        } catch (NoClassDefFoundError e10) {
            throw new IllegalArgumentException("The observer class has some methods that use newer APIs which are not available in the current OS version. Lifecycles cannot access even other methods so you should make sure that your observer classes only access framework classes that are available in your min API level OR use lifecycle:compiler annotation processor.", e10);
        }
    }

    private void e(Map map, b bVar, Lifecycle.Event event, Class cls) {
        Lifecycle.Event event2 = (Lifecycle.Event) map.get(bVar);
        if (event2 == null || event == event2) {
            if (event2 == null) {
                map.put(bVar, event);
                return;
            }
            return;
        }
        throw new IllegalArgumentException("Method " + bVar.f9272b.getName() + " in " + cls.getName() + " already declared with different @OnLifecycleEvent value: previous value " + event2 + ", new value " + event);
    }

    a c(Class cls) {
        a aVar = (a) this.f9267a.get(cls);
        return aVar != null ? aVar : a(cls, null);
    }

    boolean d(Class cls) {
        Boolean bool = (Boolean) this.f9268b.get(cls);
        if (bool != null) {
            return bool.booleanValue();
        }
        Method[] methodArrB = b(cls);
        for (Method method : methodArrB) {
            if (((d0) method.getAnnotation(d0.class)) != null) {
                a(cls, methodArrB);
                return true;
            }
        }
        this.f9268b.put(cls, Boolean.FALSE);
        return false;
    }
}

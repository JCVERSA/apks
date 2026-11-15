package com.google.common.util.concurrent;

import com.google.common.collect.Ordering;
import com.google.common.util.concurrent.FuturesGetChecked;
import defpackage.o74;
import defpackage.xd8;
import java.lang.ref.WeakReference;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

public abstract class FuturesGetChecked {
    public static final Ordering a;
    public static final Ordering b;

    public static class GetCheckedTypeValidatorHolder {
        public static final a a = a();

        public enum WeakSetValidator implements a {
            INSTANCE;

            public static final Set b = new CopyOnWriteArraySet();

            @Override
            public void validateClass(Class<? extends Exception> cls) {
                Iterator it = b.iterator();
                while (it.hasNext()) {
                    if (cls.equals(((WeakReference) it.next()).get())) {
                        return;
                    }
                }
                FuturesGetChecked.e(cls);
                Set set = b;
                if (set.size() > 1000) {
                    set.clear();
                }
                set.add(new WeakReference(cls));
            }
        }

        public static a a() {
            return FuturesGetChecked.o();
        }
    }

    public interface a {
        void validateClass(Class cls);
    }

    static {
        Ordering orderingReverse = Ordering.natural().onResultOf(new o74() {
            @Override
            public final Object apply(Object obj) {
                return FuturesGetChecked.i((List) obj);
            }
        }).compound(Ordering.natural().onResultOf(new o74() {
            @Override
            public final Object apply(Object obj) {
                return FuturesGetChecked.j((List) obj);
            }
        })).reverse();
        a = orderingReverse;
        b = orderingReverse.onResultOf(new o74() {
            @Override
            public final Object apply(Object obj) {
                return FuturesGetChecked.k((Constructor) obj);
            }
        });
    }

    public static a d() {
        return GetCheckedTypeValidatorHolder.a;
    }

    public static void e(Class cls) {
        xd8.j(h(cls), "Futures.getChecked exception type (%s) must not be a RuntimeException", cls);
        xd8.j(g(cls), "Futures.getChecked exception type (%s) must be an accessible class with an accessible constructor whose parameters (if any) must be of type String and/or Throwable", cls);
    }

    public static Object f(Future future, Class cls, long j, TimeUnit timeUnit) throws Exception {
        d().validateClass(cls);
        try {
            return future.get(j, timeUnit);
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
            throw m(cls, e);
        } catch (ExecutionException e2) {
            p(e2.getCause(), cls);
            throw new AssertionError();
        } catch (TimeoutException e3) {
            throw m(cls, e3);
        }
    }

    public static boolean g(Class cls) {
        try {
            m(cls, new Exception());
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }

    public static boolean h(Class cls) {
        return !RuntimeException.class.isAssignableFrom(cls);
    }

    public static Comparable i(List list) {
        return Boolean.valueOf(list.contains(String.class));
    }

    public static Comparable j(List list) {
        return Boolean.valueOf(list.contains(Throwable.class));
    }

    public static List k(Constructor constructor) {
        return Arrays.asList(constructor.getParameterTypes());
    }

    public static Object l(Constructor constructor, Throwable th) {
        Class<?>[] parameterTypes = constructor.getParameterTypes();
        Object[] objArr = new Object[parameterTypes.length];
        for (int i = 0; i < parameterTypes.length; i++) {
            Class<?> cls = parameterTypes[i];
            if (cls.equals(String.class)) {
                objArr[i] = th.toString();
            } else {
                if (!cls.equals(Throwable.class)) {
                    return null;
                }
                objArr[i] = th;
            }
        }
        try {
            return constructor.newInstance(objArr);
        } catch (IllegalAccessException | IllegalArgumentException | InstantiationException | InvocationTargetException unused) {
            return null;
        }
    }

    public static Exception m(Class cls, Throwable th) {
        Iterator it = n(Arrays.asList(cls.getConstructors())).iterator();
        while (it.hasNext()) {
            Exception exc = (Exception) l((Constructor) it.next(), th);
            if (exc != null) {
                if (exc.getCause() == null) {
                    exc.initCause(th);
                }
                return exc;
            }
        }
        throw new IllegalArgumentException("No appropriate constructor for exception of type " + cls + " in response to chained exception", th);
    }

    public static List n(List list) {
        return b.sortedCopy(list);
    }

    public static a o() {
        return GetCheckedTypeValidatorHolder.WeakSetValidator.INSTANCE;
    }

    public static void p(Throwable th, Class cls) throws Exception {
        if (th instanceof Error) {
            throw new ExecutionError((Error) th);
        }
        if (!(th instanceof RuntimeException)) {
            throw m(cls, th);
        }
        throw new UncheckedExecutionException(th);
    }
}

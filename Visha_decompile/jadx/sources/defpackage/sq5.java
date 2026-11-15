package defpackage;

import io.appmetrica.analytics.coreutils.internal.system.ConstantDeviceInfo;
import java.io.IOException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Set;
import java.util.concurrent.LinkedBlockingQueue;

public abstract class sq5 {
    public static volatile int a;
    public static j2a b = new j2a();
    public static dx6 c = new dx6();
    public static boolean d = alb.f("slf4j.detectLoggerNameMismatch");
    public static final String[] e = {"1.6", "1.7"};
    public static String f = "org/slf4j/impl/StaticLoggerBinder.class";

    public static final void a() {
        Set setF;
        try {
            if (l()) {
                setF = null;
            } else {
                setF = f();
                s(setF);
            }
            kx9.c();
            a = 3;
            r(setF);
            g();
            p();
            b.b();
        } catch (Exception e2) {
            e(e2);
            throw new IllegalStateException("Unexpected initialization failure", e2);
        } catch (NoClassDefFoundError e3) {
            if (!m(e3.getMessage())) {
                e(e3);
                throw e3;
            }
            a = 4;
            alb.c("Failed to load class \"org.slf4j.impl.StaticLoggerBinder\".");
            alb.c("Defaulting to no-operation (NOP) logger implementation");
            alb.c("See http://www.slf4j.org/codes.html#StaticLoggerBinder for further details.");
        } catch (NoSuchMethodError e4) {
            String message = e4.getMessage();
            if (message != null && message.contains("org.slf4j.impl.StaticLoggerBinder.getSingleton()")) {
                a = 2;
                alb.c("slf4j-api 1.6.x (or later) is incompatible with this binding.");
                alb.c("Your binding is version 1.5.5 or earlier.");
                alb.c("Upgrade your binding to version 1.6.x.");
            }
            throw e4;
        }
    }

    public static void b(k2a k2aVar, int i) {
        if (k2aVar.a().c()) {
            c(i);
        } else {
            if (k2aVar.a().d()) {
                return;
            }
            d();
        }
    }

    public static void c(int i) {
        alb.c("A number (" + i + ") of logging calls during the initialization phase have been intercepted and are");
        alb.c("now being replayed. These are subject to the filtering rules of the underlying logging system.");
        alb.c("See also http://www.slf4j.org/codes.html#replay");
    }

    public static void d() {
        alb.c("The following set of substitute loggers may have been accessed");
        alb.c("during the initialization phase. Logging calls during this");
        alb.c("phase were not honored. However, subsequent logging calls to these");
        alb.c("loggers will work as normally expected.");
        alb.c("See also http://www.slf4j.org/codes.html#substituteLogger");
    }

    public static void e(Throwable th) {
        a = 2;
        alb.d("Failed to instantiate SLF4J LoggerFactory", th);
    }

    public static Set f() {
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        try {
            ClassLoader classLoader = sq5.class.getClassLoader();
            Enumeration<URL> systemResources = classLoader == null ? ClassLoader.getSystemResources(f) : classLoader.getResources(f);
            while (systemResources.hasMoreElements()) {
                linkedHashSet.add(systemResources.nextElement());
            }
        } catch (IOException e2) {
            alb.d("Error getting resources from path", e2);
        }
        return linkedHashSet;
    }

    public static void g() {
        synchronized (b) {
            try {
                b.e();
                for (i2a i2aVar : b.d()) {
                    i2aVar.g(j(i2aVar.getName()));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static iv4 h() {
        if (a == 0) {
            synchronized (sq5.class) {
                try {
                    if (a == 0) {
                        a = 1;
                        o();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        int i = a;
        if (i == 1) {
            return b;
        }
        if (i == 2) {
            throw new IllegalStateException("org.slf4j.LoggerFactory could not be successfully initialized. See also http://www.slf4j.org/codes.html#unsuccessfulInit");
        }
        if (i == 3) {
            return kx9.c().a();
        }
        if (i == 4) {
            return c;
        }
        throw new IllegalStateException("Unreachable code");
    }

    public static qq5 i(Class cls) {
        Class clsA;
        qq5 qq5VarJ = j(cls.getName());
        if (d && (clsA = alb.a()) != null && n(cls, clsA)) {
            alb.c(String.format("Detected logger name mismatch. Given name: \"%s\"; computed name: \"%s\".", qq5VarJ.getName(), clsA.getName()));
            alb.c("See http://www.slf4j.org/codes.html#loggerNameMismatch for an explanation");
        }
        return qq5VarJ;
    }

    public static qq5 j(String str) {
        return h().a(str);
    }

    public static boolean k(Set set) {
        return set.size() > 1;
    }

    public static boolean l() {
        String strG = alb.g("java.vendor.url");
        if (strG == null) {
            return false;
        }
        return strG.toLowerCase().contains(ConstantDeviceInfo.APP_PLATFORM);
    }

    public static boolean m(String str) {
        if (str == null) {
            return false;
        }
        return str.contains("org/slf4j/impl/StaticLoggerBinder") || str.contains("org.slf4j.impl.StaticLoggerBinder");
    }

    public static boolean n(Class cls, Class cls2) {
        return !cls2.isAssignableFrom(cls);
    }

    public static final void o() {
        a();
        if (a == 3) {
            t();
        }
    }

    public static void p() {
        LinkedBlockingQueue linkedBlockingQueueC = b.c();
        int size = linkedBlockingQueueC.size();
        ArrayList<k2a> arrayList = new ArrayList(128);
        int i = 0;
        while (linkedBlockingQueueC.drainTo(arrayList, 128) != 0) {
            for (k2a k2aVar : arrayList) {
                q(k2aVar);
                int i2 = i + 1;
                if (i == 0) {
                    b(k2aVar, size);
                }
                i = i2;
            }
            arrayList.clear();
        }
    }

    public static void q(k2a k2aVar) {
        if (k2aVar == null) {
            return;
        }
        i2a i2aVarA = k2aVar.a();
        String name = i2aVarA.getName();
        if (i2aVarA.e()) {
            throw new IllegalStateException("Delegate logger cannot be null at this state.");
        }
        if (i2aVarA.d()) {
            return;
        }
        if (i2aVarA.c()) {
            i2aVarA.f(k2aVar);
        } else {
            alb.c(name);
        }
    }

    public static void r(Set set) {
        if (set == null || !k(set)) {
            return;
        }
        alb.c("Actual binding is of type [" + kx9.c().b() + "]");
    }

    public static void s(Set set) {
        if (k(set)) {
            alb.c("Class path contains multiple SLF4J bindings.");
            Iterator it = set.iterator();
            while (it.hasNext()) {
                alb.c("Found binding in [" + ((URL) it.next()) + "]");
            }
            alb.c("See http://www.slf4j.org/codes.html#multiple_bindings for an explanation.");
        }
    }

    public static final void t() {
        try {
            String str = kx9.c;
            boolean z = false;
            for (String str2 : e) {
                if (str.startsWith(str2)) {
                    z = true;
                }
            }
            if (z) {
                return;
            }
            alb.c("The requested version " + str + " by your slf4j binding is not compatible with " + Arrays.asList(e).toString());
            alb.c("See http://www.slf4j.org/codes.html#version_mismatch for further details.");
        } catch (NoSuchFieldError unused) {
        } catch (Throwable th) {
            alb.d("Unexpected problem occured during version sanity check", th);
        }
    }
}

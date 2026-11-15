package org.mozilla.javascript;

import androidx.core.app.NotificationCompat;
import java.lang.ref.SoftReference;
import java.lang.reflect.UndeclaredThrowableException;
import java.security.AccessController;
import java.security.CodeSource;
import java.security.PrivilegedAction;
import java.security.PrivilegedActionException;
import java.security.PrivilegedExceptionAction;
import java.security.SecureClassLoader;
import java.util.Map;
import java.util.WeakHashMap;
import javassist.compiler.ast.MethodDecl;
import org.mozilla.classfile.ClassFileWriter;

public class PolicySecurityController extends SecurityController {
    private static final byte[] secureCallerImplBytecode = loadBytecode();
    private static final Map<CodeSource, Map<ClassLoader, SoftReference<SecureCaller>>> callers = new WeakHashMap();

    public static abstract class SecureCaller {
        public abstract Object call(Callable callable, Context context, Scriptable scriptable, Scriptable scriptable2, Object[] objArr);
    }

    public class a implements PrivilegedAction {
        public final ClassLoader a;
        public final Object b;

        public a(ClassLoader classLoader, Object obj) {
            this.a = classLoader;
            this.b = obj;
        }

        @Override
        public Object run() {
            return new d(this.a, (CodeSource) this.b);
        }
    }

    public class b implements PrivilegedAction {
        public final Context a;

        public b(Context context) {
            this.a = context;
        }

        @Override
        public Object run() {
            return this.a.getApplicationClassLoader();
        }
    }

    public class c implements PrivilegedExceptionAction {
        public final ClassLoader a;
        public final CodeSource b;

        public c(ClassLoader classLoader, CodeSource codeSource) {
            this.a = classLoader;
            this.b = codeSource;
        }

        @Override
        public Object run() {
            return new d(this.a, this.b).defineClass(SecureCaller.class.getName() + "Impl", PolicySecurityController.secureCallerImplBytecode).newInstance();
        }
    }

    public static class d extends SecureClassLoader implements GeneratedClassLoader {
        public final CodeSource a;

        public d(ClassLoader classLoader, CodeSource codeSource) {
            super(classLoader);
            this.a = codeSource;
        }

        @Override
        public Class defineClass(String str, byte[] bArr) {
            return defineClass(str, bArr, 0, bArr.length, this.a);
        }

        @Override
        public void linkClass(Class cls) {
            resolveClass(cls);
        }
    }

    private static byte[] loadBytecode() {
        String name = SecureCaller.class.getName();
        ClassFileWriter classFileWriter = new ClassFileWriter(name + "Impl", name, "<generated>");
        classFileWriter.startMethod(MethodDecl.initName, "()V", (short) 1);
        classFileWriter.addALoad(0);
        classFileWriter.addInvoke(183, name, MethodDecl.initName, "()V");
        classFileWriter.add(177);
        classFileWriter.stopMethod((short) 1);
        classFileWriter.startMethod(NotificationCompat.CATEGORY_CALL, "(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;", (short) 17);
        for (int i = 1; i < 6; i++) {
            classFileWriter.addALoad(i);
        }
        classFileWriter.addInvoke(185, "org/mozilla/javascript/Callable", NotificationCompat.CATEGORY_CALL, "(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;");
        classFileWriter.add(176);
        classFileWriter.stopMethod((short) 6);
        return classFileWriter.toByteArray();
    }

    @Override
    public Object callWithDomain(Object obj, Context context, Callable callable, Scriptable scriptable, Scriptable scriptable2, Object[] objArr) {
        Map<ClassLoader, SoftReference<SecureCaller>> weakHashMap;
        SecureCaller secureCaller;
        ClassLoader classLoader = (ClassLoader) AccessController.doPrivileged(new b(context));
        CodeSource codeSource = (CodeSource) obj;
        Map<CodeSource, Map<ClassLoader, SoftReference<SecureCaller>>> map = callers;
        synchronized (map) {
            try {
                weakHashMap = map.get(codeSource);
                if (weakHashMap == null) {
                    weakHashMap = new WeakHashMap<>();
                    map.put(codeSource, weakHashMap);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        synchronized (weakHashMap) {
            SoftReference<SecureCaller> softReference = weakHashMap.get(classLoader);
            SecureCaller secureCaller2 = softReference != null ? softReference.get() : null;
            if (secureCaller2 == null) {
                try {
                    secureCaller2 = (SecureCaller) AccessController.doPrivileged(new c(classLoader, codeSource));
                    weakHashMap.put(classLoader, new SoftReference<>(secureCaller2));
                } catch (PrivilegedActionException e) {
                    throw new UndeclaredThrowableException(e.getCause());
                }
            }
            secureCaller = secureCaller2;
        }
        return secureCaller.call(callable, context, scriptable, scriptable2, objArr);
    }

    @Override
    public GeneratedClassLoader createClassLoader(ClassLoader classLoader, Object obj) {
        return (d) AccessController.doPrivileged(new a(classLoader, obj));
    }

    @Override
    public Object getDynamicSecurityDomain(Object obj) {
        return obj;
    }

    @Override
    public Class<?> getStaticSecurityDomainClassInternal() {
        return CodeSource.class;
    }
}

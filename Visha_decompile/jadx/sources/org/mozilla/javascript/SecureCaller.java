package org.mozilla.javascript;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
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

public abstract class SecureCaller {
    private static final byte[] secureCallerImplBytecode = loadBytecode();
    private static final Map<CodeSource, Map<ClassLoader, SoftReference<SecureCaller>>> callers = new WeakHashMap();

    public static class a implements PrivilegedAction {
        public final Thread a;

        public a(Thread thread) {
            this.a = thread;
        }

        @Override
        public Object run() {
            return this.a.getContextClassLoader();
        }
    }

    public static class b implements PrivilegedExceptionAction {
        public final ClassLoader a;
        public final CodeSource b;

        public b(ClassLoader classLoader, CodeSource codeSource) {
            this.a = classLoader;
            this.b = codeSource;
        }

        @Override
        public Object run() {
            return new d(this.a.loadClass(b.class.getName()) != b.class ? b.class.getClassLoader() : this.a).a(SecureCaller.class.getName() + "Impl", SecureCaller.secureCallerImplBytecode, this.b).newInstance();
        }
    }

    public static class c implements PrivilegedAction {
        @Override
        public Object run() {
            return SecureCaller.loadBytecodePrivileged();
        }
    }

    public static class d extends SecureClassLoader {
        public d(ClassLoader classLoader) {
            super(classLoader);
        }

        public Class a(String str, byte[] bArr, CodeSource codeSource) {
            Class<?> clsDefineClass = defineClass(str, bArr, 0, bArr.length, codeSource);
            resolveClass(clsDefineClass);
            return clsDefineClass;
        }
    }

    public static Object callSecurely(CodeSource codeSource, Callable callable, Context context, Scriptable scriptable, Scriptable scriptable2, Object[] objArr) {
        Map<ClassLoader, SoftReference<SecureCaller>> weakHashMap;
        SecureCaller secureCaller;
        ClassLoader classLoader = (ClassLoader) AccessController.doPrivileged(new a(Thread.currentThread()));
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
                    secureCaller2 = (SecureCaller) AccessController.doPrivileged(new b(classLoader, codeSource));
                    weakHashMap.put(classLoader, new SoftReference<>(secureCaller2));
                } catch (PrivilegedActionException e) {
                    throw new UndeclaredThrowableException(e.getCause());
                }
            }
            secureCaller = secureCaller2;
        }
        return secureCaller.call(callable, context, scriptable, scriptable2, objArr);
    }

    private static byte[] loadBytecode() {
        return (byte[]) AccessController.doPrivileged(new c());
    }

    public static byte[] loadBytecodePrivileged() {
        try {
            InputStream inputStreamOpenStream = SecureCaller.class.getResource("SecureCallerImpl.clazz").openStream();
            try {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                while (true) {
                    int i = inputStreamOpenStream.read();
                    if (i == -1) {
                        return byteArrayOutputStream.toByteArray();
                    }
                    byteArrayOutputStream.write(i);
                }
            } finally {
                inputStreamOpenStream.close();
            }
        } catch (IOException e) {
            throw new UndeclaredThrowableException(e);
        }
    }

    public abstract Object call(Callable callable, Context context, Scriptable scriptable, Scriptable scriptable2, Object[] objArr);
}

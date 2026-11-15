package defpackage;

import java.security.AccessController;
import java.security.PrivilegedAction;

public abstract class gx0 {

    public static class a implements PrivilegedAction {
        public final String a;

        public a(String str) {
            this.a = str;
        }

        @Override
        public Object run() {
            try {
                return ClassLoader.getSystemClassLoader().loadClass(this.a);
            } catch (Exception unused) {
                return null;
            }
        }
    }

    public static Class a(Class cls, String str) {
        try {
            ClassLoader classLoader = cls.getClassLoader();
            return classLoader != null ? classLoader.loadClass(str) : (Class) AccessController.doPrivileged(new a(str));
        } catch (ClassNotFoundException unused) {
            return null;
        }
    }
}

package o;

import dalvik.system.DexClassLoader;

public class lz5 extends DexClassLoader {
    public ClassLoader a;
    public final String b;

    public lz5(String str, String str2, String str3, ClassLoader classLoader, ClassLoader classLoader2) {
        super(str, str2, str3, classLoader);
        this.b = str;
        this.a = classLoader2;
    }

    public String a() {
        return this.b;
    }

    @Override
    public Class findClass(String str) {
        try {
            return super.findClass(str);
        } catch (ClassNotFoundException unused) {
            return this.a.loadClass(str);
        }
    }
}

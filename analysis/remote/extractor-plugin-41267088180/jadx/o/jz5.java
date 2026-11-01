package o;

import dalvik.system.DexClassLoader;

public class jz5 extends DexClassLoader {
    public final String a;
    public final ClassLoader b;

    public jz5(String str, String str2, String str3, ClassLoader classLoader, ClassLoader classLoader2) {
        super(str, str2, str3, classLoader);
        this.a = str;
        this.b = classLoader2;
    }

    public String a() {
        return this.a;
    }

    @Override
    public Class findClass(String str) {
        try {
            return super.findClass(str);
        } catch (ClassNotFoundException unused) {
            return this.b.loadClass(str);
        }
    }
}

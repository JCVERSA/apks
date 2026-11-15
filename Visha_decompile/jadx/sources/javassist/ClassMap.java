package javassist;

import defpackage.bm1;
import defpackage.n82;
import java.util.HashMap;

public class ClassMap extends HashMap<String, String> {
    private static final long serialVersionUID = 1;
    private ClassMap parent;

    public ClassMap() {
        this.parent = null;
    }

    public static String toJavaName(String str) {
        return n82.a(str);
    }

    public static String toJvmName(String str) {
        return n82.b(str);
    }

    public void fix(bm1 bm1Var) {
        throw null;
    }

    public final String put0(String str, String str2) {
        return (String) super.put(str, str2);
    }

    public void putIfNone(String str, String str2) {
        if (str == str2) {
            return;
        }
        String jvmName = toJvmName(str);
        if (get((Object) jvmName) == null) {
            super.put(jvmName, toJvmName(str2));
        }
    }

    public ClassMap(ClassMap classMap) {
        this.parent = classMap;
    }

    public void fix(String str) {
        String jvmName = toJvmName(str);
        super.put(jvmName, jvmName);
    }

    @Override
    public String get(Object obj) {
        ClassMap classMap;
        String str = (String) super.get(obj);
        return (str != null || (classMap = this.parent) == null) ? str : classMap.get(obj);
    }

    public void put(bm1 bm1Var, bm1 bm1Var2) {
        throw null;
    }

    @Override
    public String put(String str, String str2) {
        if (str == str2) {
            return str;
        }
        String jvmName = toJvmName(str);
        String str3 = get((Object) jvmName);
        return (str3 == null || !str3.equals(jvmName)) ? (String) super.put(jvmName, toJvmName(str2)) : str3;
    }
}

package org.mvel2.optimizers;

import java.util.HashMap;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.mvel2.optimizers.dynamic.DynamicOptimizer;
import org.mvel2.optimizers.impl.asm.ASMAccessorOptimizer;
import org.mvel2.optimizers.impl.refl.ReflectiveAccessorOptimizer;

public class b {

    public static String f68833a = "dynamic";

    public static String f68834b = "reflective";

    private static final Logger f68835c = Logger.getLogger(b.class.getName());

    private static String f68836d;

    private static final Map f68837e;

    private static ThreadLocal f68838f;

    static {
        HashMap map = new HashMap();
        f68837e = map;
        f68838f = new ThreadLocal();
        map.put(f68834b, new ReflectiveAccessorOptimizer());
        map.put(f68833a, new DynamicOptimizer());
        try {
            if (b.class.getClassLoader() != null) {
                b.class.getClassLoader().loadClass("org.mvel2.asm.ClassWriter");
            } else {
                ClassLoader.getSystemClassLoader().loadClass("org.mvel2.asm.ClassWriter");
            }
            map.put("ASM", new ASMAccessorOptimizer());
        } catch (ClassNotFoundException unused) {
            f68836d = f68834b;
        } catch (Throwable th2) {
            f68835c.log(Level.WARNING, "[MVEL] Notice: Possible incorrect version of ASM present (3.0 required).  Disabling JIT compiler.  Reflective Optimizer will be used.", th2);
            f68836d = f68834b;
        }
        if (Boolean.getBoolean("mvel2.disable.jit")) {
            e(f68834b);
        } else {
            e(f68833a);
        }
    }

    public static void a() {
        f68838f.set(null);
        f68838f.remove();
    }

    public static a b(String str) {
        try {
            return (a) ((a) f68837e.get(str)).getClass().newInstance();
        } catch (Exception e10) {
            throw new RuntimeException("unable to instantiate accessor compiler", e10);
        }
    }

    public static a c() {
        try {
            return (a) ((a) f68837e.get(f68836d)).getClass().newInstance();
        } catch (Exception e10) {
            throw new RuntimeException("unable to instantiate accessor compiler", e10);
        }
    }

    public static a d() {
        if (f68838f.get() == null) {
            f68838f.set(c().getClass());
        }
        try {
            return (a) ((Class) f68838f.get()).newInstance();
        } catch (Exception e10) {
            throw new RuntimeException("unable to instantiate accessor compiler", e10);
        }
    }

    public static void e(String str) {
        try {
            Map map = f68837e;
            f68836d = str;
            ((a) map.get(str)).init();
            f68838f.set(null);
        } catch (Exception e10) {
            throw new RuntimeException("unable to instantiate accessor compiler", e10);
        }
    }

    public static void f(Class cls) {
        if (cls == null) {
            throw new RuntimeException("null optimizer");
        }
        f68838f.set(cls);
    }
}

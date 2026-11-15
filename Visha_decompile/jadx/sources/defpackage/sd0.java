package defpackage;

import freemarker.ext.beans.b;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

public class sd0 extends eq6 {
    public static Class h;
    public final Map d;
    public final boolean e;
    public final Set f;
    public final b g;

    public sd0(b bVar) {
        Map mapC = c0d.c();
        this.d = mapC;
        this.e = c0d.b(mapC);
        this.f = new HashSet();
        this.g = bVar;
    }

    public static Class h(String str) throws Throwable {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e) {
            throw new NoClassDefFoundError().initCause(e);
        }
    }

    @Override
    public zfa b(Object obj) {
        Class<?> cls = obj.getClass();
        fq6 fq6VarV = this.e ? (fq6) this.d.get(cls) : null;
        if (fq6VarV == null) {
            synchronized (this.d) {
                try {
                    fq6VarV = (fq6) this.d.get(cls);
                    if (fq6VarV == null) {
                        String name = cls.getName();
                        if (!this.f.add(name)) {
                            this.d.clear();
                            this.f.clear();
                            this.f.add(name);
                        }
                        fq6VarV = this.g.v(cls);
                        this.d.put(cls, fq6VarV);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return fq6VarV.a(obj, this.g);
    }

    @Override
    public boolean d(Object obj) throws Throwable {
        Class<?> cls = obj.getClass();
        Class<?> clsH = h;
        if (clsH == null) {
            clsH = h("java.lang.Boolean");
            h = clsH;
        }
        return cls != clsH;
    }
}

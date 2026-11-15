package freemarker.core;

import defpackage.fq6;
import defpackage.gc7;
import defpackage.ud5;
import defpackage.yfa;
import defpackage.zfa;
import freemarker.template.Template;
import java.util.List;

public class i1 extends j {
    public static final Class k;
    public static Class l;
    public static Class m;
    public static Class n;

    public class a implements yfa {
        public final Class b;
        public final Environment c;

        public a(String str, Environment environment, Template template) throws Throwable {
            this.c = environment;
            Class<?> clsA = environment.r().a(str, environment, template);
            this.b = clsA;
            Class clsH0 = i1.n;
            if (clsH0 == null) {
                clsH0 = i1.h0("freemarker.template.TemplateModel");
                i1.n = clsH0;
            }
            if (!clsH0.isAssignableFrom(clsA)) {
                throw new _MiscTemplateException(i1.this, environment, new Object[]{"Class ", clsA.getName(), " does not implement freemarker.template.TemplateModel"});
            }
            if (i1.k.isAssignableFrom(clsA)) {
                throw new _MiscTemplateException(i1.this, environment, new Object[]{"Bean Models cannot be instantiated using the ?", i1.this.i, " built-in"});
            }
            Class cls = i1.l;
            if (cls != null && cls.isAssignableFrom(clsA)) {
                throw new _MiscTemplateException(i1.this, environment, new Object[]{"Jython Models cannot be instantiated using the ?", i1.this.i, " built-in"});
            }
        }

        @Override
        public Object exec(List list) {
            gc7 gc7VarU = this.c.u();
            return (gc7VarU instanceof freemarker.ext.beans.b ? (freemarker.ext.beans.b) gc7VarU : freemarker.ext.beans.b.s()).F(this.b, list);
        }
    }

    static {
        Class clsH0 = m;
        if (clsH0 == null) {
            clsH0 = h0("freemarker.ext.beans.BeanModel");
            m = clsH0;
        }
        k = clsH0;
        try {
            fq6 fq6Var = ud5.d;
            l = ud5.class;
        } catch (Throwable unused) {
            l = null;
        }
    }

    public static Class h0(String str) throws Throwable {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e) {
            throw new NoClassDefFoundError().initCause(e);
        }
    }

    @Override
    public zfa F(Environment environment) {
        return new a(this.h.L(environment), environment, this.h.y());
    }
}

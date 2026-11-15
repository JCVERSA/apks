package defpackage;

import java.io.InputStream;
import kotlin.reflect.jvm.internal.impl.builtins.e;

public final class rq8 implements vg5 {
    public final ClassLoader a;
    public final pn0 b;

    public rq8(ClassLoader classLoader) {
        y45.j(classLoader, "classLoader");
        this.a = classLoader;
        this.b = new pn0();
    }

    @Override
    public InputStream a(o54 o54Var) {
        y45.j(o54Var, "packageFqName");
        if (o54Var.i(e.u)) {
            return this.b.a(nl0.r.r(o54Var));
        }
        return null;
    }

    @Override
    public vg5.a b(s65 s65Var, jd5 jd5Var) {
        String strB;
        y45.j(s65Var, "javaClass");
        y45.j(jd5Var, "jvmMetadataVersion");
        o54 o54VarD = s65Var.d();
        if (o54VarD == null || (strB = o54VarD.b()) == null) {
            return null;
        }
        return d(strB);
    }

    @Override
    public vg5.a c(xw0 xw0Var, jd5 jd5Var) {
        y45.j(xw0Var, "classId");
        y45.j(jd5Var, "jvmMetadataVersion");
        return d(sq8.b(xw0Var));
    }

    public final vg5.a d(String str) {
        qq8 qq8VarA;
        Class clsA = xp8.a(this.a, str);
        if (clsA == null || (qq8VarA = qq8.c.a(clsA)) == null) {
            return null;
        }
        return new vg5.a.C0453a(qq8VarA, null, 2, null);
    }
}

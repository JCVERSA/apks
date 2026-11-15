package defpackage;

import kotlin.KotlinNothingValueException;
import org.mozilla.javascript.ES6Iterator;

public abstract class pc8 {
    public static final k92 a(p3 p3Var, fd1 fd1Var, String str) {
        y45.j(p3Var, "<this>");
        y45.j(fd1Var, "decoder");
        k92 k92VarC = p3Var.c(fd1Var, str);
        if (k92VarC != null) {
            return k92VarC;
        }
        q3.b(str, p3Var.e());
        throw new KotlinNothingValueException();
    }

    public static final nd9 b(p3 p3Var, ca3 ca3Var, Object obj) {
        y45.j(p3Var, "<this>");
        y45.j(ca3Var, "encoder");
        y45.j(obj, ES6Iterator.VALUE_PROPERTY);
        nd9 nd9VarD = p3Var.d(ca3Var, obj);
        if (nd9VarD != null) {
            return nd9VarD;
        }
        q3.a(xq8.b(obj.getClass()), p3Var.e());
        throw new KotlinNothingValueException();
    }
}

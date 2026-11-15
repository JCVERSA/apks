package defpackage;

import java.lang.annotation.Annotation;
import java.util.List;

public final class nq8 extends bq8 implements x85 {
    public final lq8 a;
    public final Annotation[] b;
    public final String c;
    public final boolean d;

    public nq8(lq8 lq8Var, Annotation[] annotationArr, String str, boolean z) {
        y45.j(lq8Var, "type");
        y45.j(annotationArr, "reflectAnnotations");
        this.a = lq8Var;
        this.b = annotationArr;
        this.c = str;
        this.d = z;
    }

    @Override
    public lq8 getType() {
        return this.a;
    }

    @Override
    public boolean b() {
        return this.d;
    }

    @Override
    public by6 getName() {
        String str = this.c;
        if (str != null) {
            return by6.f(str);
        }
        return null;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(nq8.class.getName());
        sb.append(": ");
        sb.append(b() ? "vararg " : "");
        sb.append(getName());
        sb.append(": ");
        sb.append(getType());
        return sb.toString();
    }

    @Override
    public boolean x() {
        return false;
    }

    @Override
    public pp8 a(o54 o54Var) {
        y45.j(o54Var, "fqName");
        return tp8.a(this.b, o54Var);
    }

    @Override
    public List getAnnotations() {
        return tp8.b(this.b);
    }
}

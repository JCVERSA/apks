package defpackage;

import java.util.Arrays;

public final class i1f {
    public final String a;
    public final e1f b;
    public e1f c;

    public i1f(String str, v1f v1fVar) {
        e1f e1fVar = new e1f();
        this.b = e1fVar;
        this.c = e1fVar;
        str.getClass();
        this.a = str;
    }

    public final i1f a(Object obj) {
        e1f e1fVar = new e1f();
        this.c.b = e1fVar;
        this.c = e1fVar;
        e1fVar.a = obj;
        return this;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(32);
        sb.append(this.a);
        sb.append('{');
        e1f e1fVar = this.b.b;
        String str = "";
        while (e1fVar != null) {
            Object obj = e1fVar.a;
            sb.append(str);
            if (obj == null || !obj.getClass().isArray()) {
                sb.append(obj);
            } else {
                String strDeepToString = Arrays.deepToString(new Object[]{obj});
                sb.append((CharSequence) strDeepToString, 1, strDeepToString.length() - 1);
            }
            e1fVar = e1fVar.b;
            str = ", ";
        }
        sb.append('}');
        return sb.toString();
    }
}

package defpackage;

import java.util.Arrays;

public final class q2i {
    public final String a;
    public final p2i b;
    public p2i c;

    public q2i(String str, r2i r2iVar) {
        p2i p2iVar = new p2i();
        this.b = p2iVar;
        this.c = p2iVar;
        str.getClass();
        this.a = str;
    }

    public final q2i a(Object obj) {
        p2i p2iVar = new p2i();
        this.c.b = p2iVar;
        this.c = p2iVar;
        p2iVar.a = obj;
        return this;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(32);
        sb.append(this.a);
        sb.append('{');
        p2i p2iVar = this.b.b;
        String str = "";
        while (p2iVar != null) {
            Object obj = p2iVar.a;
            sb.append(str);
            if (obj == null || !obj.getClass().isArray()) {
                sb.append(obj);
            } else {
                String strDeepToString = Arrays.deepToString(new Object[]{obj});
                sb.append((CharSequence) strDeepToString, 1, strDeepToString.length() - 1);
            }
            p2iVar = p2iVar.b;
            str = ", ";
        }
        sb.append('}');
        return sb.toString();
    }
}

package defpackage;

import org.mozilla.javascript.ES6Iterator;

public final class ynb {
    public final String a;
    public final String b;
    public final String c;
    public final String d;

    public ynb(String str, String str2, String str3, String str4) {
        y45.j(str, "name");
        y45.j(str2, "path");
        y45.j(str3, "type");
        y45.j(str4, ES6Iterator.VALUE_PROPERTY);
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.d = str4;
    }

    public final String a() {
        return this.a;
    }

    public final String b() {
        return this.b;
    }

    public final String c() {
        return this.c;
    }

    public final String d() {
        return this.d;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ynb)) {
            return false;
        }
        ynb ynbVar = (ynb) obj;
        return y45.e(this.a, ynbVar.a) && y45.e(this.b, ynbVar.b) && y45.e(this.c, ynbVar.c) && y45.e(this.d, ynbVar.d);
    }

    public int hashCode() {
        return (((((this.a.hashCode() * 31) + this.b.hashCode()) * 31) + this.c.hashCode()) * 31) + this.d.hashCode();
    }

    public String toString() {
        return "VariableModel(name=" + this.a + ", path=" + this.b + ", type=" + this.c + ", value=" + this.d + ')';
    }
}

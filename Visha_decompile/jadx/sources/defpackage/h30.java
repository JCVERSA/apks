package defpackage;

import org.apache.commons.text.StringSubstitutor;

public final class h30 extends ok5 {
    public final String a;
    public final String b;

    public h30(String str, String str2) {
        if (str == null) {
            throw new NullPointerException("Null libraryName");
        }
        this.a = str;
        if (str2 == null) {
            throw new NullPointerException("Null version");
        }
        this.b = str2;
    }

    @Override
    public String b() {
        return this.a;
    }

    @Override
    public String c() {
        return this.b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ok5)) {
            return false;
        }
        ok5 ok5Var = (ok5) obj;
        return this.a.equals(ok5Var.b()) && this.b.equals(ok5Var.c());
    }

    public int hashCode() {
        return this.b.hashCode() ^ ((this.a.hashCode() ^ 1000003) * 1000003);
    }

    public String toString() {
        return "LibraryVersion{libraryName=" + this.a + ", version=" + this.b + StringSubstitutor.DEFAULT_VAR_END;
    }
}

package defpackage;

import java.util.Objects;

public final class ede extends cde {
    public final String b;
    public final String c;
    public final String d;

    public ede(String str, String str2, String str3) {
        super("----");
        this.b = str;
        this.c = str2;
        this.d = str3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && ede.class == obj.getClass()) {
            ede edeVar = (ede) obj;
            if (Objects.equals(this.c, edeVar.c) && Objects.equals(this.b, edeVar.b) && Objects.equals(this.d, edeVar.d)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((((this.b.hashCode() + 527) * 31) + this.c.hashCode()) * 31) + this.d.hashCode();
    }

    @Override
    public final String toString() {
        return this.a + ": domain=" + this.b + ", description=" + this.c;
    }
}

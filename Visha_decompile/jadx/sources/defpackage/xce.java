package defpackage;

import java.util.Objects;

public final class xce extends cde {
    public final String b;
    public final String c;
    public final String d;

    public xce(String str, String str2, String str3) {
        super("COMM");
        this.b = str;
        this.c = str2;
        this.d = str3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && xce.class == obj.getClass()) {
            xce xceVar = (xce) obj;
            if (Objects.equals(this.c, xceVar.c) && Objects.equals(this.b, xceVar.b) && Objects.equals(this.d, xceVar.d)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int iHashCode = ((this.b.hashCode() + 527) * 31) + this.c.hashCode();
        String str = this.d;
        return (iHashCode * 31) + (str != null ? str.hashCode() : 0);
    }

    @Override
    public final String toString() {
        return this.a + ": language=" + this.b + ", description=" + this.c + ", text=" + this.d;
    }
}

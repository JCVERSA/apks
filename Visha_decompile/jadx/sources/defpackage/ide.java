package defpackage;

import java.util.Objects;

public final class ide extends cde {
    public final String b;
    public final String c;

    public ide(String str, String str2, String str3) {
        super(str);
        this.b = str2;
        this.c = str3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && ide.class == obj.getClass()) {
            ide ideVar = (ide) obj;
            if (this.a.equals(ideVar.a) && Objects.equals(this.b, ideVar.b) && Objects.equals(this.c, ideVar.c)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int iHashCode = this.a.hashCode() + 527;
        String str = this.b;
        return (((iHashCode * 31) + (str != null ? str.hashCode() : 0)) * 31) + this.c.hashCode();
    }

    @Override
    public final String toString() {
        return this.a + ": url=" + this.c;
    }
}

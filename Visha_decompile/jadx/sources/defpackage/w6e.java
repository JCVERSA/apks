package defpackage;

import java.util.Objects;

public final class w6e {
    public final String a;
    public final String b;

    static {
        int i = kfh.a;
        Integer.toString(0, 36);
        Integer.toString(1, 36);
    }

    public w6e(String str, String str2) {
        this.a = kfh.e(str);
        this.b = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && w6e.class == obj.getClass()) {
            w6e w6eVar = (w6e) obj;
            if (Objects.equals(this.a, w6eVar.a) && Objects.equals(this.b, w6eVar.b)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int iHashCode = this.b.hashCode() * 31;
        String str = this.a;
        return iHashCode + (str != null ? str.hashCode() : 0);
    }
}

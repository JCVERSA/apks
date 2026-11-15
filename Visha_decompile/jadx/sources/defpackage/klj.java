package defpackage;

import android.text.TextUtils;

public final class klj {
    public final String a;
    public final boolean b;
    public final boolean c;

    public klj(String str, boolean z, boolean z2) {
        this.a = str;
        this.b = z;
        this.c = z2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && obj.getClass() == klj.class) {
            klj kljVar = (klj) obj;
            if (TextUtils.equals(this.a, kljVar.a) && this.b == kljVar.b && this.c == kljVar.c) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((((this.a.hashCode() + 31) * 31) + (true != this.b ? 1237 : 1231)) * 31) + (true != this.c ? 1237 : 1231);
    }
}

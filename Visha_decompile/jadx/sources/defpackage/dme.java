package defpackage;

import android.text.TextUtils;

public final class dme {
    public final String a;
    public final String b;

    public dme(String str, String str2) {
        this.a = str;
        this.b = str2;
    }

    public final String a() {
        return this.a;
    }

    public final String b() {
        return this.b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && dme.class == obj.getClass()) {
            dme dmeVar = (dme) obj;
            if (TextUtils.equals(this.a, dmeVar.a) && TextUtils.equals(this.b, dmeVar.b)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return (this.a.hashCode() * 31) + this.b.hashCode();
    }

    public final String toString() {
        return "Header[name=" + this.a + ",value=" + this.b + "]";
    }
}

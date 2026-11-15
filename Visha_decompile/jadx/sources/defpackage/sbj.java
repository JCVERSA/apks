package defpackage;

import android.content.ComponentName;

public final class sbj {
    public final String a;
    public final String b;
    public final ComponentName c;
    public final int d;
    public final boolean e;

    public sbj(String str, String str2, int i, boolean z) {
        wd8.f(str);
        this.a = str;
        wd8.f(str2);
        this.b = str2;
        this.c = null;
        this.d = 4225;
        this.e = z;
    }

    public final String a() {
        return this.a;
    }

    public final String b() {
        return this.b;
    }

    public final ComponentName c() {
        return this.c;
    }

    public final boolean d() {
        return this.e;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof sbj)) {
            return false;
        }
        sbj sbjVar = (sbj) obj;
        return jc7.a(this.a, sbjVar.a) && jc7.a(this.b, sbjVar.b) && jc7.a(this.c, sbjVar.c) && this.e == sbjVar.e;
    }

    public final int hashCode() {
        return jc7.b(this.a, this.b, this.c, 4225, Boolean.valueOf(this.e));
    }

    public final String toString() {
        String str = this.a;
        if (str != null) {
            return str;
        }
        ComponentName componentName = this.c;
        wd8.l(componentName);
        return componentName.flattenToString();
    }
}

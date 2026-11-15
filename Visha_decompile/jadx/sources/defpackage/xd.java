package defpackage;

import com.google.android.gms.common.api.a;

public final class xd {
    public final int a;
    public final a b;
    public final a.d c;
    public final String d;

    public xd(a aVar, a.d dVar, String str) {
        this.b = aVar;
        this.c = dVar;
        this.d = str;
        this.a = jc7.b(aVar, dVar, str);
    }

    public static xd a(a aVar, a.d dVar, String str) {
        return new xd(aVar, dVar, str);
    }

    public final String b() {
        return this.b.c();
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof xd)) {
            return false;
        }
        xd xdVar = (xd) obj;
        return jc7.a(this.b, xdVar.b) && jc7.a(this.c, xdVar.c) && jc7.a(this.d, xdVar.d);
    }

    public final int hashCode() {
        return this.a;
    }
}

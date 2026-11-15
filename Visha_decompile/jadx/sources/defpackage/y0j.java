package defpackage;

import android.net.Uri;

public final class y0j {
    public final String a;
    public final Uri b;
    public final String c;
    public final String d;
    public final boolean e;
    public final boolean f;
    public final boolean g;
    public final boolean h;

    public y0j(String str, Uri uri, String str2, String str3, boolean z, boolean z2, boolean z3, boolean z4, c2j c2jVar) {
        this.a = null;
        this.b = uri;
        this.c = "";
        this.d = "";
        this.e = z;
        this.f = false;
        this.g = z3;
        this.h = false;
    }

    public final y0j a() {
        return new y0j(null, this.b, this.c, this.d, this.e, false, true, false, null);
    }

    public final y0j b() {
        if (this.c.isEmpty()) {
            return new y0j(null, this.b, this.c, this.d, true, false, this.g, false, null);
        }
        throw new IllegalStateException("Cannot set GServices prefix and skip GServices");
    }

    public final q1j c(String str, double d) {
        return new s0j(this, "measurement.test.double_flag", Double.valueOf(-3.0d), true);
    }

    public final q1j d(String str, long j) {
        return new m0j(this, str, Long.valueOf(j), true);
    }

    public final q1j e(String str, String str2) {
        return new v0j(this, str, str2, true);
    }

    public final q1j f(String str, boolean z) {
        return new p0j(this, str, Boolean.valueOf(z), true);
    }

    public y0j(Uri uri) {
        this(null, uri, "", "", false, false, false, false, null);
    }
}

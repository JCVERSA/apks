package defpackage;

import com.transsion.push.PushConstants;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class swd {
    public int a;
    public int b;
    public String c;
    public String d;
    public String e;
    public long f;
    public String g;

    public swd(int i, int i2, String str, String str2, String str3, long j, String str4) {
        y45.j(str, PushConstants.PROVIDER_FIELD_PKG);
        y45.j(str2, "dl_type");
        y45.j(str3, "codeSeatId");
        y45.j(str4, "ad_creative_id");
        this.a = i;
        this.b = i2;
        this.c = str;
        this.d = str2;
        this.e = str3;
        this.f = j;
        this.g = str4;
    }

    public final int a() {
        return this.b;
    }

    public final String b() {
        return this.g;
    }

    public final long c() {
        return this.f;
    }

    public final String d() {
        return this.e;
    }

    public final String e() {
        return this.d;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof swd)) {
            return false;
        }
        swd swdVar = (swd) obj;
        return this.a == swdVar.a && this.b == swdVar.b && y45.e(this.c, swdVar.c) && y45.e(this.d, swdVar.d) && y45.e(this.e, swdVar.e) && this.f == swdVar.f && y45.e(this.g, swdVar.g);
    }

    public final String f() {
        return this.c;
    }

    public final int g() {
        return this.a;
    }

    public int hashCode() {
        return (((((((((((Integer.hashCode(this.a) * 31) + Integer.hashCode(this.b)) * 31) + this.c.hashCode()) * 31) + this.d.hashCode()) * 31) + this.e.hashCode()) * 31) + Long.hashCode(this.f)) * 31) + this.g.hashCode();
    }

    public String toString() {
        return "AttrClickEntity(_id=" + this.a + ", ac_type=" + this.b + ", pkg=" + this.c + ", dl_type=" + this.d + ", codeSeatId=" + this.e + ", click_ts=" + this.f + ", ad_creative_id=" + this.g + ')';
    }

    public swd(int i, int i2, String str, String str2, String str3, long j, String str4, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this((i3 & 1) != 0 ? 0 : i, (i3 & 2) != 0 ? 0 : i2, str, str2, str3, (i3 & 32) != 0 ? 0L : j, str4);
    }
}

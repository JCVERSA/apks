package defpackage;

import com.transsion.push.PushConstants;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class z30 {
    public int a;
    public String b;
    public long c;
    public String d;

    public z30(int i, String str, long j, String str2) {
        y45.j(str, PushConstants.PROVIDER_FIELD_PKG);
        y45.j(str2, "ad_creative_id");
        this.a = i;
        this.b = str;
        this.c = j;
        this.d = str2;
    }

    public final String a() {
        return this.d;
    }

    public final long b() {
        return this.c;
    }

    public final String c() {
        return this.b;
    }

    public final int d() {
        return this.a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof z30)) {
            return false;
        }
        z30 z30Var = (z30) obj;
        return this.a == z30Var.a && y45.e(this.b, z30Var.b) && this.c == z30Var.c && y45.e(this.d, z30Var.d);
    }

    public int hashCode() {
        return (((((Integer.hashCode(this.a) * 31) + this.b.hashCode()) * 31) + Long.hashCode(this.c)) * 31) + this.d.hashCode();
    }

    public String toString() {
        return "AttrImpressionEntity(_id=" + this.a + ", pkg=" + this.b + ", imp_ts=" + this.c + ", ad_creative_id=" + this.d + ')';
    }

    public z30(int i, String str, long j, String str2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? 0 : i, str, (i2 & 4) != 0 ? 0L : j, str2);
    }
}

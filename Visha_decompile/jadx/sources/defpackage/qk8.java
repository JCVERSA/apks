package defpackage;

import com.transsion.push.PushConstants;

public final class qk8 {
    public String a;
    public String b;
    public int c;
    public String d;

    public qk8(String str, String str2, int i, String str3) {
        y45.j(str, "codeSeatId");
        y45.j(str2, PushConstants.PROVIDER_FIELD_PKG);
        y45.j(str3, "date");
        this.a = str;
        this.b = str2;
        this.c = i;
        this.d = str3;
    }

    public final String a() {
        return this.a;
    }

    public final int b() {
        return this.c;
    }

    public final String c() {
        return this.d;
    }

    public final String d() {
        return this.b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof qk8)) {
            return false;
        }
        qk8 qk8Var = (qk8) obj;
        return y45.e(this.a, qk8Var.a) && y45.e(this.b, qk8Var.b) && this.c == qk8Var.c && y45.e(this.d, qk8Var.d);
    }

    public int hashCode() {
        return (((((this.a.hashCode() * 31) + this.b.hashCode()) * 31) + Integer.hashCode(this.c)) * 31) + this.d.hashCode();
    }

    public String toString() {
        return "ClickFreqEntity(codeSeatId=" + this.a + ", pkg=" + this.b + ", count=" + this.c + ", date=" + this.d + ')';
    }
}

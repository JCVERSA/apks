package defpackage;

import com.transsion.gslb.GslbSdk;

public class zld {
    public static final zld c = new zld();
    public String a = "https://ire-oneid.shalltry.com";
    public String b = "76iRl07s0xSN9jqmEWAt79EBJZulIQIsV64FZr2O";

    public static zld d() {
        return c;
    }

    public String a() {
        return GslbSdk.getDomain(this.a, true) + "/one/v1/change";
    }

    public String b() {
        return this.b;
    }

    public String c() {
        return this.a;
    }

    public String e() {
        return GslbSdk.getDomain(this.a, true) + "/one/v1/log";
    }

    public String f() {
        return GslbSdk.getDomain(this.a, true) + "/one/v1/odid";
    }
}

package bz;

import com.transsion.gslb.GslbSdk;

public class l {

    private static final l f16357c = new l();

    private String f16358a = "https://ire-oneid.shalltry.com";

    private String f16359b = "76iRl07s0xSN9jqmEWAt79EBJZulIQIsV64FZr2O";

    public static l d() {
        return f16357c;
    }

    public String a() {
        return GslbSdk.getDomain(this.f16358a, true) + "/one/v1/change";
    }

    public String b() {
        return this.f16359b;
    }

    public String c() {
        return this.f16358a;
    }

    public String e() {
        return GslbSdk.getDomain(this.f16358a, true) + "/one/v1/log";
    }

    public String f() {
        return GslbSdk.getDomain(this.f16358a, true) + "/one/v1/odid";
    }
}

package defpackage;

import com.transsion.gslb.GslbSdk;

public abstract class yib {
    public static String a() {
        String str;
        int i = jb0.a;
        if (i == 1) {
            str = "https://dev-account.palm.tech";
        } else if (i == 2) {
            str = "https://test-account.palm.tech";
        } else {
            str = i == 3 ? "https://pre-account.palm.tech" : "https://account.palm.tech";
        }
        return GslbSdk.getDomain(str, true);
    }

    public static String b() {
        int i = jb0.a;
        String str = "https://test-auth-account.palm.tech";
        if (i != 1 && i != 2) {
            str = i == 3 ? "https://pre-auth-account.palm.tech" : "https://auth-account.palm.tech";
        }
        return GslbSdk.getDomain(str, true);
    }
}

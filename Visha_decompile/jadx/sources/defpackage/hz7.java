package defpackage;

import java.net.MalformedURLException;
import java.net.URL;
import java.util.List;

public final class hz7 extends em5 {
    public static final hz7 a = new hz7();

    public static hz7 r() {
        return a;
    }

    @Override
    public String f(String str) {
        return zz7.j().f(str);
    }

    @Override
    public boolean i(String str) {
        try {
            new URL(str);
            return str.contains("/videos/") || str.contains("/w/");
        } catch (MalformedURLException unused) {
            return false;
        }
    }

    @Override
    public String p(String str, List list, String str2) {
        return q(str, list, str2, ce9.d.z());
    }

    @Override
    public String q(String str, List list, String str2, String str3) {
        return str3 + String.format("/api/v1/videos/%s/comment-threads", str);
    }
}

package defpackage;

import java.net.MalformedURLException;
import java.net.URL;
import java.util.List;
import org.schabi.newpipe.extractor.utils.Parser;

public final class cz7 extends em5 {
    public static final cz7 a = new cz7();

    public static cz7 s() {
        return a;
    }

    @Override
    public String f(String str) {
        return r(Parser.m("/((accounts|a)|(video-channels|c))/([^/?&#]*)", str, 0));
    }

    @Override
    public boolean i(String str) {
        try {
            new URL(str);
            return str.contains("/accounts/") || str.contains("/a/") || str.contains("/video-channels/") || str.contains("/c/");
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
        if (!str.matches("((accounts|a)|(video-channels|c))/([^/?&#]*)")) {
            return str3 + "/accounts/" + str;
        }
        return str3 + "/" + r(str);
    }

    public final String r(String str) {
        if (str.startsWith("/")) {
            str = str.substring(1);
        }
        if (str.startsWith("a/")) {
            return "accounts" + str.substring(1);
        }
        if (!str.startsWith("c/")) {
            return str;
        }
        return "video-channels" + str.substring(1);
    }
}

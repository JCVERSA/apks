package defpackage;

import java.util.List;
import org.schabi.newpipe.extractor.utils.a;

public final class d60 extends em5 {
    public static final d60 a = new d60();

    public static d60 r() {
        return a;
    }

    @Override
    public String f(String str) {
        return a.w(str);
    }

    @Override
    public boolean i(String str) {
        if (j60.m(str)) {
            return true;
        }
        if (str.toLowerCase().matches("https?://.+\\..+/(track|album)/.+")) {
            return j60.l(str);
        }
        return false;
    }

    @Override
    public String p(String str, List list, String str2) {
        return a.w(str);
    }
}

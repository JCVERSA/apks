package defpackage;

import java.util.List;
import org.schabi.newpipe.extractor.utils.a;

public final class q60 extends em5 {
    public static final q60 a = new q60();

    public static q60 r() {
        return a;
    }

    @Override
    public String f(String str) {
        return g(str);
    }

    @Override
    public boolean i(String str) {
        if (str.toLowerCase().matches("https?://.+\\..+/album/.+")) {
            return j60.l(str);
        }
        return false;
    }

    @Override
    public String p(String str, List list, String str2) {
        return a.w(str);
    }
}

package defpackage;

import java.util.List;
import org.schabi.newpipe.extractor.exceptions.UnsupportedTabException;

public final class t50 extends em5 {
    public static final t50 a = new t50();

    public static String r(String str) {
        str.hashCode();
        if (str.equals("albums")) {
            return "/album";
        }
        if (str.equals("tracks")) {
            return "/track";
        }
        throw new UnsupportedTabException(str);
    }

    @Override
    public String f(String str) {
        return r50.r().f(str);
    }

    @Override
    public boolean i(String str) {
        return r50.r().i(str);
    }

    @Override
    public String p(String str, List list, String str2) {
        return r50.r().g(str) + r((String) list.get(0));
    }
}

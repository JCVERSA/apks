package defpackage;

import java.util.List;
import org.schabi.newpipe.extractor.exceptions.UnsupportedTabException;

public final class ys9 extends em5 {
    public static final ys9 a = new ys9();

    public static String r(String str) {
        str.hashCode();
        switch (str) {
            case "playlists":
                return "/sets";
            case "albums":
                return "/albums";
            case "tracks":
                return "/tracks";
            default:
                throw new UnsupportedTabException(str);
        }
    }

    @Override
    public String f(String str) {
        return ws9.r().f(str);
    }

    @Override
    public boolean i(String str) {
        return ws9.r().i(str);
    }

    @Override
    public String p(String str, List list, String str2) {
        return ws9.r().g(str) + r((String) list.get(0));
    }
}

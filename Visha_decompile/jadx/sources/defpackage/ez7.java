package defpackage;

import java.util.List;
import org.schabi.newpipe.extractor.exceptions.UnsupportedTabException;

public final class ez7 extends em5 {
    public static final ez7 a = new ez7();

    public static ez7 r() {
        return a;
    }

    public static String s(String str) {
        str.hashCode();
        switch (str) {
            case "playlists":
                return "/video-playlists";
            case "videos":
                return "/videos";
            case "channels":
                return "/video-channels";
            default:
                throw new UnsupportedTabException(str);
        }
    }

    @Override
    public String f(String str) {
        return cz7.s().f(str);
    }

    @Override
    public boolean i(String str) {
        return cz7.s().i(str);
    }

    @Override
    public String p(String str, List list, String str2) {
        return cz7.s().g(str) + s((String) list.get(0));
    }

    @Override
    public String q(String str, List list, String str2, String str3) {
        return cz7.s().q(str, null, null, str3) + s((String) list.get(0));
    }
}

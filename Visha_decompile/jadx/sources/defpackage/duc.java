package defpackage;

import java.util.List;
import org.schabi.newpipe.extractor.exceptions.ParsingException;
import org.schabi.newpipe.extractor.exceptions.UnsupportedTabException;

public final class duc extends em5 {
    public static final duc a = new duc();

    public static duc r() {
        return a;
    }

    public static String s(String str) {
        str.hashCode();
        switch (str) {
            case "playlists":
                return "/playlists";
            case "albums":
                return "/releases";
            case "shorts":
                return "/shorts";
            case "videos":
                return "/videos";
            case "livestreams":
                return "/streams";
            default:
                throw new UnsupportedTabException(str);
        }
    }

    @Override
    public String f(String str) {
        return rtc.r().f(str);
    }

    @Override
    public boolean i(String str) {
        try {
            f(str);
            return true;
        } catch (ParsingException unused) {
            return false;
        }
    }

    @Override
    public String p(String str, List list, String str2) {
        return "https://www.youtube.com/" + str + s((String) list.get(0));
    }
}

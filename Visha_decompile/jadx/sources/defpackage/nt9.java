package defpackage;

import java.util.List;
import org.schabi.newpipe.extractor.exceptions.ParsingException;
import org.schabi.newpipe.extractor.utils.Parser;
import org.schabi.newpipe.extractor.utils.a;

public final class nt9 extends em5 {
    public static final nt9 a = new nt9();

    public static nt9 r() {
        return a;
    }

    @Override
    public String f(String str) throws ParsingException {
        a.c("^https?://(www\\.|m\\.)?soundcloud.com/[0-9a-z_-]+/sets/[0-9a-z_-]+/?([#?].*)?$", str);
        try {
            return jt9.s(str);
        } catch (Exception e) {
            throw new ParsingException("Could not get id of url: " + str + " " + e.getMessage(), e);
        }
    }

    @Override
    public boolean i(String str) {
        return Parser.g("^https?://(www\\.|m\\.)?soundcloud.com/[0-9a-z_-]+/sets/[0-9a-z_-]+/?([#?].*)?$", str.toLowerCase());
    }

    @Override
    public String p(String str, List list, String str2) throws ParsingException {
        try {
            return jt9.t("https://api.soundcloud.com/playlists/" + str);
        } catch (Exception e) {
            throw new ParsingException(e.getMessage(), e);
        }
    }
}

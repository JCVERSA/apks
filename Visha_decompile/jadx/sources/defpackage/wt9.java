package defpackage;

import org.schabi.newpipe.extractor.exceptions.ParsingException;
import org.schabi.newpipe.extractor.utils.Parser;
import org.schabi.newpipe.extractor.utils.a;

public final class wt9 extends il5 {
    public static final wt9 a = new wt9();

    public static wt9 j() {
        return a;
    }

    @Override
    public String f(String str) throws ParsingException {
        if (Parser.g("^https?://api-v2\\.soundcloud.com/(tracks|albums|sets|reposts|followers|following)/([0-9a-z_-]+)/", str)) {
            return Parser.o("^https?://api-v2\\.soundcloud.com/(tracks|albums|sets|reposts|followers|following)/([0-9a-z_-]+)/", str);
        }
        a.c("^https?://(www\\.|m\\.|on\\.)?soundcloud.com/[0-9a-z_-]+/(?!(tracks|albums|sets|reposts|followers|following)/?$)[0-9a-z_-]+/?([#?].*)?$", str);
        try {
            return jt9.s(str);
        } catch (Exception e) {
            throw new ParsingException(e.getMessage(), e);
        }
    }

    @Override
    public String g(String str) throws ParsingException {
        try {
            return jt9.t("https://api.soundcloud.com/tracks/" + str);
        } catch (Exception e) {
            throw new ParsingException(e.getMessage(), e);
        }
    }

    @Override
    public boolean i(String str) {
        return Parser.g("^https?://(www\\.|m\\.|on\\.)?soundcloud.com/[0-9a-z_-]+/(?!(tracks|albums|sets|reposts|followers|following)/?$)[0-9a-z_-]+/?([#?].*)?$", str.toLowerCase());
    }
}

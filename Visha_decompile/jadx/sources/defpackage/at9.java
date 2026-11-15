package defpackage;

import java.util.List;
import org.schabi.newpipe.extractor.utils.Parser;

public final class at9 extends em5 {
    public static final at9 a = new at9();

    public static at9 r() {
        return a;
    }

    @Override
    public String f(String str) {
        return Parser.g("^https?://(www\\.|m\\.)?soundcloud.com/charts(/top)?/?([#?].*)?$", str.toLowerCase()) ? "Top 50" : "New & hot";
    }

    @Override
    public boolean i(String str) {
        return Parser.g("^https?://(www\\.|m\\.)?soundcloud.com/charts(/top|/new)?/?([#?].*)?$", str.toLowerCase());
    }

    @Override
    public String p(String str, List list, String str2) {
        return str.equals("Top 50") ? "https://soundcloud.com/charts/top" : "https://soundcloud.com/charts/new";
    }
}

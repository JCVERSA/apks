package defpackage;

import java.net.MalformedURLException;
import java.net.URL;
import java.util.List;
import org.schabi.newpipe.extractor.exceptions.ParsingException;
import org.schabi.newpipe.extractor.utils.Parser;

public final class pz7 extends em5 {
    public static final pz7 a = new pz7();

    public static pz7 r() {
        return a;
    }

    @Override
    public String f(String str) {
        try {
            return Parser.m("(/videos/watch/playlist/|/w/p/)([^/?&#]*)", str, 2);
        } catch (ParsingException unused) {
            return Parser.o("/video-playlists/([^/?&#]*)", str);
        }
    }

    @Override
    public boolean i(String str) {
        try {
            new URL(str);
            f(str);
            return true;
        } catch (MalformedURLException | ParsingException unused) {
            return false;
        }
    }

    @Override
    public String p(String str, List list, String str2) {
        return q(str, list, str2, ce9.d.z());
    }

    @Override
    public String q(String str, List list, String str2, String str3) {
        return str3 + "/api/v1/video-playlists/" + str;
    }
}

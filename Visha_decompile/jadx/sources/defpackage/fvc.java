package defpackage;

import java.net.MalformedURLException;
import java.net.URL;
import java.util.Iterator;
import java.util.regex.Pattern;
import org.apache.commons.text.lookup.StringLookupFactory;
import org.jsoup.nodes.Element;
import org.schabi.newpipe.extractor.a;
import org.schabi.newpipe.extractor.exceptions.ParsingException;
import org.schabi.newpipe.extractor.localization.Localization;
import org.schabi.newpipe.extractor.utils.Parser;

public abstract class fvc {
    public static final Pattern a = Pattern.compile("player\\\\/([a-z0-9]{8})\\\\/");
    public static final Pattern b = Pattern.compile("\"jsUrl\":\"(/s/player/[A-Za-z0-9]+/player_ias\\.vflset/[A-Za-z_-]+/base\\.js)\"");

    public static String a(String str) {
        if (str.startsWith("//")) {
            return "https:" + str;
        }
        if (!str.startsWith("/")) {
            return str;
        }
        return "https://www.youtube.com" + str;
    }

    public static String b(String str) throws ParsingException {
        try {
            return a.c().e(str, Localization.DEFAULT).c();
        } catch (Exception e) {
            throw new ParsingException("Could not get JavaScript base player's code", e);
        }
    }

    public static String c(String str) throws ParsingException {
        try {
            String strA = a(e());
            new URL(strA);
            return b(strA);
        } catch (Exception unused) {
            String strA2 = a(d(str));
            try {
                new URL(strA2);
                return b(strA2);
            } catch (MalformedURLException e) {
                throw new ParsingException("The extracted and built JavaScript URL is invalid", e);
            }
        }
    }

    public static String d(String str) throws ParsingException {
        try {
            String strC = a.c().e("https://www.youtube.com/embed/" + str, Localization.DEFAULT).c();
            Iterator<Element> it = vc5.a(strC).h1(StringLookupFactory.KEY_SCRIPT).attr("name", "player/base").iterator();
            while (it.hasNext()) {
                String strH = it.next().h("src");
                if (strH.contains("base.js")) {
                    return strH;
                }
            }
            try {
                return Parser.p(b, strC);
            } catch (Parser.RegexException e) {
                throw new ParsingException("Embedded watch page didn't provide JavaScript base player's URL", e);
            }
        } catch (Exception e2) {
            throw new ParsingException("Could not fetch embedded watch page", e2);
        }
    }

    public static String e() throws ParsingException {
        try {
            try {
                return String.format("https://www.youtube.com/s/player/%s/player_ias.vflset/en_GB/base.js", Parser.p(a, a.c().e("https://www.youtube.com/iframe_api", Localization.DEFAULT).c()));
            } catch (Parser.RegexException e) {
                throw new ParsingException("IFrame resource didn't provide JavaScript base player's hash", e);
            }
        } catch (Exception e2) {
            throw new ParsingException("Could not fetch IFrame resource", e2);
        }
    }
}

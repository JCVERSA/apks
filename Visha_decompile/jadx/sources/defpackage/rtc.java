package defpackage;

import java.net.URL;
import java.util.List;
import java.util.regex.Pattern;
import org.schabi.newpipe.extractor.exceptions.ParsingException;
import org.schabi.newpipe.extractor.utils.a;

public final class rtc extends em5 {
    public static final rtc a = new rtc();
    public static final Pattern b = Pattern.compile("playlist|watch|attribution_link|watch_popup|embed|feed|select_site|account|reporthistory|redirect");

    public static rtc r() {
        return a;
    }

    @Override
    public String f(String str) throws ParsingException {
        try {
            URL urlX = a.x(str);
            String path = urlX.getPath();
            if (!a.l(urlX) || (!cxc.l0(urlX) && !cxc.c0(urlX) && !cxc.b0(urlX))) {
                throw new ParsingException("The URL given is not a YouTube URL");
            }
            String strSubstring = path.substring(1);
            String[] strArrSplit = strSubstring.split("/");
            if (t(strArrSplit)) {
                return strArrSplit[0];
            }
            if (s(strArrSplit)) {
                strSubstring = "c/" + strSubstring;
                strArrSplit = strSubstring.split("/");
            }
            if (!strSubstring.startsWith("user/") && !strSubstring.startsWith("channel/") && !strSubstring.startsWith("c/")) {
                throw new ParsingException("The given URL is not a channel, a user or a handle URL");
            }
            String str2 = strArrSplit[1];
            if (a.k(str2)) {
                throw new ParsingException("The given ID is not a YouTube channel or user ID");
            }
            return strArrSplit[0] + "/" + str2;
        } catch (Exception e) {
            throw new ParsingException("Could not parse URL :" + e.getMessage(), e);
        }
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
        return "https://www.youtube.com/" + str;
    }

    public final boolean s(String[] strArr) {
        return strArr.length == 1 && !b.matcher(strArr[0]).matches();
    }

    public final boolean t(String[] strArr) {
        return strArr.length > 0 && strArr[0].startsWith("@");
    }
}

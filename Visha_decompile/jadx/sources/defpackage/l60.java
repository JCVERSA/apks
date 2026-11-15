package defpackage;

import java.util.List;
import org.schabi.newpipe.extractor.utils.a;

public final class l60 extends em5 {
    public static final l60 a = new l60();

    public static l60 r() {
        return a;
    }

    @Override
    public String f(String str) {
        String strW = a.w(str);
        if (j60.m(strW) || strW.equals("https://bandcamp.com/api/bcweekly/3/list")) {
            return "Radio";
        }
        if (strW.equals("https://bandcamp.com/api/mobile/24/bootstrap_data")) {
            return "Featured";
        }
        return null;
    }

    @Override
    public boolean i(String str) {
        String strW = a.w(str);
        return strW.equals("https://bandcamp.com/api/mobile/24/bootstrap_data") || strW.equals("https://bandcamp.com/api/bcweekly/3/list") || j60.m(strW);
    }

    @Override
    public String p(String str, List list, String str2) {
        if (str.equals("Featured")) {
            return "https://bandcamp.com/api/mobile/24/bootstrap_data";
        }
        if (str.equals("Radio")) {
            return "https://bandcamp.com/api/bcweekly/3/list";
        }
        return null;
    }
}

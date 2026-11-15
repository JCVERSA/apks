package defpackage;

import java.net.MalformedURLException;
import java.net.URL;
import java.util.List;
import org.schabi.newpipe.extractor.utils.a;

public final class uzc extends em5 {
    public static final uzc a = new uzc();

    public static uzc r() {
        return a;
    }

    @Override
    public String f(String str) {
        return "Trending";
    }

    @Override
    public boolean i(String str) {
        try {
            URL urlX = a.x(str);
            String path = urlX.getPath();
            if (a.l(urlX)) {
                return (cxc.l0(urlX) || cxc.c0(urlX)) && path.equals("/feed/trending");
            }
            return false;
        } catch (MalformedURLException unused) {
            return false;
        }
    }

    @Override
    public String p(String str, List list, String str2) {
        return "https://www.youtube.com/feed/trending";
    }
}

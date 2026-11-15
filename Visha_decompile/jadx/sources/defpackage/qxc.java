package defpackage;

import java.net.MalformedURLException;
import java.net.URL;
import java.util.List;
import org.schabi.newpipe.extractor.exceptions.ContentNotSupportedException;
import org.schabi.newpipe.extractor.exceptions.ParsingException;
import org.schabi.newpipe.extractor.linkhandler.LinkHandler;
import org.schabi.newpipe.extractor.linkhandler.ListLinkHandler;
import org.schabi.newpipe.extractor.utils.a;

public final class qxc extends em5 {
    public static final qxc a = new qxc();

    public static qxc r() {
        return a;
    }

    @Override
    public String f(String str) throws ParsingException {
        try {
            URL urlX = a.x(str);
            if (!a.l(urlX) || (!cxc.l0(urlX) && !cxc.c0(urlX))) {
                throw new ParsingException("the url given is not a YouTube-URL");
            }
            String path = urlX.getPath();
            if (!path.equals("/watch") && !path.equals("/playlist")) {
                throw new ParsingException("the url given is neither a video nor a playlist URL");
            }
            String strH = a.h(urlX, "list");
            if (strH == null) {
                throw new ParsingException("the URL given does not include a playlist");
            }
            if (!strH.matches("[a-zA-Z0-9_-]{10,}")) {
                throw new ParsingException("the list-ID given in the URL does not match the list pattern");
            }
            if (cxc.f0(strH) && a.h(urlX, "v") == null) {
                throw new ContentNotSupportedException("Channel Mix without a video id are not supported");
            }
            return strH;
        } catch (Exception e) {
            throw new ParsingException("Error could not parse URL: " + e.getMessage(), e);
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
    public ListLinkHandler d(String str) throws ParsingException {
        try {
            URL urlX = a.x(str);
            String strH = a.h(urlX, "list");
            if (strH == null || !cxc.h0(strH)) {
                return super.d(str);
            }
            String strH2 = a.h(urlX, "v");
            if (strH2 == null) {
                strH2 = cxc.t(strH);
            }
            return new ListLinkHandler(new LinkHandler(str, "https://www.youtube.com/watch?v=" + strH2 + "&list=" + strH, strH));
        } catch (MalformedURLException e) {
            throw new ParsingException("Error could not parse URL: " + e.getMessage(), e);
        }
    }

    @Override
    public String p(String str, List list, String str2) {
        return "https://www.youtube.com/playlist?list=" + str;
    }
}

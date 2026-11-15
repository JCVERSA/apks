package defpackage;

import java.io.IOException;
import org.schabi.newpipe.extractor.Page;
import org.schabi.newpipe.extractor.StreamingService;
import org.schabi.newpipe.extractor.exceptions.ParsingException;
import org.schabi.newpipe.extractor.linkhandler.ListLinkHandler;
import org.schabi.newpipe.extractor.localization.ContentCountry;
import org.schabi.newpipe.extractor.utils.a;

public class zs9 extends ig5 {
    public zs9(StreamingService streamingService, ListLinkHandler listLinkHandler, String str) {
        super(streamingService, listLinkHandler, str);
    }

    @Override
    public String k() {
        return i();
    }

    @Override
    public void q(c23 c23Var) {
    }

    @Override
    public tl5.a r() throws IOException, ParsingException {
        String str;
        String str2;
        String strL;
        qy9 qy9Var = new qy9(n());
        String str3 = "https://api-v2.soundcloud.com/charts?genre=soundcloud:genres:all-music&client_id=" + jt9.c();
        if (i().equals("Top 50")) {
            str = str3 + "&kind=top";
        } else {
            str = str3 + "&kind=trending";
        }
        ContentCountry contentCountryH = ce9.b.h();
        if (m().v().contains(contentCountryH)) {
            str2 = str + "&region=soundcloud:regions:" + contentCountryH.getCountryCode();
        } else {
            str2 = null;
        }
        if (str2 == null) {
            str2 = str;
        }
        try {
            strL = jt9.l(qy9Var, str2, true);
        } catch (IOException unused) {
            strL = jt9.l(qy9Var, str, true);
        }
        return new tl5.a(qy9Var, new Page(strL));
    }

    @Override
    public tl5.a t(Page page) {
        if (page == null || a.m(page.getUrl())) {
            throw new IllegalArgumentException("Page doesn't contain an URL");
        }
        qy9 qy9Var = new qy9(n());
        return new tl5.a(qy9Var, new Page(jt9.l(qy9Var, page.getUrl(), true)));
    }
}

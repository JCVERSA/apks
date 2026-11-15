package defpackage;

import org.schabi.newpipe.extractor.Page;
import org.schabi.newpipe.extractor.StreamingService;
import org.schabi.newpipe.extractor.exceptions.ParsingException;
import org.schabi.newpipe.extractor.linkhandler.ListLinkHandler;
import org.schabi.newpipe.extractor.utils.a;

public class xs9 extends fu0 {
    public final String g;

    public xs9(StreamingService streamingService, ListLinkHandler listLinkHandler) {
        super(streamingService, listLinkHandler);
        this.g = s().getId();
    }

    @Override
    public void q(c23 c23Var) {
    }

    @Override
    public tl5.a r() throws ParsingException {
        return t(new Page("https://api-v2.soundcloud.com/users/" + this.g + u() + "?client_id=" + jt9.c() + "&limit=20&linked_partitioning=1"));
    }

    @Override
    public tl5.a t(Page page) {
        if (page == null || a.m(page.getUrl())) {
            throw new IllegalArgumentException("Page doesn't contain an URL");
        }
        ls6 ls6Var = new ls6(n());
        return new tl5.a(ls6Var, new Page(jt9.i(ls6Var, page.getUrl())));
    }

    public final String u() throws ParsingException {
        String strK = k();
        strK.hashCode();
        switch (strK) {
            case "playlists":
                return "/playlists_without_albums";
            case "albums":
                return "/albums";
            case "tracks":
                return "/tracks";
            default:
                throw new ParsingException("Unsupported tab: " + k());
        }
    }
}

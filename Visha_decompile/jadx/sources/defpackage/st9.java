package defpackage;

import java.util.Arrays;
import java.util.List;
import org.schabi.newpipe.extractor.StreamingService;
import org.schabi.newpipe.extractor.exceptions.ExtractionException;
import org.schabi.newpipe.extractor.linkhandler.LinkHandler;
import org.schabi.newpipe.extractor.linkhandler.ListLinkHandler;
import org.schabi.newpipe.extractor.linkhandler.SearchQueryHandler;
import org.schabi.newpipe.extractor.localization.ContentCountry;
import org.schabi.newpipe.extractor.playlist.a;
import org.schabi.newpipe.extractor.search.SearchExtractor;
import org.schabi.newpipe.extractor.stream.StreamExtractor;

public class st9 extends StreamingService {
    public st9(int i) {
        super(i, "SoundCloud", Arrays.asList(StreamingService.ServiceInfo.MediaCapability.AUDIO, StreamingService.ServiceInfo.MediaCapability.COMMENTS));
    }

    @Override
    public us0 b(ListLinkHandler listLinkHandler) {
        return new us9(this, listLinkHandler);
    }

    @Override
    public em5 c() {
        return ws9.r();
    }

    @Override
    public fu0 d(ListLinkHandler listLinkHandler) {
        return new xs9(this, listLinkHandler);
    }

    @Override
    public ea1 f(ListLinkHandler listLinkHandler) {
        return new bt9(this, listLinkHandler);
    }

    @Override
    public em5 g() {
        return dt9.r();
    }

    @Override
    public jg5 j() throws ExtractionException {
        jg5 jg5Var = new jg5(this);
        final at9 at9VarR = at9.r();
        jg5.b bVar = new jg5.b() {
            @Override
            public final ig5 a(StreamingService streamingService, String str, String str2) {
                return this.a.z(at9VarR, streamingService, str, str2);
            }
        };
        try {
            jg5Var.a(bVar, at9VarR, "Top 50");
            jg5Var.a(bVar, at9VarR, "New & hot");
            jg5Var.e("New & hot");
            return jg5Var;
        } catch (Exception e) {
            throw new ExtractionException(e);
        }
    }

    @Override
    public a n(ListLinkHandler listLinkHandler) {
        return new lt9(this, listLinkHandler);
    }

    @Override
    public em5 o() {
        return nt9.r();
    }

    @Override
    public SearchExtractor p(SearchQueryHandler searchQueryHandler) {
        return new qt9(this, searchQueryHandler);
    }

    @Override
    public StreamExtractor t(LinkHandler linkHandler) {
        return new ut9(this, linkHandler);
    }

    @Override
    public il5 u() {
        return wt9.j();
    }

    @Override
    public List v() {
        return ContentCountry.listFrom("AU", "CA", "DE", "FR", "GB", "IE", "NL", "NZ", "US");
    }

    public final ig5 z(at9 at9Var, StreamingService streamingService, String str, String str2) {
        return new zs9(this, at9Var.d(str), str2);
    }
}

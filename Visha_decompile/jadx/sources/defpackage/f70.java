package defpackage;

import java.util.Arrays;
import org.schabi.newpipe.extractor.StreamingService;
import org.schabi.newpipe.extractor.exceptions.ExtractionException;
import org.schabi.newpipe.extractor.linkhandler.LinkHandler;
import org.schabi.newpipe.extractor.linkhandler.ListLinkHandler;
import org.schabi.newpipe.extractor.linkhandler.ReadyChannelTabListLinkHandler;
import org.schabi.newpipe.extractor.linkhandler.SearchQueryHandler;
import org.schabi.newpipe.extractor.playlist.a;
import org.schabi.newpipe.extractor.search.SearchExtractor;
import org.schabi.newpipe.extractor.services.bandcamp.extractors.BandcampChannelExtractor;
import org.schabi.newpipe.extractor.stream.StreamExtractor;

public class f70 extends StreamingService {
    public f70(int i) {
        super(i, "Bandcamp", Arrays.asList(StreamingService.ServiceInfo.MediaCapability.AUDIO, StreamingService.ServiceInfo.MediaCapability.COMMENTS));
    }

    public final ig5 A(em5 em5Var, StreamingService streamingService, String str, String str2) {
        return new k60(this, em5Var.d("https://bandcamp.com/api/mobile/24/bootstrap_data"), str2);
    }

    public final ig5 B(em5 em5Var, StreamingService streamingService, String str, String str2) {
        return new s60(this, em5Var.d("https://bandcamp.com/api/bcweekly/3/list"), str2);
    }

    @Override
    public us0 b(ListLinkHandler listLinkHandler) {
        return new BandcampChannelExtractor(this, listLinkHandler);
    }

    @Override
    public em5 c() {
        return r50.r();
    }

    @Override
    public fu0 d(ListLinkHandler listLinkHandler) {
        return listLinkHandler instanceof ReadyChannelTabListLinkHandler ? ((ReadyChannelTabListLinkHandler) listLinkHandler).getChannelTabExtractor(this) : new s50(this, listLinkHandler);
    }

    @Override
    public ea1 f(ListLinkHandler listLinkHandler) {
        return new b60(this, listLinkHandler);
    }

    @Override
    public em5 g() {
        return d60.r();
    }

    @Override
    public jg5 j() throws ExtractionException {
        jg5 jg5Var = new jg5(this);
        final l60 l60VarR = l60.r();
        try {
            jg5Var.a(new jg5.b() {
                @Override
                public final ig5 a(StreamingService streamingService, String str, String str2) {
                    return this.a.A(l60VarR, streamingService, str, str2);
                }
            }, l60VarR, "Featured");
            jg5Var.a(new jg5.b() {
                @Override
                public final ig5 a(StreamingService streamingService, String str, String str2) {
                    return this.a.B(l60VarR, streamingService, str, str2);
                }
            }, l60VarR, "Radio");
            jg5Var.e("Featured");
            return jg5Var;
        } catch (Exception e) {
            throw new ExtractionException(e);
        }
    }

    @Override
    public a n(ListLinkHandler listLinkHandler) {
        return new n60(this, listLinkHandler);
    }

    @Override
    public em5 o() {
        return q60.r();
    }

    @Override
    public SearchExtractor p(SearchQueryHandler searchQueryHandler) {
        return new b70(this, searchQueryHandler);
    }

    @Override
    public StreamExtractor t(LinkHandler linkHandler) {
        return j60.m(linkHandler.getUrl()) ? new w60(this, linkHandler) : new k70(this, linkHandler);
    }

    @Override
    public il5 u() {
        return m70.j();
    }
}

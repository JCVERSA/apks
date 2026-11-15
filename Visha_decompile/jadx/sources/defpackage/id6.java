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
import org.schabi.newpipe.extractor.stream.StreamExtractor;

public class id6 extends StreamingService {
    public id6(int i) {
        super(i, "media.ccc.de", Arrays.asList(StreamingService.ServiceInfo.MediaCapability.AUDIO, StreamingService.ServiceInfo.MediaCapability.VIDEO));
    }

    public ig5 B(em5 em5Var, StreamingService streamingService, String str, String str2) {
        return new fc6(this, em5Var.d(str), str2);
    }

    public ig5 C(em5 em5Var, StreamingService streamingService, String str, String str2) {
        return new cd6(this, em5Var.d(str), str2);
    }

    public final ig5 D(em5 em5Var, StreamingService streamingService, String str, String str2) {
        return new tc6(this, em5Var.d(str), str2);
    }

    @Override
    public us0 b(ListLinkHandler listLinkHandler) {
        return new dc6(this, listLinkHandler);
    }

    @Override
    public em5 c() {
        return gc6.r();
    }

    @Override
    public fu0 d(ListLinkHandler listLinkHandler) {
        return listLinkHandler instanceof ReadyChannelTabListLinkHandler ? ((ReadyChannelTabListLinkHandler) listLinkHandler).getChannelTabExtractor(this) : new ac6(this, listLinkHandler, null);
    }

    @Override
    public ea1 f(ListLinkHandler listLinkHandler) {
        return null;
    }

    @Override
    public em5 g() {
        return null;
    }

    @Override
    public jg5 j() throws ExtractionException {
        jg5 jg5Var = new jg5(this);
        final hc6 hc6VarR = hc6.r();
        try {
            jg5Var.a(new jg5.b() {
                @Override
                public final ig5 a(StreamingService streamingService, String str, String str2) {
                    return this.a.B(hc6VarR, streamingService, str, str2);
                }
            }, hc6VarR, "conferences");
            jg5Var.a(new jg5.b() {
                @Override
                public final ig5 a(StreamingService streamingService, String str, String str2) {
                    return this.a.C(hc6VarR, streamingService, str, str2);
                }
            }, hc6VarR, "recent");
            jg5Var.a(new jg5.b() {
                @Override
                public final ig5 a(StreamingService streamingService, String str, String str2) {
                    return this.a.D(hc6VarR, streamingService, str, str2);
                }
            }, hc6VarR, "live");
            jg5Var.e("recent");
            return jg5Var;
        } catch (Exception e) {
            throw new ExtractionException(e);
        }
    }

    @Override
    public a n(ListLinkHandler listLinkHandler) {
        return null;
    }

    @Override
    public em5 o() {
        return null;
    }

    @Override
    public SearchExtractor p(SearchQueryHandler searchQueryHandler) {
        return new ed6(this, searchQueryHandler);
    }

    @Override
    public StreamExtractor t(LinkHandler linkHandler) {
        return wc6.f(linkHandler.getId()) ? new sc6(this, linkHandler) : new kd6(this, linkHandler);
    }

    @Override
    public il5 u() {
        return md6.j();
    }
}

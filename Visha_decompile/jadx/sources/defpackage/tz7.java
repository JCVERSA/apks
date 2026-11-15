package defpackage;

import java.util.Arrays;
import java.util.List;
import org.schabi.newpipe.extractor.StreamingService;
import org.schabi.newpipe.extractor.exceptions.ExtractionException;
import org.schabi.newpipe.extractor.linkhandler.LinkHandler;
import org.schabi.newpipe.extractor.linkhandler.ListLinkHandler;
import org.schabi.newpipe.extractor.linkhandler.SearchQueryHandler;
import org.schabi.newpipe.extractor.playlist.a;
import org.schabi.newpipe.extractor.search.SearchExtractor;
import org.schabi.newpipe.extractor.stream.StreamExtractor;

public class tz7 extends StreamingService {
    public iz7 c;

    public tz7(int i) {
        this(i, iz7.c);
    }

    public final ig5 A(g08 g08Var, StreamingService streamingService, String str, String str2) {
        return new a08(this, g08Var.j(str2), str2);
    }

    @Override
    public us0 b(ListLinkHandler listLinkHandler) {
        return listLinkHandler.getUrl().contains("/video-channels/") ? new az7(this, listLinkHandler) : new wy7(this, listLinkHandler);
    }

    @Override
    public em5 c() {
        return cz7.s();
    }

    @Override
    public fu0 d(ListLinkHandler listLinkHandler) {
        return new dz7(this, listLinkHandler);
    }

    @Override
    public ea1 f(ListLinkHandler listLinkHandler) {
        return new fz7(this, listLinkHandler);
    }

    @Override
    public em5 g() {
        return hz7.r();
    }

    @Override
    public jg5 j() throws ExtractionException {
        final g08 g08VarT = g08.t();
        jg5.b bVar = new jg5.b() {
            @Override
            public final ig5 a(StreamingService streamingService, String str, String str2) {
                return this.a.A(g08VarT, streamingService, str, str2);
            }
        };
        jg5 jg5Var = new jg5(this);
        try {
            jg5Var.a(bVar, g08VarT, "Trending");
            jg5Var.a(bVar, g08VarT, "Most liked");
            jg5Var.a(bVar, g08VarT, "Recently added");
            jg5Var.a(bVar, g08VarT, "Local");
            jg5Var.e("Trending");
            return jg5Var;
        } catch (Exception e) {
            throw new ExtractionException(e);
        }
    }

    @Override
    public a n(ListLinkHandler listLinkHandler) {
        return new nz7(this, listLinkHandler);
    }

    @Override
    public em5 o() {
        return pz7.r();
    }

    @Override
    public SearchExtractor p(SearchQueryHandler searchQueryHandler) {
        List<String> contentFilters = searchQueryHandler.getContentFilters();
        boolean z = false;
        if (!contentFilters.isEmpty() && contentFilters.get(0).startsWith("sepia_")) {
            z = true;
        }
        return new qz7(this, searchQueryHandler, z);
    }

    @Override
    public StreamExtractor t(LinkHandler linkHandler) {
        return new xz7(this, linkHandler);
    }

    @Override
    public il5 u() {
        return zz7.j();
    }

    public String z() {
        return this.c.a();
    }

    public tz7(int i, iz7 iz7Var) {
        super(i, "PeerTube", Arrays.asList(StreamingService.ServiceInfo.MediaCapability.VIDEO, StreamingService.ServiceInfo.MediaCapability.COMMENTS));
        this.c = iz7Var;
    }
}

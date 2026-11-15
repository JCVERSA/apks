package defpackage;

import org.schabi.newpipe.extractor.StreamingService;
import org.schabi.newpipe.extractor.linkhandler.ListLinkHandler;

public abstract class fu0 extends tl5 {
    public fu0(StreamingService streamingService, ListLinkHandler listLinkHandler) {
        super(streamingService, listLinkHandler);
    }

    @Override
    public String k() {
        return s().getContentFilters().get(0);
    }
}

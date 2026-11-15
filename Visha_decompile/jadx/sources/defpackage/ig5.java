package defpackage;

import org.schabi.newpipe.extractor.StreamingService;
import org.schabi.newpipe.extractor.linkhandler.ListLinkHandler;

public abstract class ig5 extends tl5 {
    public final String g;

    public ig5(StreamingService streamingService, ListLinkHandler listLinkHandler, String str) {
        super(streamingService, listLinkHandler);
        this.g = str;
    }

    @Override
    public String i() {
        return this.g;
    }

    @Override
    public abstract String k();
}

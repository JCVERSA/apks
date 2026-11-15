package org.schabi.newpipe.extractor.playlist;

import defpackage.tl5;
import java.util.Collections;
import java.util.List;
import org.schabi.newpipe.extractor.StreamingService;
import org.schabi.newpipe.extractor.linkhandler.ListLinkHandler;
import org.schabi.newpipe.extractor.stream.Description;

public abstract class a extends tl5 {
    public a(StreamingService streamingService, ListLinkHandler listLinkHandler) {
        super(streamingService, listLinkHandler);
    }

    public String A() {
        return "";
    }

    public abstract List B();

    public abstract List C();

    public abstract String D();

    public abstract String E();

    public List u() {
        return Collections.emptyList();
    }

    public abstract Description v();

    public PlaylistInfo.PlaylistType w() {
        return PlaylistInfo.PlaylistType.NORMAL;
    }

    public abstract long x();

    public List y() {
        return Collections.emptyList();
    }

    public String z() {
        return "";
    }
}

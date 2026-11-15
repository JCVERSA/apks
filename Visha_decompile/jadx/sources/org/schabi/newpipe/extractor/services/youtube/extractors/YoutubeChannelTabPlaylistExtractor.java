package org.schabi.newpipe.extractor.services.youtube.extractors;

import defpackage.c23;
import defpackage.fu0;
import defpackage.oxc;
import defpackage.qxc;
import defpackage.tl5;
import java.util.Collections;
import java.util.List;
import org.schabi.newpipe.extractor.Page;
import org.schabi.newpipe.extractor.StreamingService;
import org.schabi.newpipe.extractor.exceptions.ContentNotAvailableException;
import org.schabi.newpipe.extractor.exceptions.ParsingException;
import org.schabi.newpipe.extractor.linkhandler.ListLinkHandler;

public class YoutubeChannelTabPlaylistExtractor extends fu0 {
    public final org.schabi.newpipe.extractor.playlist.a g;
    public boolean h;

    public static final class SystemPlaylistUrlCreationException extends RuntimeException {
        public SystemPlaylistUrlCreationException(String str, Throwable th) {
            super(str, th);
        }
    }

    public YoutubeChannelTabPlaylistExtractor(StreamingService streamingService, ListLinkHandler listLinkHandler) {
        super(streamingService, listLinkHandler);
        this.g = new oxc(streamingService, u(listLinkHandler));
    }

    @Override
    public void q(c23 c23Var) {
        try {
            this.g.q(c23Var);
            if (this.h) {
                return;
            }
            this.h = true;
        } catch (ContentNotAvailableException unused) {
        }
    }

    @Override
    public tl5.a r() {
        return !this.h ? tl5.a.a() : this.g.r();
    }

    @Override
    public tl5.a t(Page page) {
        return !this.h ? tl5.a.a() : this.g.t(page);
    }

    public final ListLinkHandler u(ListLinkHandler listLinkHandler) {
        String str;
        byte b = 0;
        List<String> contentFilters = listLinkHandler.getContentFilters();
        if (contentFilters.isEmpty()) {
            throw new IllegalArgumentException("A content filter is required");
        }
        String id = listLinkHandler.getId();
        if (org.schabi.newpipe.extractor.utils.a.m(id) || !id.startsWith("UC")) {
            throw new IllegalArgumentException("Invalid channel ID");
        }
        String strSubstring = id.substring(2);
        String str2 = contentFilters.get(0);
        str2.hashCode();
        switch (str2.hashCode()) {
            case -903148681:
                if (!str2.equals("shorts")) {
                    b = -1;
                }
                break;
            case -816678056:
                b = !str2.equals("videos") ? (byte) -1 : (byte) 1;
                break;
            case -439267705:
                b = !str2.equals("livestreams") ? (byte) -1 : (byte) 2;
                break;
            default:
                b = -1;
                break;
        }
        switch (b) {
            case 0:
                str = "UUSH" + strSubstring;
                break;
            case 1:
                str = "UULF" + strSubstring;
                break;
            case 2:
                str = "UULV" + strSubstring;
                break;
            default:
                throw new IllegalArgumentException("Only Videos, Shorts and Livestreams tabs can extracted as playlists");
        }
        String str3 = str;
        try {
            String strG = qxc.r().g(str3);
            return new ListLinkHandler(strG, strG, str3, Collections.emptyList(), "");
        } catch (ParsingException e) {
            throw new SystemPlaylistUrlCreationException("Could not create a YouTube playlist from a valid playlist ID", e);
        }
    }
}

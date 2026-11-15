package defpackage;

import java.io.Serializable;
import org.schabi.newpipe.extractor.StreamingService;
import org.schabi.newpipe.extractor.linkhandler.ListLinkHandler;
import org.schabi.newpipe.extractor.linkhandler.ReadyChannelTabListLinkHandler;
import org.schabi.newpipe.extractor.services.youtube.extractors.YoutubeChannelTabPlaylistExtractor;

public final class rsc implements ReadyChannelTabListLinkHandler.ChannelTabExtractorBuilder, Serializable {
    @Override
    public final fu0 build(StreamingService streamingService, ListLinkHandler listLinkHandler) {
        return new YoutubeChannelTabPlaylistExtractor(streamingService, listLinkHandler);
    }
}

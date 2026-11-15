package org.schabi.newpipe.extractor.linkhandler;

import defpackage.fu0;
import defpackage.hdb;
import java.io.Serializable;
import org.schabi.newpipe.extractor.StreamingService;

public class ReadyChannelTabListLinkHandler extends ListLinkHandler {
    private final ChannelTabExtractorBuilder extractorBuilder;

    public interface ChannelTabExtractorBuilder extends Serializable {
        fu0 build(StreamingService streamingService, ListLinkHandler listLinkHandler);
    }

    public ReadyChannelTabListLinkHandler(String str, String str2, String str3, ChannelTabExtractorBuilder channelTabExtractorBuilder) {
        super(str, str, str2, hdb.a(new Object[]{str3}), "");
        this.extractorBuilder = channelTabExtractorBuilder;
    }

    public fu0 getChannelTabExtractor(StreamingService streamingService) {
        return this.extractorBuilder.build(streamingService, new ListLinkHandler((ListLinkHandler) this));
    }
}

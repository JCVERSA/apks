package org.schabi.newpipe.extractor.channel.tabs;

import defpackage.fu0;
import defpackage.ok3;
import defpackage.tl5;
import java.io.IOException;
import org.schabi.newpipe.extractor.InfoItem;
import org.schabi.newpipe.extractor.ListInfo;
import org.schabi.newpipe.extractor.Page;
import org.schabi.newpipe.extractor.StreamingService;
import org.schabi.newpipe.extractor.exceptions.ExtractionException;
import org.schabi.newpipe.extractor.linkhandler.ListLinkHandler;

public class ChannelTabInfo extends ListInfo<InfoItem> {
    public ChannelTabInfo(int i, ListLinkHandler listLinkHandler) {
        super(i, listLinkHandler, listLinkHandler.getContentFilters().get(0));
    }

    public static ChannelTabInfo getInfo(StreamingService streamingService, ListLinkHandler listLinkHandler) throws IOException, ExtractionException {
        fu0 fu0VarD = streamingService.d(listLinkHandler);
        fu0VarD.b();
        return getInfo(fu0VarD);
    }

    public static tl5.a getMoreItems(StreamingService streamingService, ListLinkHandler listLinkHandler, Page page) throws IOException, ExtractionException {
        return streamingService.d(listLinkHandler).t(page);
    }

    public static ChannelTabInfo getInfo(fu0 fu0Var) {
        ChannelTabInfo channelTabInfo = new ChannelTabInfo(fu0Var.n(), fu0Var.s());
        try {
            channelTabInfo.setOriginalUrl(fu0Var.l());
        } catch (Exception e) {
            channelTabInfo.addError(e);
        }
        tl5.a aVarA = ok3.a(channelTabInfo, fu0Var);
        channelTabInfo.setRelatedItems(aVarA.c());
        channelTabInfo.setNextPage(aVarA.d());
        return channelTabInfo;
    }
}

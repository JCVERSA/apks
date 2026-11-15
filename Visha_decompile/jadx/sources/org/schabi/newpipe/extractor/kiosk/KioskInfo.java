package org.schabi.newpipe.extractor.kiosk;

import defpackage.ig5;
import defpackage.ok3;
import defpackage.tl5;
import java.io.IOException;
import org.schabi.newpipe.extractor.ListInfo;
import org.schabi.newpipe.extractor.Page;
import org.schabi.newpipe.extractor.StreamingService;
import org.schabi.newpipe.extractor.a;
import org.schabi.newpipe.extractor.exceptions.ExtractionException;
import org.schabi.newpipe.extractor.linkhandler.ListLinkHandler;
import org.schabi.newpipe.extractor.stream.StreamInfoItem;

public final class KioskInfo extends ListInfo<StreamInfoItem> {
    private KioskInfo(int i, ListLinkHandler listLinkHandler, String str) {
        super(i, listLinkHandler, str);
    }

    public static KioskInfo getInfo(String str) throws IOException, ExtractionException {
        return getInfo(a.g(str), str);
    }

    public static tl5.a getMoreItems(StreamingService streamingService, String str, Page page) throws IOException, ExtractionException {
        return streamingService.j().c(str, page).t(page);
    }

    public static KioskInfo getInfo(StreamingService streamingService, String str) throws IOException, ExtractionException {
        ig5 ig5VarC = streamingService.j().c(str, null);
        ig5VarC.b();
        return getInfo(ig5VarC);
    }

    public static KioskInfo getInfo(ig5 ig5Var) throws ExtractionException {
        KioskInfo kioskInfo = new KioskInfo(ig5Var.n(), ig5Var.s(), ig5Var.k());
        tl5.a aVarA = ok3.a(kioskInfo, ig5Var);
        kioskInfo.setRelatedItems(aVarA.c());
        kioskInfo.setNextPage(aVarA.d());
        return kioskInfo;
    }
}

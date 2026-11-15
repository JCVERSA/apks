package org.schabi.newpipe.extractor.feed;

import defpackage.ok3;
import defpackage.rp3;
import defpackage.tl5;
import java.io.IOException;
import java.util.List;
import org.schabi.newpipe.extractor.ListInfo;
import org.schabi.newpipe.extractor.StreamingService;
import org.schabi.newpipe.extractor.a;
import org.schabi.newpipe.extractor.exceptions.ExtractionException;
import org.schabi.newpipe.extractor.stream.StreamInfoItem;

public class FeedInfo extends ListInfo<StreamInfoItem> {
    public FeedInfo(int i, String str, String str2, String str3, String str4, List<String> list, String str5) {
        super(i, str, str2, str3, str4, list, str5);
    }

    public static FeedInfo getInfo(String str) throws IOException, ExtractionException {
        return getInfo(a.g(str), str);
    }

    public static FeedInfo getInfo(StreamingService streamingService, String str) throws IOException, ExtractionException {
        rp3 rp3VarI = streamingService.i(str);
        if (rp3VarI != null) {
            rp3VarI.b();
            return getInfo(rp3VarI);
        }
        throw new IllegalArgumentException("Service \"" + streamingService.r().a() + "\" doesn't support FeedExtractor.");
    }

    public static FeedInfo getInfo(rp3 rp3Var) throws IOException, ExtractionException {
        rp3Var.b();
        FeedInfo feedInfo = new FeedInfo(rp3Var.n(), rp3Var.i(), rp3Var.p(), rp3Var.l(), rp3Var.k(), null, null);
        tl5.a aVarA = ok3.a(feedInfo, rp3Var);
        feedInfo.setRelatedItems(aVarA.c());
        feedInfo.setNextPage(aVarA.d());
        return feedInfo;
    }
}

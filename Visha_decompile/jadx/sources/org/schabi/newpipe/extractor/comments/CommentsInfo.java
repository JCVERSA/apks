package org.schabi.newpipe.extractor.comments;

import defpackage.ea1;
import defpackage.ok3;
import defpackage.tl5;
import java.io.IOException;
import org.schabi.newpipe.extractor.ListInfo;
import org.schabi.newpipe.extractor.Page;
import org.schabi.newpipe.extractor.StreamingService;
import org.schabi.newpipe.extractor.a;
import org.schabi.newpipe.extractor.exceptions.ExtractionException;
import org.schabi.newpipe.extractor.linkhandler.ListLinkHandler;

public final class CommentsInfo extends ListInfo<CommentsInfoItem> {
    private int commentsCount;
    private boolean commentsDisabled;
    private transient ea1 commentsExtractor;

    private CommentsInfo(int i, ListLinkHandler listLinkHandler, String str) {
        super(i, listLinkHandler, str);
        this.commentsDisabled = false;
    }

    public static CommentsInfo getInfo(String str) throws IOException, ExtractionException {
        return getInfo(a.g(str), str);
    }

    public static tl5.a getMoreItems(CommentsInfo commentsInfo, Page page) throws IOException, ExtractionException {
        return getMoreItems(a.f(commentsInfo.getServiceId()), commentsInfo.getUrl(), page);
    }

    public int getCommentsCount() {
        return this.commentsCount;
    }

    public ea1 getCommentsExtractor() {
        return this.commentsExtractor;
    }

    public boolean isCommentsDisabled() {
        return this.commentsDisabled;
    }

    public void setCommentsCount(int i) {
        this.commentsCount = i;
    }

    public void setCommentsDisabled(boolean z) {
        this.commentsDisabled = z;
    }

    public void setCommentsExtractor(ea1 ea1Var) {
        this.commentsExtractor = ea1Var;
    }

    public static CommentsInfo getInfo(StreamingService streamingService, String str) throws IOException, ExtractionException {
        return getInfo(streamingService.e(str));
    }

    public static tl5.a getMoreItems(StreamingService streamingService, CommentsInfo commentsInfo, Page page) throws IOException, ExtractionException {
        return getMoreItems(streamingService, commentsInfo.getUrl(), page);
    }

    public static CommentsInfo getInfo(ea1 ea1Var) throws IOException, ExtractionException {
        if (ea1Var == null) {
            return null;
        }
        ea1Var.b();
        CommentsInfo commentsInfo = new CommentsInfo(ea1Var.n(), ea1Var.s(), ea1Var.k());
        commentsInfo.setCommentsExtractor(ea1Var);
        tl5.a aVarA = ok3.a(commentsInfo, ea1Var);
        commentsInfo.setCommentsDisabled(ea1Var.v());
        commentsInfo.setRelatedItems(aVarA.c());
        try {
            commentsInfo.setCommentsCount(ea1Var.u());
        } catch (Exception e) {
            commentsInfo.addError(e);
        }
        commentsInfo.setNextPage(aVarA.d());
        return commentsInfo;
    }

    public static tl5.a getMoreItems(StreamingService streamingService, String str, Page page) throws IOException, ExtractionException {
        return streamingService.e(str).t(page);
    }
}

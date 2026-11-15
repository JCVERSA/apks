package defpackage;

import org.schabi.newpipe.extractor.comments.CommentsInfoItem;

public final class ga1 extends yz4 {
    public ga1(int i) {
        super(i);
    }

    @Override
    public void d(fa1 fa1Var) {
        try {
            c(a(fa1Var));
        } catch (Exception e) {
            b(e);
        }
    }

    @Override
    public CommentsInfoItem a(fa1 fa1Var) {
        CommentsInfoItem commentsInfoItem = new CommentsInfoItem(g(), fa1Var.getUrl(), fa1Var.getName());
        try {
            commentsInfoItem.setCommentId(fa1Var.q());
        } catch (Exception e) {
            b(e);
        }
        try {
            commentsInfoItem.setCommentText(fa1Var.l());
        } catch (Exception e2) {
            b(e2);
        }
        try {
            commentsInfoItem.setUploaderName(fa1Var.b());
        } catch (Exception e3) {
            b(e3);
        }
        try {
            commentsInfoItem.setUploaderAvatars(fa1Var.e());
        } catch (Exception e4) {
            b(e4);
        }
        try {
            commentsInfoItem.setUploaderUrl(fa1Var.a());
        } catch (Exception e5) {
            b(e5);
        }
        try {
            commentsInfoItem.setTextualUploadDate(fa1Var.f());
        } catch (Exception e6) {
            b(e6);
        }
        try {
            commentsInfoItem.setUploadDate(fa1Var.g());
        } catch (Exception e7) {
            b(e7);
        }
        try {
            commentsInfoItem.setLikeCount(fa1Var.r());
        } catch (Exception e8) {
            b(e8);
        }
        try {
            commentsInfoItem.setTextualLikeCount(fa1Var.y());
        } catch (Exception e9) {
            b(e9);
        }
        try {
            commentsInfoItem.setThumbnails(fa1Var.j());
        } catch (Exception e10) {
            b(e10);
        }
        try {
            commentsInfoItem.setHeartedByUploader(fa1Var.p());
        } catch (Exception e11) {
            b(e11);
        }
        try {
            commentsInfoItem.setPinned(fa1Var.k());
        } catch (Exception e12) {
            b(e12);
        }
        try {
            commentsInfoItem.setStreamPosition(fa1Var.x());
        } catch (Exception e13) {
            b(e13);
        }
        try {
            commentsInfoItem.setReplyCount(fa1Var.m());
        } catch (Exception e14) {
            b(e14);
        }
        try {
            commentsInfoItem.setReplies(fa1Var.A());
        } catch (Exception e15) {
            b(e15);
        }
        try {
            commentsInfoItem.setChannelOwner(fa1Var.h());
        } catch (Exception e16) {
            b(e16);
        }
        try {
            commentsInfoItem.setCreatorReply(fa1Var.i());
        } catch (Exception e17) {
            b(e17);
        }
        return commentsInfoItem;
    }
}

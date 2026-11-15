.class public Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;
.super Lorg/schabi/newpipe/extractor/InfoItem;
.source "SourceFile"


# static fields
.field public static final NO_LIKE_COUNT:I = -0x1

.field public static final NO_STREAM_POSITION:I = -0x1

.field public static final UNKNOWN_REPLY_COUNT:I = -0x1


# instance fields
.field private commentId:Ljava/lang/String;

.field private commentText:Lorg/schabi/newpipe/extractor/stream/Description;

.field private creatorReply:Z

.field private heartedByUploader:Z

.field private isChannelOwner:Z

.field private likeCount:I

.field private pinned:Z

.field private replies:Lorg/schabi/newpipe/extractor/Page;

.field private replyCount:I

.field private streamPosition:I

.field private textualLikeCount:Ljava/lang/String;

.field private textualUploadDate:Ljava/lang/String;

.field private uploadDate:Lorg/schabi/newpipe/extractor/localization/DateWrapper;

.field private uploaderAvatars:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/Image;",
            ">;"
        }
    .end annotation
.end field

.field private uploaderName:Ljava/lang/String;

.field private uploaderUrl:Ljava/lang/String;

.field private uploaderVerified:Z


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lorg/schabi/newpipe/extractor/InfoItem$InfoType;->COMMENT:Lorg/schabi/newpipe/extractor/InfoItem$InfoType;

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/schabi/newpipe/extractor/InfoItem;-><init>(Lorg/schabi/newpipe/extractor/InfoItem$InfoType;ILjava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lorg/schabi/newpipe/extractor/stream/Description;->EMPTY_DESCRIPTION:Lorg/schabi/newpipe/extractor/stream/Description;

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->commentText:Lorg/schabi/newpipe/extractor/stream/Description;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->uploaderAvatars:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getCommentId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->commentId:Ljava/lang/String;

    return-object p0
.end method

.method public getCommentText()Lorg/schabi/newpipe/extractor/stream/Description;
    .locals 0

    iget-object p0, p0, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->commentText:Lorg/schabi/newpipe/extractor/stream/Description;

    return-object p0
.end method

.method public getLikeCount()I
    .locals 0

    iget p0, p0, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->likeCount:I

    return p0
.end method

.method public getReplies()Lorg/schabi/newpipe/extractor/Page;
    .locals 0

    iget-object p0, p0, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->replies:Lorg/schabi/newpipe/extractor/Page;

    return-object p0
.end method

.method public getReplyCount()I
    .locals 0

    iget p0, p0, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->replyCount:I

    return p0
.end method

.method public getStreamPosition()I
    .locals 0

    iget p0, p0, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->streamPosition:I

    return p0
.end method

.method public getTextualLikeCount()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->textualLikeCount:Ljava/lang/String;

    return-object p0
.end method

.method public getTextualUploadDate()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->textualUploadDate:Ljava/lang/String;

    return-object p0
.end method

.method public getUploadDate()Lorg/schabi/newpipe/extractor/localization/DateWrapper;
    .locals 0

    iget-object p0, p0, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->uploadDate:Lorg/schabi/newpipe/extractor/localization/DateWrapper;

    return-object p0
.end method

.method public getUploaderAvatars()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/Image;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->uploaderAvatars:Ljava/util/List;

    return-object p0
.end method

.method public getUploaderName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->uploaderName:Ljava/lang/String;

    return-object p0
.end method

.method public getUploaderUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->uploaderUrl:Ljava/lang/String;

    return-object p0
.end method

.method public hasCreatorReply()Z
    .locals 0

    iget-boolean p0, p0, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->creatorReply:Z

    return p0
.end method

.method public isChannelOwner()Z
    .locals 0

    iget-boolean p0, p0, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->isChannelOwner:Z

    return p0
.end method

.method public isHeartedByUploader()Z
    .locals 0

    iget-boolean p0, p0, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->heartedByUploader:Z

    return p0
.end method

.method public isPinned()Z
    .locals 0

    iget-boolean p0, p0, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->pinned:Z

    return p0
.end method

.method public isUploaderVerified()Z
    .locals 0

    iget-boolean p0, p0, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->uploaderVerified:Z

    return p0
.end method

.method public setChannelOwner(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->isChannelOwner:Z

    return-void
.end method

.method public setCommentId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->commentId:Ljava/lang/String;

    return-void
.end method

.method public setCommentText(Lorg/schabi/newpipe/extractor/stream/Description;)V
    .locals 0

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->commentText:Lorg/schabi/newpipe/extractor/stream/Description;

    return-void
.end method

.method public setCreatorReply(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->creatorReply:Z

    return-void
.end method

.method public setHeartedByUploader(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->heartedByUploader:Z

    return-void
.end method

.method public setLikeCount(I)V
    .locals 0

    iput p1, p0, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->likeCount:I

    return-void
.end method

.method public setPinned(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->pinned:Z

    return-void
.end method

.method public setReplies(Lorg/schabi/newpipe/extractor/Page;)V
    .locals 0

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->replies:Lorg/schabi/newpipe/extractor/Page;

    return-void
.end method

.method public setReplyCount(I)V
    .locals 0

    iput p1, p0, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->replyCount:I

    return-void
.end method

.method public setStreamPosition(I)V
    .locals 0

    iput p1, p0, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->streamPosition:I

    return-void
.end method

.method public setTextualLikeCount(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->textualLikeCount:Ljava/lang/String;

    return-void
.end method

.method public setTextualUploadDate(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->textualUploadDate:Ljava/lang/String;

    return-void
.end method

.method public setUploadDate(Lorg/schabi/newpipe/extractor/localization/DateWrapper;)V
    .locals 0

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->uploadDate:Lorg/schabi/newpipe/extractor/localization/DateWrapper;

    return-void
.end method

.method public setUploaderAvatars(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/Image;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->uploaderAvatars:Ljava/util/List;

    return-void
.end method

.method public setUploaderName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->uploaderName:Ljava/lang/String;

    return-void
.end method

.method public setUploaderUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->uploaderUrl:Ljava/lang/String;

    return-void
.end method

.method public setUploaderVerified(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->uploaderVerified:Z

    return-void
.end method

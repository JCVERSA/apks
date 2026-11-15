.class public final Lorg/schabi/newpipe/extractor/comments/CommentsInfo;
.super Lorg/schabi/newpipe/extractor/ListInfo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/schabi/newpipe/extractor/ListInfo<",
        "Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;",
        ">;"
    }
.end annotation


# instance fields
.field private commentsCount:I

.field private commentsDisabled:Z

.field private transient commentsExtractor:Lea1;


# direct methods
.method private constructor <init>(ILorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/schabi/newpipe/extractor/ListInfo;-><init>(ILorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/schabi/newpipe/extractor/comments/CommentsInfo;->commentsDisabled:Z

    return-void
.end method

.method public static getInfo(Lea1;)Lorg/schabi/newpipe/extractor/comments/CommentsInfo;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lmk3;->b()V

    .line 4
    invoke-virtual {p0}, Lea1;->k()Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lmk3;->n()I

    move-result v1

    .line 6
    invoke-virtual {p0}, Ltl5;->s()Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;

    move-result-object v2

    .line 7
    new-instance v3, Lorg/schabi/newpipe/extractor/comments/CommentsInfo;

    invoke-direct {v3, v1, v2, v0}, Lorg/schabi/newpipe/extractor/comments/CommentsInfo;-><init>(ILorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;Ljava/lang/String;)V

    .line 8
    invoke-virtual {v3, p0}, Lorg/schabi/newpipe/extractor/comments/CommentsInfo;->setCommentsExtractor(Lea1;)V

    .line 9
    invoke-static {v3, p0}, Lok3;->a(Lorg/schabi/newpipe/extractor/Info;Ltl5;)Ltl5$a;

    move-result-object v0

    .line 10
    invoke-virtual {p0}, Lea1;->v()Z

    move-result v1

    invoke-virtual {v3, v1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfo;->setCommentsDisabled(Z)V

    .line 11
    invoke-virtual {v0}, Ltl5$a;->c()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v3, v1}, Lorg/schabi/newpipe/extractor/ListInfo;->setRelatedItems(Ljava/util/List;)V

    .line 12
    :try_start_0
    invoke-virtual {p0}, Lea1;->u()I

    move-result p0

    invoke-virtual {v3, p0}, Lorg/schabi/newpipe/extractor/comments/CommentsInfo;->setCommentsCount(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 13
    invoke-virtual {v3, p0}, Lorg/schabi/newpipe/extractor/Info;->addError(Ljava/lang/Throwable;)V

    .line 14
    :goto_0
    invoke-virtual {v0}, Ltl5$a;->d()Lorg/schabi/newpipe/extractor/Page;

    move-result-object p0

    invoke-virtual {v3, p0}, Lorg/schabi/newpipe/extractor/ListInfo;->setNextPage(Lorg/schabi/newpipe/extractor/Page;)V

    return-object v3
.end method

.method public static getInfo(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/comments/CommentsInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/a;->g(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/StreamingService;

    move-result-object v0

    invoke-static {v0, p0}, Lorg/schabi/newpipe/extractor/comments/CommentsInfo;->getInfo(Lorg/schabi/newpipe/extractor/StreamingService;Ljava/lang/String;)Lorg/schabi/newpipe/extractor/comments/CommentsInfo;

    move-result-object p0

    return-object p0
.end method

.method public static getInfo(Lorg/schabi/newpipe/extractor/StreamingService;Ljava/lang/String;)Lorg/schabi/newpipe/extractor/comments/CommentsInfo;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/extractor/StreamingService;->e(Ljava/lang/String;)Lea1;

    move-result-object p0

    invoke-static {p0}, Lorg/schabi/newpipe/extractor/comments/CommentsInfo;->getInfo(Lea1;)Lorg/schabi/newpipe/extractor/comments/CommentsInfo;

    move-result-object p0

    return-object p0
.end method

.method public static getMoreItems(Lorg/schabi/newpipe/extractor/StreamingService;Ljava/lang/String;Lorg/schabi/newpipe/extractor/Page;)Ltl5$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/schabi/newpipe/extractor/StreamingService;",
            "Ljava/lang/String;",
            "Lorg/schabi/newpipe/extractor/Page;",
            ")",
            "Ltl5$a;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;
        }
    .end annotation

    .line 3
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/extractor/StreamingService;->e(Ljava/lang/String;)Lea1;

    move-result-object p0

    invoke-virtual {p0, p2}, Ltl5;->t(Lorg/schabi/newpipe/extractor/Page;)Ltl5$a;

    move-result-object p0

    return-object p0
.end method

.method public static getMoreItems(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/comments/CommentsInfo;Lorg/schabi/newpipe/extractor/Page;)Ltl5$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/schabi/newpipe/extractor/StreamingService;",
            "Lorg/schabi/newpipe/extractor/comments/CommentsInfo;",
            "Lorg/schabi/newpipe/extractor/Page;",
            ")",
            "Ltl5$a;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;
        }
    .end annotation

    .line 2
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Info;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lorg/schabi/newpipe/extractor/comments/CommentsInfo;->getMoreItems(Lorg/schabi/newpipe/extractor/StreamingService;Ljava/lang/String;Lorg/schabi/newpipe/extractor/Page;)Ltl5$a;

    move-result-object p0

    return-object p0
.end method

.method public static getMoreItems(Lorg/schabi/newpipe/extractor/comments/CommentsInfo;Lorg/schabi/newpipe/extractor/Page;)Ltl5$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/schabi/newpipe/extractor/comments/CommentsInfo;",
            "Lorg/schabi/newpipe/extractor/Page;",
            ")",
            "Ltl5$a;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Info;->getServiceId()I

    move-result v0

    invoke-static {v0}, Lorg/schabi/newpipe/extractor/a;->f(I)Lorg/schabi/newpipe/extractor/StreamingService;

    move-result-object v0

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Info;->getUrl()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, p1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfo;->getMoreItems(Lorg/schabi/newpipe/extractor/StreamingService;Ljava/lang/String;Lorg/schabi/newpipe/extractor/Page;)Ltl5$a;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getCommentsCount()I
    .locals 0

    iget p0, p0, Lorg/schabi/newpipe/extractor/comments/CommentsInfo;->commentsCount:I

    return p0
.end method

.method public getCommentsExtractor()Lea1;
    .locals 0

    iget-object p0, p0, Lorg/schabi/newpipe/extractor/comments/CommentsInfo;->commentsExtractor:Lea1;

    return-object p0
.end method

.method public isCommentsDisabled()Z
    .locals 0

    iget-boolean p0, p0, Lorg/schabi/newpipe/extractor/comments/CommentsInfo;->commentsDisabled:Z

    return p0
.end method

.method public setCommentsCount(I)V
    .locals 0

    iput p1, p0, Lorg/schabi/newpipe/extractor/comments/CommentsInfo;->commentsCount:I

    return-void
.end method

.method public setCommentsDisabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/schabi/newpipe/extractor/comments/CommentsInfo;->commentsDisabled:Z

    return-void
.end method

.method public setCommentsExtractor(Lea1;)V
    .locals 0

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/comments/CommentsInfo;->commentsExtractor:Lea1;

    return-void
.end method

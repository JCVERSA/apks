.class public Lorg/schabi/newpipe/extractor/feed/FeedInfo;
.super Lorg/schabi/newpipe/extractor/ListInfo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/schabi/newpipe/extractor/ListInfo<",
        "Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct/range {p0 .. p7}, Lorg/schabi/newpipe/extractor/ListInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public static getInfo(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/feed/FeedInfo;
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

    invoke-static {v0, p0}, Lorg/schabi/newpipe/extractor/feed/FeedInfo;->getInfo(Lorg/schabi/newpipe/extractor/StreamingService;Ljava/lang/String;)Lorg/schabi/newpipe/extractor/feed/FeedInfo;

    move-result-object p0

    return-object p0
.end method

.method public static getInfo(Lorg/schabi/newpipe/extractor/StreamingService;Ljava/lang/String;)Lorg/schabi/newpipe/extractor/feed/FeedInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/extractor/StreamingService;->i(Ljava/lang/String;)Lrp3;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lmk3;->b()V

    .line 4
    invoke-static {p1}, Lorg/schabi/newpipe/extractor/feed/FeedInfo;->getInfo(Lrp3;)Lorg/schabi/newpipe/extractor/feed/FeedInfo;

    move-result-object p0

    return-object p0

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/StreamingService;->r()Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo;

    move-result-object p0

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo;->a()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Service \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\" doesn\'t support FeedExtractor."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static getInfo(Lrp3;)Lorg/schabi/newpipe/extractor/feed/FeedInfo;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;
        }
    .end annotation

    .line 6
    invoke-virtual {p0}, Lmk3;->b()V

    .line 7
    invoke-virtual {p0}, Lmk3;->n()I

    move-result v1

    .line 8
    invoke-virtual {p0}, Lmk3;->i()Ljava/lang/String;

    move-result-object v2

    .line 9
    invoke-virtual {p0}, Lmk3;->p()Ljava/lang/String;

    move-result-object v3

    .line 10
    invoke-virtual {p0}, Lmk3;->l()Ljava/lang/String;

    move-result-object v4

    .line 11
    invoke-virtual {p0}, Lmk3;->k()Ljava/lang/String;

    move-result-object v5

    .line 12
    new-instance v8, Lorg/schabi/newpipe/extractor/feed/FeedInfo;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lorg/schabi/newpipe/extractor/feed/FeedInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 13
    invoke-static {v8, p0}, Lok3;->a(Lorg/schabi/newpipe/extractor/Info;Ltl5;)Ltl5$a;

    move-result-object p0

    .line 14
    invoke-virtual {p0}, Ltl5$a;->c()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v8, v0}, Lorg/schabi/newpipe/extractor/ListInfo;->setRelatedItems(Ljava/util/List;)V

    .line 15
    invoke-virtual {p0}, Ltl5$a;->d()Lorg/schabi/newpipe/extractor/Page;

    move-result-object p0

    invoke-virtual {v8, p0}, Lorg/schabi/newpipe/extractor/ListInfo;->setNextPage(Lorg/schabi/newpipe/extractor/Page;)V

    return-object v8
.end method

.class public Lorg/schabi/newpipe/extractor/channel/tabs/ChannelTabInfo;
.super Lorg/schabi/newpipe/extractor/ListInfo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/schabi/newpipe/extractor/ListInfo<",
        "Lorg/schabi/newpipe/extractor/InfoItem;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(ILorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)V
    .locals 2

    invoke-virtual {p2}, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;->getContentFilters()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, p1, p2, v0}, Lorg/schabi/newpipe/extractor/ListInfo;-><init>(ILorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;Ljava/lang/String;)V

    return-void
.end method

.method public static getInfo(Lfu0;)Lorg/schabi/newpipe/extractor/channel/tabs/ChannelTabInfo;
    .locals 3

    .line 4
    new-instance v0, Lorg/schabi/newpipe/extractor/channel/tabs/ChannelTabInfo;

    .line 5
    invoke-virtual {p0}, Lmk3;->n()I

    move-result v1

    invoke-virtual {p0}, Ltl5;->s()Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/schabi/newpipe/extractor/channel/tabs/ChannelTabInfo;-><init>(ILorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)V

    .line 6
    :try_start_0
    invoke-virtual {p0}, Lmk3;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/Info;->setOriginalUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 7
    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/Info;->addError(Ljava/lang/Throwable;)V

    .line 8
    :goto_0
    invoke-static {v0, p0}, Lok3;->a(Lorg/schabi/newpipe/extractor/Info;Ltl5;)Ltl5$a;

    move-result-object p0

    .line 9
    invoke-virtual {p0}, Ltl5$a;->c()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/ListInfo;->setRelatedItems(Ljava/util/List;)V

    .line 10
    invoke-virtual {p0}, Ltl5$a;->d()Lorg/schabi/newpipe/extractor/Page;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/schabi/newpipe/extractor/ListInfo;->setNextPage(Lorg/schabi/newpipe/extractor/Page;)V

    return-object v0
.end method

.method public static getInfo(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)Lorg/schabi/newpipe/extractor/channel/tabs/ChannelTabInfo;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/extractor/StreamingService;->d(Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)Lfu0;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Lmk3;->b()V

    .line 3
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/channel/tabs/ChannelTabInfo;->getInfo(Lfu0;)Lorg/schabi/newpipe/extractor/channel/tabs/ChannelTabInfo;

    move-result-object p0

    return-object p0
.end method

.method public static getMoreItems(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;Lorg/schabi/newpipe/extractor/Page;)Ltl5$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/schabi/newpipe/extractor/StreamingService;",
            "Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;",
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

    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/extractor/StreamingService;->d(Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)Lfu0;

    move-result-object p0

    invoke-virtual {p0, p2}, Ltl5;->t(Lorg/schabi/newpipe/extractor/Page;)Ltl5$a;

    move-result-object p0

    return-object p0
.end method

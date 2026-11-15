.class public final Lorg/schabi/newpipe/extractor/kiosk/KioskInfo;
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
.method private constructor <init>(ILorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/schabi/newpipe/extractor/ListInfo;-><init>(ILorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;Ljava/lang/String;)V

    return-void
.end method

.method public static getInfo(Lig5;)Lorg/schabi/newpipe/extractor/kiosk/KioskInfo;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;
        }
    .end annotation

    .line 5
    new-instance v0, Lorg/schabi/newpipe/extractor/kiosk/KioskInfo;

    invoke-virtual {p0}, Lmk3;->n()I

    move-result v1

    .line 6
    invoke-virtual {p0}, Ltl5;->s()Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;

    move-result-object v2

    .line 7
    invoke-virtual {p0}, Lig5;->k()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/schabi/newpipe/extractor/kiosk/KioskInfo;-><init>(ILorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;Ljava/lang/String;)V

    .line 8
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

.method public static getInfo(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/kiosk/KioskInfo;
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

    invoke-static {v0, p0}, Lorg/schabi/newpipe/extractor/kiosk/KioskInfo;->getInfo(Lorg/schabi/newpipe/extractor/StreamingService;Ljava/lang/String;)Lorg/schabi/newpipe/extractor/kiosk/KioskInfo;

    move-result-object p0

    return-object p0
.end method

.method public static getInfo(Lorg/schabi/newpipe/extractor/StreamingService;Ljava/lang/String;)Lorg/schabi/newpipe/extractor/kiosk/KioskInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/StreamingService;->j()Ljg5;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljg5;->c(Ljava/lang/String;Lorg/schabi/newpipe/extractor/Page;)Lig5;

    move-result-object p0

    .line 3
    invoke-virtual {p0}, Lmk3;->b()V

    .line 4
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/kiosk/KioskInfo;->getInfo(Lig5;)Lorg/schabi/newpipe/extractor/kiosk/KioskInfo;

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

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/StreamingService;->j()Ljg5;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Ljg5;->c(Ljava/lang/String;Lorg/schabi/newpipe/extractor/Page;)Lig5;

    move-result-object p0

    invoke-virtual {p0, p2}, Ltl5;->t(Lorg/schabi/newpipe/extractor/Page;)Ltl5$a;

    move-result-object p0

    return-object p0
.end method

.class public Lid6;
.super Lorg/schabi/newpipe/extractor/StreamingService;
.source "SourceFile"


# direct methods
.method public constructor <init>(I)V
    .locals 2

    sget-object v0, Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo$MediaCapability;->AUDIO:Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo$MediaCapability;

    sget-object v1, Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo$MediaCapability;->VIDEO:Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo$MediaCapability;

    filled-new-array {v0, v1}, [Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo$MediaCapability;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v1, "media.ccc.de"

    invoke-direct {p0, p1, v1, v0}, Lorg/schabi/newpipe/extractor/StreamingService;-><init>(ILjava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic A(Lid6;Lem5;Lorg/schabi/newpipe/extractor/StreamingService;Ljava/lang/String;Ljava/lang/String;)Lig5;
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lid6;->B(Lem5;Lorg/schabi/newpipe/extractor/StreamingService;Ljava/lang/String;Ljava/lang/String;)Lig5;

    move-result-object p0

    return-object p0
.end method

.method private synthetic B(Lem5;Lorg/schabi/newpipe/extractor/StreamingService;Ljava/lang/String;Ljava/lang/String;)Lig5;
    .locals 0

    new-instance p2, Lfc6;

    invoke-virtual {p1, p3}, Lem5;->n(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;

    move-result-object p1

    invoke-direct {p2, p0, p1, p4}, Lfc6;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;Ljava/lang/String;)V

    return-object p2
.end method

.method private synthetic C(Lem5;Lorg/schabi/newpipe/extractor/StreamingService;Ljava/lang/String;Ljava/lang/String;)Lig5;
    .locals 0

    new-instance p2, Lcd6;

    invoke-virtual {p1, p3}, Lem5;->n(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;

    move-result-object p1

    invoke-direct {p2, p0, p1, p4}, Lcd6;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;Ljava/lang/String;)V

    return-object p2
.end method

.method public static synthetic y(Lid6;Lem5;Lorg/schabi/newpipe/extractor/StreamingService;Ljava/lang/String;Ljava/lang/String;)Lig5;
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lid6;->D(Lem5;Lorg/schabi/newpipe/extractor/StreamingService;Ljava/lang/String;Ljava/lang/String;)Lig5;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic z(Lid6;Lem5;Lorg/schabi/newpipe/extractor/StreamingService;Ljava/lang/String;Ljava/lang/String;)Lig5;
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lid6;->C(Lem5;Lorg/schabi/newpipe/extractor/StreamingService;Ljava/lang/String;Ljava/lang/String;)Lig5;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final synthetic D(Lem5;Lorg/schabi/newpipe/extractor/StreamingService;Ljava/lang/String;Ljava/lang/String;)Lig5;
    .locals 0

    new-instance p2, Ltc6;

    invoke-virtual {p1, p3}, Lem5;->n(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;

    move-result-object p1

    invoke-direct {p2, p0, p1, p4}, Ltc6;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;Ljava/lang/String;)V

    return-object p2
.end method

.method public b(Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)Lus0;
    .locals 1

    new-instance v0, Ldc6;

    invoke-direct {v0, p0, p1}, Ldc6;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)V

    return-object v0
.end method

.method public c()Lem5;
    .locals 0

    invoke-static {}, Lgc6;->r()Lgc6;

    move-result-object p0

    return-object p0
.end method

.method public d(Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)Lfu0;
    .locals 2

    instance-of v0, p1, Lorg/schabi/newpipe/extractor/linkhandler/ReadyChannelTabListLinkHandler;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/schabi/newpipe/extractor/linkhandler/ReadyChannelTabListLinkHandler;

    invoke-virtual {p1, p0}, Lorg/schabi/newpipe/extractor/linkhandler/ReadyChannelTabListLinkHandler;->getChannelTabExtractor(Lorg/schabi/newpipe/extractor/StreamingService;)Lfu0;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lac6;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lac6;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;Lcom/grack/nanojson/JsonObject;)V

    return-object v0
.end method

.method public f(Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)Lea1;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public g()Lem5;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public j()Ljg5;
    .locals 5

    const-string v0, "recent"

    new-instance v1, Ljg5;

    invoke-direct {v1, p0}, Ljg5;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;)V

    invoke-static {}, Lhc6;->r()Lhc6;

    move-result-object v2

    :try_start_0
    new-instance v3, Lfd6;

    invoke-direct {v3, p0, v2}, Lfd6;-><init>(Lid6;Lem5;)V

    const-string v4, "conferences"

    invoke-virtual {v1, v3, v2, v4}, Ljg5;->a(Ljg5$b;Lem5;Ljava/lang/String;)V

    new-instance v3, Lgd6;

    invoke-direct {v3, p0, v2}, Lgd6;-><init>(Lid6;Lem5;)V

    invoke-virtual {v1, v3, v2, v0}, Ljg5;->a(Ljg5$b;Lem5;Ljava/lang/String;)V

    new-instance v3, Lhd6;

    invoke-direct {v3, p0, v2}, Lhd6;-><init>(Lid6;Lem5;)V

    const-string p0, "live"

    invoke-virtual {v1, v3, v2, p0}, Ljg5;->a(Ljg5$b;Lem5;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljg5;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public n(Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)Lorg/schabi/newpipe/extractor/playlist/a;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public o()Lem5;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public p(Lorg/schabi/newpipe/extractor/linkhandler/SearchQueryHandler;)Lorg/schabi/newpipe/extractor/search/SearchExtractor;
    .locals 1

    new-instance v0, Led6;

    invoke-direct {v0, p0, p1}, Led6;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/SearchQueryHandler;)V

    return-object v0
.end method

.method public t(Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;)Lorg/schabi/newpipe/extractor/stream/StreamExtractor;
    .locals 1

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lwc6;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lsc6;

    invoke-direct {v0, p0, p1}, Lsc6;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;)V

    return-object v0

    :cond_0
    new-instance v0, Lkd6;

    invoke-direct {v0, p0, p1}, Lkd6;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;)V

    return-object v0
.end method

.method public u()Lil5;
    .locals 0

    invoke-static {}, Lmd6;->j()Lmd6;

    move-result-object p0

    return-object p0
.end method

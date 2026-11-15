.class public Ltz7;
.super Lorg/schabi/newpipe/extractor/StreamingService;
.source "SourceFile"


# instance fields
.field public c:Liz7;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    sget-object v0, Liz7;->c:Liz7;

    invoke-direct {p0, p1, v0}, Ltz7;-><init>(ILiz7;)V

    return-void
.end method

.method public constructor <init>(ILiz7;)V
    .locals 2

    .line 2
    sget-object v0, Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo$MediaCapability;->VIDEO:Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo$MediaCapability;

    sget-object v1, Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo$MediaCapability;->COMMENTS:Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo$MediaCapability;

    filled-new-array {v0, v1}, [Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo$MediaCapability;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v1, "PeerTube"

    invoke-direct {p0, p1, v1, v0}, Lorg/schabi/newpipe/extractor/StreamingService;-><init>(ILjava/lang/String;Ljava/util/List;)V

    .line 3
    iput-object p2, p0, Ltz7;->c:Liz7;

    return-void
.end method

.method public static synthetic y(Ltz7;Lg08;Lorg/schabi/newpipe/extractor/StreamingService;Ljava/lang/String;Ljava/lang/String;)Lig5;
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Ltz7;->A(Lg08;Lorg/schabi/newpipe/extractor/StreamingService;Ljava/lang/String;Ljava/lang/String;)Lig5;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final synthetic A(Lg08;Lorg/schabi/newpipe/extractor/StreamingService;Ljava/lang/String;Ljava/lang/String;)Lig5;
    .locals 0

    new-instance p2, La08;

    invoke-virtual {p1, p4}, Lem5;->j(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;

    move-result-object p1

    invoke-direct {p2, p0, p1, p4}, La08;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;Ljava/lang/String;)V

    return-object p2
.end method

.method public b(Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)Lus0;
    .locals 2

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/video-channels/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Laz7;

    invoke-direct {v0, p0, p1}, Laz7;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)V

    return-object v0

    :cond_0
    new-instance v0, Lwy7;

    invoke-direct {v0, p0, p1}, Lwy7;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)V

    return-object v0
.end method

.method public c()Lem5;
    .locals 0

    invoke-static {}, Lcz7;->s()Lcz7;

    move-result-object p0

    return-object p0
.end method

.method public d(Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)Lfu0;
    .locals 1

    new-instance v0, Ldz7;

    invoke-direct {v0, p0, p1}, Ldz7;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)V

    return-object v0
.end method

.method public f(Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)Lea1;
    .locals 1

    new-instance v0, Lfz7;

    invoke-direct {v0, p0, p1}, Lfz7;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)V

    return-object v0
.end method

.method public g()Lem5;
    .locals 0

    invoke-static {}, Lhz7;->r()Lhz7;

    move-result-object p0

    return-object p0
.end method

.method public j()Ljg5;
    .locals 4

    const-string v0, "Trending"

    invoke-static {}, Lg08;->t()Lg08;

    move-result-object v1

    new-instance v2, Lsz7;

    invoke-direct {v2, p0, v1}, Lsz7;-><init>(Ltz7;Lg08;)V

    new-instance v3, Ljg5;

    invoke-direct {v3, p0}, Ljg5;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;)V

    :try_start_0
    invoke-virtual {v3, v2, v1, v0}, Ljg5;->a(Ljg5$b;Lem5;Ljava/lang/String;)V

    const-string p0, "Most liked"

    invoke-virtual {v3, v2, v1, p0}, Ljg5;->a(Ljg5$b;Lem5;Ljava/lang/String;)V

    const-string p0, "Recently added"

    invoke-virtual {v3, v2, v1, p0}, Ljg5;->a(Ljg5$b;Lem5;Ljava/lang/String;)V

    const-string p0, "Local"

    invoke-virtual {v3, v2, v1, p0}, Ljg5;->a(Ljg5$b;Lem5;Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljg5;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception p0

    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public n(Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)Lorg/schabi/newpipe/extractor/playlist/a;
    .locals 1

    new-instance v0, Lnz7;

    invoke-direct {v0, p0, p1}, Lnz7;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)V

    return-object v0
.end method

.method public o()Lem5;
    .locals 0

    invoke-static {}, Lpz7;->r()Lpz7;

    move-result-object p0

    return-object p0
.end method

.method public p(Lorg/schabi/newpipe/extractor/linkhandler/SearchQueryHandler;)Lorg/schabi/newpipe/extractor/search/SearchExtractor;
    .locals 4

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;->getContentFilters()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lqz7;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "sepia_"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v3, 0x1

    :cond_0
    invoke-direct {v1, p0, p1, v3}, Lqz7;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/SearchQueryHandler;Z)V

    return-object v1
.end method

.method public t(Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;)Lorg/schabi/newpipe/extractor/stream/StreamExtractor;
    .locals 1

    new-instance v0, Lxz7;

    invoke-direct {v0, p0, p1}, Lxz7;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;)V

    return-object v0
.end method

.method public u()Lil5;
    .locals 0

    invoke-static {}, Lzz7;->j()Lzz7;

    move-result-object p0

    return-object p0
.end method

.method public z()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ltz7;->c:Liz7;

    invoke-virtual {p0}, Liz7;->a()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

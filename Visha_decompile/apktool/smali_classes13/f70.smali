.class public Lf70;
.super Lorg/schabi/newpipe/extractor/StreamingService;
.source "SourceFile"


# direct methods
.method public constructor <init>(I)V
    .locals 2

    sget-object v0, Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo$MediaCapability;->AUDIO:Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo$MediaCapability;

    sget-object v1, Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo$MediaCapability;->COMMENTS:Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo$MediaCapability;

    filled-new-array {v0, v1}, [Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo$MediaCapability;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v1, "Bandcamp"

    invoke-direct {p0, p1, v1, v0}, Lorg/schabi/newpipe/extractor/StreamingService;-><init>(ILjava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic y(Lf70;Lem5;Lorg/schabi/newpipe/extractor/StreamingService;Ljava/lang/String;Ljava/lang/String;)Lig5;
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lf70;->B(Lem5;Lorg/schabi/newpipe/extractor/StreamingService;Ljava/lang/String;Ljava/lang/String;)Lig5;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic z(Lf70;Lem5;Lorg/schabi/newpipe/extractor/StreamingService;Ljava/lang/String;Ljava/lang/String;)Lig5;
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lf70;->A(Lem5;Lorg/schabi/newpipe/extractor/StreamingService;Ljava/lang/String;Ljava/lang/String;)Lig5;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final synthetic A(Lem5;Lorg/schabi/newpipe/extractor/StreamingService;Ljava/lang/String;Ljava/lang/String;)Lig5;
    .locals 0

    new-instance p2, Lk60;

    const-string p3, "https://bandcamp.com/api/mobile/24/bootstrap_data"

    invoke-virtual {p1, p3}, Lem5;->n(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;

    move-result-object p1

    invoke-direct {p2, p0, p1, p4}, Lk60;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;Ljava/lang/String;)V

    return-object p2
.end method

.method public final synthetic B(Lem5;Lorg/schabi/newpipe/extractor/StreamingService;Ljava/lang/String;Ljava/lang/String;)Lig5;
    .locals 0

    new-instance p2, Ls60;

    const-string p3, "https://bandcamp.com/api/bcweekly/3/list"

    invoke-virtual {p1, p3}, Lem5;->n(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;

    move-result-object p1

    invoke-direct {p2, p0, p1, p4}, Ls60;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;Ljava/lang/String;)V

    return-object p2
.end method

.method public b(Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)Lus0;
    .locals 1

    new-instance v0, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampChannelExtractor;

    invoke-direct {v0, p0, p1}, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampChannelExtractor;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)V

    return-object v0
.end method

.method public c()Lem5;
    .locals 0

    invoke-static {}, Lr50;->r()Lr50;

    move-result-object p0

    return-object p0
.end method

.method public d(Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)Lfu0;
    .locals 1

    instance-of v0, p1, Lorg/schabi/newpipe/extractor/linkhandler/ReadyChannelTabListLinkHandler;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/schabi/newpipe/extractor/linkhandler/ReadyChannelTabListLinkHandler;

    invoke-virtual {p1, p0}, Lorg/schabi/newpipe/extractor/linkhandler/ReadyChannelTabListLinkHandler;->getChannelTabExtractor(Lorg/schabi/newpipe/extractor/StreamingService;)Lfu0;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ls50;

    invoke-direct {v0, p0, p1}, Ls50;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)V

    return-object v0
.end method

.method public f(Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)Lea1;
    .locals 1

    new-instance v0, Lb60;

    invoke-direct {v0, p0, p1}, Lb60;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)V

    return-object v0
.end method

.method public g()Lem5;
    .locals 0

    invoke-static {}, Ld60;->r()Ld60;

    move-result-object p0

    return-object p0
.end method

.method public j()Ljg5;
    .locals 4

    const-string v0, "Featured"

    new-instance v1, Ljg5;

    invoke-direct {v1, p0}, Ljg5;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;)V

    invoke-static {}, Ll60;->r()Ll60;

    move-result-object v2

    :try_start_0
    new-instance v3, Ld70;

    invoke-direct {v3, p0, v2}, Ld70;-><init>(Lf70;Lem5;)V

    invoke-virtual {v1, v3, v2, v0}, Ljg5;->a(Ljg5$b;Lem5;Ljava/lang/String;)V

    new-instance v3, Le70;

    invoke-direct {v3, p0, v2}, Le70;-><init>(Lf70;Lem5;)V

    const-string p0, "Radio"

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
    .locals 1

    new-instance v0, Ln60;

    invoke-direct {v0, p0, p1}, Ln60;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)V

    return-object v0
.end method

.method public o()Lem5;
    .locals 0

    invoke-static {}, Lq60;->r()Lq60;

    move-result-object p0

    return-object p0
.end method

.method public p(Lorg/schabi/newpipe/extractor/linkhandler/SearchQueryHandler;)Lorg/schabi/newpipe/extractor/search/SearchExtractor;
    .locals 1

    new-instance v0, Lb70;

    invoke-direct {v0, p0, p1}, Lb70;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/SearchQueryHandler;)V

    return-object v0
.end method

.method public t(Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;)Lorg/schabi/newpipe/extractor/stream/StreamExtractor;
    .locals 1

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lj60;->m(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lw60;

    invoke-direct {v0, p0, p1}, Lw60;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;)V

    return-object v0

    :cond_0
    new-instance v0, Lk70;

    invoke-direct {v0, p0, p1}, Lk70;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;)V

    return-object v0
.end method

.method public u()Lil5;
    .locals 0

    invoke-static {}, Lm70;->j()Lm70;

    move-result-object p0

    return-object p0
.end method

.class public Lst9;
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

    const-string v1, "SoundCloud"

    invoke-direct {p0, p1, v1, v0}, Lorg/schabi/newpipe/extractor/StreamingService;-><init>(ILjava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic y(Lst9;Lat9;Lorg/schabi/newpipe/extractor/StreamingService;Ljava/lang/String;Ljava/lang/String;)Lig5;
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lst9;->z(Lat9;Lorg/schabi/newpipe/extractor/StreamingService;Ljava/lang/String;Ljava/lang/String;)Lig5;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public b(Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)Lus0;
    .locals 1

    new-instance v0, Lus9;

    invoke-direct {v0, p0, p1}, Lus9;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)V

    return-object v0
.end method

.method public c()Lem5;
    .locals 0

    invoke-static {}, Lws9;->r()Lws9;

    move-result-object p0

    return-object p0
.end method

.method public d(Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)Lfu0;
    .locals 1

    new-instance v0, Lxs9;

    invoke-direct {v0, p0, p1}, Lxs9;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)V

    return-object v0
.end method

.method public f(Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)Lea1;
    .locals 1

    new-instance v0, Lbt9;

    invoke-direct {v0, p0, p1}, Lbt9;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)V

    return-object v0
.end method

.method public g()Lem5;
    .locals 0

    invoke-static {}, Ldt9;->r()Ldt9;

    move-result-object p0

    return-object p0
.end method

.method public j()Ljg5;
    .locals 4

    const-string v0, "New & hot"

    new-instance v1, Ljg5;

    invoke-direct {v1, p0}, Ljg5;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;)V

    invoke-static {}, Lat9;->r()Lat9;

    move-result-object v2

    new-instance v3, Lrt9;

    invoke-direct {v3, p0, v2}, Lrt9;-><init>(Lst9;Lat9;)V

    :try_start_0
    const-string p0, "Top 50"

    invoke-virtual {v1, v3, v2, p0}, Ljg5;->a(Ljg5$b;Lem5;Ljava/lang/String;)V

    invoke-virtual {v1, v3, v2, v0}, Ljg5;->a(Ljg5$b;Lem5;Ljava/lang/String;)V

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

    new-instance v0, Llt9;

    invoke-direct {v0, p0, p1}, Llt9;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)V

    return-object v0
.end method

.method public o()Lem5;
    .locals 0

    invoke-static {}, Lnt9;->r()Lnt9;

    move-result-object p0

    return-object p0
.end method

.method public p(Lorg/schabi/newpipe/extractor/linkhandler/SearchQueryHandler;)Lorg/schabi/newpipe/extractor/search/SearchExtractor;
    .locals 1

    new-instance v0, Lqt9;

    invoke-direct {v0, p0, p1}, Lqt9;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/SearchQueryHandler;)V

    return-object v0
.end method

.method public t(Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;)Lorg/schabi/newpipe/extractor/stream/StreamExtractor;
    .locals 1

    new-instance v0, Lut9;

    invoke-direct {v0, p0, p1}, Lut9;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;)V

    return-object v0
.end method

.method public u()Lil5;
    .locals 0

    invoke-static {}, Lwt9;->j()Lwt9;

    move-result-object p0

    return-object p0
.end method

.method public v()Ljava/util/List;
    .locals 9

    const-string v7, "NZ"

    const-string v8, "US"

    const-string v0, "AU"

    const-string v1, "CA"

    const-string v2, "DE"

    const-string v3, "FR"

    const-string v4, "GB"

    const-string v5, "IE"

    const-string v6, "NL"

    filled-new-array/range {v0 .. v8}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/schabi/newpipe/extractor/localization/ContentCountry;->listFrom([Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic z(Lat9;Lorg/schabi/newpipe/extractor/StreamingService;Ljava/lang/String;Ljava/lang/String;)Lig5;
    .locals 0

    new-instance p2, Lzs9;

    invoke-virtual {p1, p3}, Lem5;->n(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;

    move-result-object p1

    invoke-direct {p2, p0, p1, p4}, Lzs9;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;Ljava/lang/String;)V

    return-object p2
.end method

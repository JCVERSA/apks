.class public Lcd6;
.super Lig5;
.source "SourceFile"


# instance fields
.field public h:Lcom/grack/nanojson/JsonObject;


# direct methods
.method public constructor <init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lig5;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic u(Ldd6;)Z
    .locals 0

    invoke-static {p0}, Lcd6;->v(Ldd6;)Z

    move-result p0

    return p0
.end method

.method public static synthetic v(Ldd6;)Z
    .locals 4

    invoke-virtual {p0}, Ldd6;->getDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public k()Ljava/lang/String;
    .locals 0

    const-string p0, "recent"

    return-object p0
.end method

.method public q(Lc23;)V
    .locals 2

    const-string v0, "https://api.media.ccc.de/public/events/recent"

    invoke-virtual {p0}, Lmk3;->h()Lorg/schabi/newpipe/extractor/localization/Localization;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lc23;->e(Ljava/lang/String;Lorg/schabi/newpipe/extractor/localization/Localization;)Lfu8;

    move-result-object p1

    invoke-virtual {p1}, Lfu8;->c()Ljava/lang/String;

    move-result-object p1

    :try_start_0
    invoke-static {}, Lcom/grack/nanojson/a;->d()Lcom/grack/nanojson/a$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/grack/nanojson/a$a;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/grack/nanojson/JsonObject;

    iput-object p1, p0, Lcd6;->h:Lcom/grack/nanojson/JsonObject;
    :try_end_0
    .catch Lcom/grack/nanojson/JsonParserException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;

    const-string v0, "Could not parse json."

    invoke-direct {p1, v0, p0}, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public r()Ltl5$a;
    .locals 3

    iget-object v0, p0, Lcd6;->h:Lcom/grack/nanojson/JsonObject;

    const-string v1, "events"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v0

    new-instance v1, Lxc6;

    invoke-direct {v1}, Lxc6;-><init>()V

    new-instance v2, Lyc6;

    invoke-direct {v2}, Lyc6;-><init>()V

    invoke-static {v2}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Comparator;->nullsLast(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Comparator;->reversed()Ljava/util/Comparator;

    move-result-object v1

    new-instance v2, Lqy9;

    invoke-virtual {p0}, Lmk3;->n()I

    move-result p0

    invoke-direct {v2, p0, v1}, Lqy9;-><init>(ILjava/util/Comparator;)V

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lw50;

    const-class v1, Lcom/grack/nanojson/JsonObject;

    invoke-direct {v0, v1}, Lw50;-><init>(Ljava/lang/Class;)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lx50;

    invoke-direct {v0, v1}, Lx50;-><init>(Ljava/lang/Class;)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lzc6;

    invoke-direct {v0}, Lzc6;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lad6;

    invoke-direct {v0}, Lad6;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lbd6;

    invoke-direct {v0, v2}, Lbd6;-><init>(Lqy9;)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    new-instance p0, Ltl5$a;

    const/4 v0, 0x0

    invoke-direct {p0, v2, v0}, Ltl5$a;-><init>(Lyz4;Lorg/schabi/newpipe/extractor/Page;)V

    return-object p0
.end method

.method public t(Lorg/schabi/newpipe/extractor/Page;)Ltl5$a;
    .locals 0

    invoke-static {}, Ltl5$a;->a()Ltl5$a;

    move-result-object p0

    return-object p0
.end method

.class public Lac6;
.super Lfu0;
.source "SourceFile"


# instance fields
.field public g:Lcom/grack/nanojson/JsonObject;


# direct methods
.method public constructor <init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;Lcom/grack/nanojson/JsonObject;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lfu0;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)V

    iput-object p3, p0, Lac6;->g:Lcom/grack/nanojson/JsonObject;

    return-void
.end method

.method public static synthetic u(Lls6;Lcom/grack/nanojson/JsonObject;)V
    .locals 0

    invoke-static {p0, p1}, Lac6;->v(Lls6;Lcom/grack/nanojson/JsonObject;)V

    return-void
.end method

.method public static synthetic v(Lls6;Lcom/grack/nanojson/JsonObject;)V
    .locals 1

    new-instance v0, Lld6;

    invoke-direct {v0, p1}, Lld6;-><init>(Lcom/grack/nanojson/JsonObject;)V

    invoke-virtual {p0, v0}, Lyz4;->d(Lxz4;)V

    return-void
.end method


# virtual methods
.method public q(Lc23;)V
    .locals 1

    iget-object v0, p0, Lac6;->g:Lcom/grack/nanojson/JsonObject;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lmk3;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ldc6;->D(Lc23;Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p1

    iput-object p1, p0, Lac6;->g:Lcom/grack/nanojson/JsonObject;

    :cond_0
    return-void
.end method

.method public r()Ltl5$a;
    .locals 3

    new-instance v0, Lls6;

    invoke-virtual {p0}, Lmk3;->n()I

    move-result v1

    invoke-direct {v0, v1}, Lls6;-><init>(I)V

    iget-object p0, p0, Lac6;->g:Lcom/grack/nanojson/JsonObject;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "events"

    invoke-virtual {p0, v1}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, Lw50;

    const-class v2, Lcom/grack/nanojson/JsonObject;

    invoke-direct {v1, v2}, Lw50;-><init>(Ljava/lang/Class;)V

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, Lx50;

    invoke-direct {v1, v2}, Lx50;-><init>(Ljava/lang/Class;)V

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, Lzb6;

    invoke-direct {v1, v0}, Lzb6;-><init>(Lls6;)V

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    new-instance p0, Ltl5$a;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ltl5$a;-><init>(Lyz4;Lorg/schabi/newpipe/extractor/Page;)V

    return-object p0
.end method

.method public t(Lorg/schabi/newpipe/extractor/Page;)Ltl5$a;
    .locals 0

    invoke-static {}, Ltl5$a;->a()Ltl5$a;

    move-result-object p0

    return-object p0
.end method

.class public Lsc6;
.super Lorg/schabi/newpipe/extractor/stream/StreamExtractor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsc6$a;
    }
.end annotation


# instance fields
.field public g:Lcom/grack/nanojson/JsonObject;

.field public h:Ljava/lang/String;

.field public i:Lcom/grack/nanojson/JsonObject;


# direct methods
.method public constructor <init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/extractor/stream/StreamExtractor;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lsc6;->g:Lcom/grack/nanojson/JsonObject;

    const-string p2, ""

    iput-object p2, p0, Lsc6;->h:Ljava/lang/String;

    iput-object p1, p0, Lsc6;->i:Lcom/grack/nanojson/JsonObject;

    return-void
.end method

.method public static synthetic e0(Ljava/util/Map$Entry;)Z
    .locals 0

    invoke-static {p0}, Lsc6;->v0(Ljava/util/Map$Entry;)Z

    move-result p0

    return p0
.end method

.method public static synthetic f0(Lcom/grack/nanojson/JsonObject;)Lcom/grack/nanojson/JsonObject;
    .locals 0

    invoke-static {p0}, Lsc6;->r0(Lcom/grack/nanojson/JsonObject;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g0(Lsc6$a;)Lorg/schabi/newpipe/extractor/stream/AudioStream;
    .locals 0

    invoke-static {p0}, Lsc6;->q0(Lsc6$a;)Lorg/schabi/newpipe/extractor/stream/AudioStream;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h0(Ljava/lang/String;Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lsc6;->t0(Ljava/lang/String;Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i0(Lcom/grack/nanojson/JsonObject;)Ljava/util/stream/Stream;
    .locals 0

    invoke-static {p0}, Lsc6;->x0(Lcom/grack/nanojson/JsonObject;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic j0(Lcom/grack/nanojson/JsonObject;Ljava/util/Map$Entry;)Lsc6$a;
    .locals 0

    invoke-static {p0, p1}, Lsc6;->w0(Lcom/grack/nanojson/JsonObject;Ljava/util/Map$Entry;)Lsc6$a;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k0(Ljava/lang/String;Lcom/grack/nanojson/JsonObject;)Z
    .locals 0

    invoke-static {p0, p1}, Lsc6;->s0(Ljava/lang/String;Lcom/grack/nanojson/JsonObject;)Z

    move-result p0

    return p0
.end method

.method public static synthetic l0(Lsc6$a;)Z
    .locals 0

    invoke-static {p0}, Lsc6;->y0(Lsc6$a;)Z

    move-result p0

    return p0
.end method

.method public static synthetic m0(Lsc6$a;)Lorg/schabi/newpipe/extractor/stream/VideoStream;
    .locals 0

    invoke-static {p0}, Lsc6;->z0(Lsc6$a;)Lorg/schabi/newpipe/extractor/stream/VideoStream;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic n0(Ljava/lang/String;Lcom/grack/nanojson/JsonObject;)Z
    .locals 0

    invoke-static {p0, p1}, Lsc6;->u0(Ljava/lang/String;Lcom/grack/nanojson/JsonObject;)Z

    move-result p0

    return p0
.end method

.method public static synthetic q0(Lsc6$a;)Lorg/schabi/newpipe/extractor/stream/AudioStream;
    .locals 4

    new-instance v0, Lorg/schabi/newpipe/extractor/stream/AudioStream$a;

    invoke-direct {v0}, Lorg/schabi/newpipe/extractor/stream/AudioStream$a;-><init>()V

    iget-object v1, p0, Lsc6$a;->c:Lcom/grack/nanojson/JsonObject;

    const-string v2, "tech"

    const-string v3, " "

    invoke-virtual {v1, v2, v3}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/stream/AudioStream$a;->i(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/stream/AudioStream$a;

    move-result-object v0

    iget-object v1, p0, Lsc6$a;->c:Lcom/grack/nanojson/JsonObject;

    const-string v2, "url"

    invoke-virtual {v1, v2}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/schabi/newpipe/extractor/stream/AudioStream$a;->g(Ljava/lang/String;Z)Lorg/schabi/newpipe/extractor/stream/AudioStream$a;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/stream/AudioStream$a;->f(I)Lorg/schabi/newpipe/extractor/stream/AudioStream$a;

    move-result-object v0

    const-string v1, "hls"

    iget-object v2, p0, Lsc6$a;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object p0, Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;->HLS:Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;

    invoke-virtual {v0, p0}, Lorg/schabi/newpipe/extractor/stream/AudioStream$a;->h(Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;)Lorg/schabi/newpipe/extractor/stream/AudioStream$a;

    move-result-object p0

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/stream/AudioStream$a;->a()Lorg/schabi/newpipe/extractor/stream/AudioStream;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lsc6$a;->b:Ljava/lang/String;

    invoke-static {p0}, Lorg/schabi/newpipe/extractor/MediaFormat;->getFromSuffix(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/MediaFormat;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/schabi/newpipe/extractor/stream/AudioStream$a;->l(Lorg/schabi/newpipe/extractor/MediaFormat;)Lorg/schabi/newpipe/extractor/stream/AudioStream$a;

    move-result-object p0

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/stream/AudioStream$a;->a()Lorg/schabi/newpipe/extractor/stream/AudioStream;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic r0(Lcom/grack/nanojson/JsonObject;)Lcom/grack/nanojson/JsonObject;
    .locals 1

    const-string v0, "urls"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic s0(Ljava/lang/String;Lcom/grack/nanojson/JsonObject;)Z
    .locals 0

    invoke-virtual {p1, p0}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic t0(Ljava/lang/String;Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1, p0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string p1, "url"

    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic u0(Ljava/lang/String;Lcom/grack/nanojson/JsonObject;)Z
    .locals 1

    const-string v0, "type"

    invoke-virtual {p1, v0}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic v0(Ljava/util/Map$Entry;)Z
    .locals 0

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    instance-of p0, p0, Lcom/grack/nanojson/JsonObject;

    return p0
.end method

.method public static synthetic w0(Lcom/grack/nanojson/JsonObject;Ljava/util/Map$Entry;)Lsc6$a;
    .locals 2

    new-instance v0, Lsc6$a;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/grack/nanojson/JsonObject;

    invoke-direct {v0, p0, v1, p1}, Lsc6$a;-><init>(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;Lcom/grack/nanojson/JsonObject;)V

    return-object v0
.end method

.method public static synthetic x0(Lcom/grack/nanojson/JsonObject;)Ljava/util/stream/Stream;
    .locals 2

    const-string v0, "urls"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/AbstractMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lqc6;

    invoke-direct {v1}, Lqc6;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lrc6;

    invoke-direct {v1, p0}, Lrc6;-><init>(Lcom/grack/nanojson/JsonObject;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic y0(Lsc6$a;)Z
    .locals 1

    const-string v0, "dash"

    iget-object p0, p0, Lsc6$a;->b:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static synthetic z0(Lsc6$a;)Lorg/schabi/newpipe/extractor/stream/VideoStream;
    .locals 5

    iget-object v0, p0, Lsc6$a;->a:Lcom/grack/nanojson/JsonObject;

    const-string v1, "videoSize"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/extractor/stream/VideoStream$a;

    invoke-direct {v1}, Lorg/schabi/newpipe/extractor/stream/VideoStream$a;-><init>()V

    iget-object v2, p0, Lsc6$a;->c:Lcom/grack/nanojson/JsonObject;

    const-string v3, "tech"

    const-string v4, " "

    invoke-virtual {v2, v3, v4}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/schabi/newpipe/extractor/stream/VideoStream$a;->d(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/stream/VideoStream$a;

    move-result-object v1

    iget-object v2, p0, Lsc6$a;->c:Lcom/grack/nanojson/JsonObject;

    const-string v3, "url"

    invoke-virtual {v2, v3}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/schabi/newpipe/extractor/stream/VideoStream$a;->b(Ljava/lang/String;Z)Lorg/schabi/newpipe/extractor/stream/VideoStream$a;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/schabi/newpipe/extractor/stream/VideoStream$a;->e(Z)Lorg/schabi/newpipe/extractor/stream/VideoStream$a;

    move-result-object v1

    invoke-virtual {v0, v2}, Lcom/grack/nanojson/JsonArray;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v3}, Lcom/grack/nanojson/JsonArray;->getInt(I)I

    move-result v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "x"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/schabi/newpipe/extractor/stream/VideoStream$a;->i(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/stream/VideoStream$a;

    move-result-object v0

    const-string v1, "hls"

    iget-object v2, p0, Lsc6$a;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object p0, Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;->HLS:Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;

    invoke-virtual {v0, p0}, Lorg/schabi/newpipe/extractor/stream/VideoStream$a;->c(Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;)Lorg/schabi/newpipe/extractor/stream/VideoStream$a;

    move-result-object p0

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/stream/VideoStream$a;->a()Lorg/schabi/newpipe/extractor/stream/VideoStream;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lsc6$a;->b:Ljava/lang/String;

    invoke-static {p0}, Lorg/schabi/newpipe/extractor/MediaFormat;->getFromSuffix(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/MediaFormat;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/schabi/newpipe/extractor/stream/VideoStream$a;->h(Lorg/schabi/newpipe/extractor/MediaFormat;)Lorg/schabi/newpipe/extractor/stream/VideoStream$a;

    move-result-object p0

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/stream/VideoStream$a;->a()Lorg/schabi/newpipe/extractor/stream/VideoStream;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public J()Lorg/schabi/newpipe/extractor/stream/StreamType;
    .locals 0

    sget-object p0, Lorg/schabi/newpipe/extractor/stream/StreamType;->LIVE_STREAM:Lorg/schabi/newpipe/extractor/stream/StreamType;

    return-object p0
.end method

.method public R()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lsc6;->i:Lcom/grack/nanojson/JsonObject;

    invoke-static {p0}, Lwc6;->c(Lcom/grack/nanojson/JsonObject;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public W()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lsc6;->g:Lcom/grack/nanojson/JsonObject;

    const-string v0, "conference"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public Y()Ljava/lang/String;
    .locals 2

    iget-object p0, p0, Lsc6;->g:Lcom/grack/nanojson/JsonObject;

    const-string v0, "slug"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://streaming.media.ccc.de/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public Z()Ljava/util/List;
    .locals 0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public a0()Ljava/util/List;
    .locals 2

    new-instance v0, Llc6;

    invoke-direct {v0}, Llc6;-><init>()V

    const-string v1, "video"

    invoke-virtual {p0, v1, v0}, Lsc6;->p0(Ljava/lang/String;Ljava/util/function/Function;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public b0()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lsc6;->i:Lcom/grack/nanojson/JsonObject;

    const-string v0, "display"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final o0(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object p0, p0, Lsc6;->i:Lcom/grack/nanojson/JsonObject;

    const-string v0, "streams"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

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

    new-instance v0, Lic6;

    invoke-direct {v0}, Lic6;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Ljc6;

    invoke-direct {v0, p1}, Ljc6;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lkc6;

    invoke-direct {v0, p1}, Lkc6;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    const-string p1, ""

    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public final p0(Ljava/lang/String;Ljava/util/function/Function;)Ljava/util/List;
    .locals 2

    iget-object p0, p0, Lsc6;->i:Lcom/grack/nanojson/JsonObject;

    const-string v0, "streams"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

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

    new-instance v0, Lnc6;

    invoke-direct {v0, p1}, Lnc6;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Loc6;

    invoke-direct {p1}, Loc6;-><init>()V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lpc6;

    invoke-direct {p1}, Lpc6;-><init>()V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0, p2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public q(Lc23;)V
    .locals 13

    invoke-virtual {p0}, Lmk3;->h()Lorg/schabi/newpipe/extractor/localization/Localization;

    move-result-object v0

    invoke-static {p1, v0}, Lwc6;->b(Lc23;Lorg/schabi/newpipe/extractor/localization/Localization;)Lcom/grack/nanojson/JsonArray;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    invoke-virtual {p1, v1}, Lcom/grack/nanojson/JsonArray;->getObject(I)Lcom/grack/nanojson/JsonObject;

    move-result-object v2

    const-string v3, "groups"

    invoke-virtual {v2, v3}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v3

    move v4, v0

    :goto_1
    invoke-virtual {v3}, Ljava/util/AbstractCollection;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    invoke-virtual {v3, v4}, Lcom/grack/nanojson/JsonArray;->getObject(I)Lcom/grack/nanojson/JsonObject;

    move-result-object v5

    const-string v6, "group"

    invoke-virtual {v5, v6}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4}, Lcom/grack/nanojson/JsonArray;->getObject(I)Lcom/grack/nanojson/JsonObject;

    move-result-object v6

    const-string v7, "rooms"

    invoke-virtual {v6, v7}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v6

    move v7, v0

    :goto_2
    invoke-virtual {v6}, Ljava/util/AbstractCollection;->size()I

    move-result v8

    if-ge v7, v8, :cond_1

    invoke-virtual {v6, v7}, Lcom/grack/nanojson/JsonArray;->getObject(I)Lcom/grack/nanojson/JsonObject;

    move-result-object v8

    invoke-virtual {p0}, Lmk3;->i()Ljava/lang/String;

    move-result-object v9

    const-string v10, "slug"

    invoke-virtual {v2, v10}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v10}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "/"

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    iput-object v2, p0, Lsc6;->g:Lcom/grack/nanojson/JsonObject;

    iput-object v5, p0, Lsc6;->h:Ljava/lang/String;

    iput-object v8, p0, Lsc6;->i:Lcom/grack/nanojson/JsonObject;

    return-void

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    new-instance p1, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;

    invoke-virtual {p0}, Lmk3;->i()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not find room matching id: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public s()Ljava/util/List;
    .locals 2

    new-instance v0, Lmc6;

    invoke-direct {v0}, Lmc6;-><init>()V

    const-string v1, "audio"

    invoke-virtual {p0, v1, v0}, Lsc6;->p0(Ljava/lang/String;Ljava/util/function/Function;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public t()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lsc6;->h:Ljava/lang/String;

    return-object p0
.end method

.method public u()Ljava/lang/String;
    .locals 1

    const-string v0, "dash"

    invoke-virtual {p0, v0}, Lsc6;->o0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public v()Lorg/schabi/newpipe/extractor/stream/Description;
    .locals 3

    new-instance v0, Lorg/schabi/newpipe/extractor/stream/Description;

    iget-object v1, p0, Lsc6;->g:Lcom/grack/nanojson/JsonObject;

    const-string v2, "description"

    invoke-virtual {v1, v2}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lsc6;->h:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " - "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lorg/schabi/newpipe/extractor/stream/Description;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public z()Ljava/lang/String;
    .locals 1

    const-string v0, "hls"

    invoke-virtual {p0, v0}, Lsc6;->o0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

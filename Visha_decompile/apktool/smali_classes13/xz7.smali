.class public Lxz7;
.super Lorg/schabi/newpipe/extractor/stream/StreamExtractor;
.source "SourceFile"


# instance fields
.field public final g:Ljava/lang/String;

.field public h:Lcom/grack/nanojson/JsonObject;

.field public final i:Ljava/util/List;

.field public final j:Ljava/util/List;

.field public final k:Ljava/util/List;

.field public l:Lorg/schabi/newpipe/extractor/exceptions/ParsingException;


# direct methods
.method public constructor <init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/extractor/stream/StreamExtractor;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lxz7;->i:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lxz7;->j:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lxz7;->k:Ljava/util/List;

    const/4 p1, 0x0

    iput-object p1, p0, Lxz7;->l:Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    invoke-virtual {p0}, Lmk3;->e()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lxz7;->g:Ljava/lang/String;

    return-void
.end method

.method public static synthetic e0(Lcom/grack/nanojson/JsonObject;)Lorg/schabi/newpipe/extractor/stream/VideoStream;
    .locals 0

    invoke-static {p0}, Lxz7;->r0(Lcom/grack/nanojson/JsonObject;)Lorg/schabi/newpipe/extractor/stream/VideoStream;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic r0(Lcom/grack/nanojson/JsonObject;)Lorg/schabi/newpipe/extractor/stream/VideoStream;
    .locals 3

    new-instance v0, Lorg/schabi/newpipe/extractor/stream/VideoStream$a;

    invoke-direct {v0}, Lorg/schabi/newpipe/extractor/stream/VideoStream$a;-><init>()V

    const-string v1, "id"

    const/4 v2, -0x1

    invoke-virtual {p0, v1, v2}, Lcom/grack/nanojson/JsonObject;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/stream/VideoStream$a;->d(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/stream/VideoStream$a;

    move-result-object v0

    const-string v1, "playlistUrl"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lorg/schabi/newpipe/extractor/stream/VideoStream$a;->b(Ljava/lang/String;Z)Lorg/schabi/newpipe/extractor/stream/VideoStream$a;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/stream/VideoStream$a;->e(Z)Lorg/schabi/newpipe/extractor/stream/VideoStream$a;

    move-result-object p0

    invoke-virtual {p0, v2}, Lorg/schabi/newpipe/extractor/stream/VideoStream$a;->i(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/stream/VideoStream$a;

    move-result-object p0

    sget-object v0, Lorg/schabi/newpipe/extractor/MediaFormat;->MPEG_4:Lorg/schabi/newpipe/extractor/MediaFormat;

    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/stream/VideoStream$a;->h(Lorg/schabi/newpipe/extractor/MediaFormat;)Lorg/schabi/newpipe/extractor/stream/VideoStream$a;

    move-result-object p0

    sget-object v0, Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;->HLS:Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;

    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/stream/VideoStream$a;->c(Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;)Lorg/schabi/newpipe/extractor/stream/VideoStream$a;

    move-result-object p0

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/stream/VideoStream$a;->a()Lorg/schabi/newpipe/extractor/stream/VideoStream;

    move-result-object p0

    return-object p0
.end method

.method private t0(Ljava/lang/String;)V
    .locals 2

    const-string v0, "Could not extract PeerTube stream data"

    :try_start_0
    invoke-static {}, Lcom/grack/nanojson/a;->d()Lcom/grack/nanojson/a$a;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/grack/nanojson/a$a;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/grack/nanojson/JsonObject;

    iput-object p1, p0, Lxz7;->h:Lcom/grack/nanojson/JsonObject;
    :try_end_0
    .catch Lcom/grack/nanojson/JsonParserException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    invoke-static {p1}, Lmz7;->n(Lcom/grack/nanojson/JsonObject;)V

    return-void

    :cond_0
    new-instance p0, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;

    invoke-direct {p0, v0}, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_0
    move-exception p0

    new-instance p1, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;

    invoke-direct {p1, v0, p0}, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method


# virtual methods
.method public A()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lxz7;->h:Lcom/grack/nanojson/JsonObject;

    const-string v0, "account.host"

    invoke-static {p0, v0}, Loc5;->h(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public B()Ljava/util/Locale;
    .locals 2

    :try_start_0
    new-instance v0, Ljava/util/Locale;

    iget-object p0, p0, Lxz7;->h:Lcom/grack/nanojson/JsonObject;

    const-string v1, "language.id"

    invoke-static {p0, v1}, Loc5;->h(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/schabi/newpipe/extractor/exceptions/ParsingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public C()J
    .locals 2

    iget-object p0, p0, Lxz7;->h:Lcom/grack/nanojson/JsonObject;

    const-string v0, "duration"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public D()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lxz7;->h:Lcom/grack/nanojson/JsonObject;

    const-string v0, "licence.label"

    invoke-static {p0, v0}, Loc5;->h(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public E()J
    .locals 2

    iget-object p0, p0, Lxz7;->h:Lcom/grack/nanojson/JsonObject;

    const-string v0, "likes"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public G()Lorg/schabi/newpipe/extractor/stream/StreamExtractor$Privacy;
    .locals 1

    iget-object p0, p0, Lxz7;->h:Lcom/grack/nanojson/JsonObject;

    const-string v0, "privacy"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v0, "id"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getInt(Ljava/lang/String;)I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    sget-object p0, Lorg/schabi/newpipe/extractor/stream/StreamExtractor$Privacy;->OTHER:Lorg/schabi/newpipe/extractor/stream/StreamExtractor$Privacy;

    return-object p0

    :cond_0
    sget-object p0, Lorg/schabi/newpipe/extractor/stream/StreamExtractor$Privacy;->INTERNAL:Lorg/schabi/newpipe/extractor/stream/StreamExtractor$Privacy;

    return-object p0

    :cond_1
    sget-object p0, Lorg/schabi/newpipe/extractor/stream/StreamExtractor$Privacy;->PRIVATE:Lorg/schabi/newpipe/extractor/stream/StreamExtractor$Privacy;

    return-object p0

    :cond_2
    sget-object p0, Lorg/schabi/newpipe/extractor/stream/StreamExtractor$Privacy;->UNLISTED:Lorg/schabi/newpipe/extractor/stream/StreamExtractor$Privacy;

    return-object p0

    :cond_3
    sget-object p0, Lorg/schabi/newpipe/extractor/stream/StreamExtractor$Privacy;->PUBLIC:Lorg/schabi/newpipe/extractor/stream/StreamExtractor$Privacy;

    return-object p0
.end method

.method public bridge synthetic H()Lyz4;
    .locals 0

    invoke-virtual {p0}, Lxz7;->m0()Lqy9;

    move-result-object p0

    return-object p0
.end method

.method public I()Ljava/util/List;
    .locals 6

    const-string v0, "chapters"

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-virtual {p0, v0}, Lxz7;->j0(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/schabi/newpipe/extractor/exceptions/ReCaptchaException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonArray;->getObject(I)Lcom/grack/nanojson/JsonObject;

    move-result-object v2

    new-instance v3, Lorg/schabi/newpipe/extractor/stream/StreamSegment;

    const-string v4, "title"

    invoke-virtual {v2, v4}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "timecode"

    invoke-virtual {v2, v5}, Lcom/grack/nanojson/JsonObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v3, v4, v2}, Lorg/schabi/newpipe/extractor/stream/StreamSegment;-><init>(Ljava/lang/String;I)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1

    :catch_0
    move-exception p0

    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v1, "Could not get stream segments"

    invoke-direct {v0, v1, p0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public J()Lorg/schabi/newpipe/extractor/stream/StreamType;
    .locals 1

    iget-object p0, p0, Lxz7;->h:Lcom/grack/nanojson/JsonObject;

    const-string v0, "isLive"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lorg/schabi/newpipe/extractor/stream/StreamType;->LIVE_STREAM:Lorg/schabi/newpipe/extractor/stream/StreamType;

    goto :goto_0

    :cond_0
    sget-object p0, Lorg/schabi/newpipe/extractor/stream/StreamType;->VIDEO_STREAM:Lorg/schabi/newpipe/extractor/stream/StreamType;

    :goto_0
    return-object p0
.end method

.method public K()Ljava/util/List;
    .locals 2

    iget-object v0, p0, Lxz7;->g:Ljava/lang/String;

    iget-object p0, p0, Lxz7;->h:Lcom/grack/nanojson/JsonObject;

    const-string v1, "channel"

    invoke-virtual {p0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    invoke-static {v0, p0}, Lmz7;->e(Ljava/lang/String;Lcom/grack/nanojson/JsonObject;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public L()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lxz7;->h:Lcom/grack/nanojson/JsonObject;

    const-string v0, "channel.displayName"

    invoke-static {p0, v0}, Loc5;->h(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public M()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lxz7;->h:Lcom/grack/nanojson/JsonObject;

    const-string v0, "channel.url"

    invoke-static {p0, v0}, Loc5;->h(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public N()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lxz7;->l:Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    if-nez v0, :cond_0

    iget-object p0, p0, Lxz7;->i:Ljava/util/List;

    return-object p0

    :cond_0
    throw v0
.end method

.method public O()Ljava/lang/String;
    .locals 1

    :try_start_0
    iget-object p0, p0, Lxz7;->h:Lcom/grack/nanojson/JsonObject;

    const-string v0, "support"

    invoke-static {p0, v0}, Loc5;->h(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lorg/schabi/newpipe/extractor/exceptions/ParsingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string p0, ""

    return-object p0
.end method

.method public P()Ljava/util/List;
    .locals 1

    iget-object p0, p0, Lxz7;->h:Lcom/grack/nanojson/JsonObject;

    const-string v0, "tags"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object p0

    invoke-static {p0}, Loc5;->i(Lcom/grack/nanojson/JsonArray;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public Q()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lxz7;->h:Lcom/grack/nanojson/JsonObject;

    const-string v0, "publishedAt"

    invoke-static {p0, v0}, Loc5;->h(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public R()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lxz7;->g:Ljava/lang/String;

    iget-object p0, p0, Lxz7;->h:Lcom/grack/nanojson/JsonObject;

    invoke-static {v0, p0}, Lmz7;->j(Ljava/lang/String;Lcom/grack/nanojson/JsonObject;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public S()J
    .locals 4

    const-string v0, "((#|&|\\?)start=\\d{0,3}h?\\d{0,3}m?\\d{1,3}s?)"

    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/stream/StreamExtractor;->T(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, -0x2

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :cond_0
    return-wide v0
.end method

.method public U()Lorg/schabi/newpipe/extractor/localization/DateWrapper;
    .locals 1

    invoke-virtual {p0}, Lxz7;->Q()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lorg/schabi/newpipe/extractor/localization/DateWrapper;

    invoke-static {p0}, Lmz7;->m(Ljava/lang/String;)Ljava/time/OffsetDateTime;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/extractor/localization/DateWrapper;-><init>(Ljava/time/OffsetDateTime;)V

    return-object v0
.end method

.method public V()Ljava/util/List;
    .locals 2

    iget-object v0, p0, Lxz7;->g:Ljava/lang/String;

    iget-object p0, p0, Lxz7;->h:Lcom/grack/nanojson/JsonObject;

    const-string v1, "account"

    invoke-virtual {p0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    invoke-static {v0, p0}, Lmz7;->e(Ljava/lang/String;Lcom/grack/nanojson/JsonObject;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public W()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lxz7;->h:Lcom/grack/nanojson/JsonObject;

    const-string v0, "account.displayName"

    invoke-static {p0, v0}, Loc5;->h(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public Y()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lxz7;->h:Lcom/grack/nanojson/JsonObject;

    const-string v1, "account.name"

    invoke-static {v0, v1}, Loc5;->h(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lxz7;->h:Lcom/grack/nanojson/JsonObject;

    const-string v2, "account.host"

    invoke-static {v1, v2}, Loc5;->h(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lmk3;->m()Lorg/schabi/newpipe/extractor/StreamingService;

    move-result-object v2

    invoke-virtual {v2}, Lorg/schabi/newpipe/extractor/StreamingService;->c()Lem5;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "accounts/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "@"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lxz7;->g:Ljava/lang/String;

    invoke-virtual {v2, v0, p0}, Lem5;->k(Ljava/lang/String;Ljava/lang/String;)Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;

    move-result-object p0

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;->getUrl()Ljava/lang/String;

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

    invoke-virtual {p0}, Lmk3;->a()V

    iget-object v0, p0, Lxz7;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lxz7;->J()Lorg/schabi/newpipe/extractor/stream/StreamType;

    move-result-object v0

    sget-object v1, Lorg/schabi/newpipe/extractor/stream/StreamType;->VIDEO_STREAM:Lorg/schabi/newpipe/extractor/stream/StreamType;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lxz7;->o0()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lxz7;->i0()V

    :cond_1
    :goto_0
    iget-object p0, p0, Lxz7;->k:Ljava/util/List;

    return-object p0
.end method

.method public b0()J
    .locals 2

    iget-object p0, p0, Lxz7;->h:Lcom/grack/nanojson/JsonObject;

    const-string v0, "views"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final f0(Lcom/grack/nanojson/JsonObject;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const-string v0, "."

    invoke-virtual {p5, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {p5, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/schabi/newpipe/extractor/MediaFormat;->getFromSuffix(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/MediaFormat;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "-"

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lxz7;->j:Ljava/util/List;

    new-instance v5, Lorg/schabi/newpipe/extractor/stream/AudioStream$a;

    invoke-direct {v5}, Lorg/schabi/newpipe/extractor/stream/AudioStream$a;-><init>()V

    sget-object v6, Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;->PROGRESSIVE_HTTP:Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/schabi/newpipe/extractor/stream/AudioStream$a;->i(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/stream/AudioStream$a;

    move-result-object v5

    invoke-virtual {v5, p5, v1}, Lorg/schabi/newpipe/extractor/stream/AudioStream$a;->g(Ljava/lang/String;Z)Lorg/schabi/newpipe/extractor/stream/AudioStream$a;

    move-result-object v5

    invoke-virtual {v5, v2}, Lorg/schabi/newpipe/extractor/stream/AudioStream$a;->l(Lorg/schabi/newpipe/extractor/MediaFormat;)Lorg/schabi/newpipe/extractor/stream/AudioStream$a;

    move-result-object v5

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Lorg/schabi/newpipe/extractor/stream/AudioStream$a;->f(I)Lorg/schabi/newpipe/extractor/stream/AudioStream$a;

    move-result-object v5

    invoke-virtual {v5}, Lorg/schabi/newpipe/extractor/stream/AudioStream$a;->a()Lorg/schabi/newpipe/extractor/stream/AudioStream;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {p6}, Lorg/schabi/newpipe/extractor/utils/a;->m(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1, p4, v0, p5}, Lxz7;->k0(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p6}, Lxz7;->l0(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :goto_0
    new-instance p5, Lorg/schabi/newpipe/extractor/stream/AudioStream$a;

    invoke-direct {p5}, Lorg/schabi/newpipe/extractor/stream/AudioStream$a;-><init>()V

    sget-object v0, Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;->HLS:Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p5, v4}, Lorg/schabi/newpipe/extractor/stream/AudioStream$a;->i(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/stream/AudioStream$a;

    move-result-object p5

    invoke-virtual {p5, p2, v1}, Lorg/schabi/newpipe/extractor/stream/AudioStream$a;->g(Ljava/lang/String;Z)Lorg/schabi/newpipe/extractor/stream/AudioStream$a;

    move-result-object p2

    invoke-virtual {p2, v0}, Lorg/schabi/newpipe/extractor/stream/AudioStream$a;->h(Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;)Lorg/schabi/newpipe/extractor/stream/AudioStream$a;

    move-result-object p2

    invoke-virtual {p2, v2}, Lorg/schabi/newpipe/extractor/stream/AudioStream$a;->l(Lorg/schabi/newpipe/extractor/MediaFormat;)Lorg/schabi/newpipe/extractor/stream/AudioStream$a;

    move-result-object p2

    invoke-virtual {p2, v6}, Lorg/schabi/newpipe/extractor/stream/AudioStream$a;->f(I)Lorg/schabi/newpipe/extractor/stream/AudioStream$a;

    move-result-object p2

    invoke-virtual {p2, p6}, Lorg/schabi/newpipe/extractor/stream/AudioStream$a;->k(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/stream/AudioStream$a;

    move-result-object p2

    invoke-virtual {p2}, Lorg/schabi/newpipe/extractor/stream/AudioStream$a;->a()Lorg/schabi/newpipe/extractor/stream/AudioStream;

    move-result-object p2

    iget-object p5, p0, Lxz7;->j:Ljava/util/List;

    invoke-static {p2, p5}, Lorg/schabi/newpipe/extractor/stream/Stream;->containSimilarStream(Lorg/schabi/newpipe/extractor/stream/Stream;Ljava/util/List;)Z

    move-result p5

    if-nez p5, :cond_1

    iget-object p5, p0, Lxz7;->j:Ljava/util/List;

    invoke-interface {p5, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    const-string p2, "torrentUrl"

    invoke-static {p1, p2}, Loc5;->h(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/schabi/newpipe/extractor/utils/a;->m(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p0, p0, Lxz7;->j:Ljava/util/List;

    new-instance p2, Lorg/schabi/newpipe/extractor/stream/AudioStream$a;

    invoke-direct {p2}, Lorg/schabi/newpipe/extractor/stream/AudioStream$a;-><init>()V

    sget-object p5, Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;->TORRENT:Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;

    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lorg/schabi/newpipe/extractor/stream/AudioStream$a;->i(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/stream/AudioStream$a;

    move-result-object p2

    invoke-virtual {p2, p1, v1}, Lorg/schabi/newpipe/extractor/stream/AudioStream$a;->g(Ljava/lang/String;Z)Lorg/schabi/newpipe/extractor/stream/AudioStream$a;

    move-result-object p1

    invoke-virtual {p1, p5}, Lorg/schabi/newpipe/extractor/stream/AudioStream$a;->h(Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;)Lorg/schabi/newpipe/extractor/stream/AudioStream$a;

    move-result-object p1

    invoke-virtual {p1, v2}, Lorg/schabi/newpipe/extractor/stream/AudioStream$a;->l(Lorg/schabi/newpipe/extractor/MediaFormat;)Lorg/schabi/newpipe/extractor/stream/AudioStream$a;

    move-result-object p1

    invoke-virtual {p1, v6}, Lorg/schabi/newpipe/extractor/stream/AudioStream$a;->f(I)Lorg/schabi/newpipe/extractor/stream/AudioStream$a;

    move-result-object p1

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/AudioStream$a;->a()Lorg/schabi/newpipe/extractor/stream/AudioStream;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method public final g0(Lcom/grack/nanojson/JsonObject;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    const-string v0, "."

    invoke-virtual {p5, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {p5, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/schabi/newpipe/extractor/MediaFormat;->getFromSuffix(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/MediaFormat;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lxz7;->k:Ljava/util/List;

    new-instance v6, Lorg/schabi/newpipe/extractor/stream/VideoStream$a;

    invoke-direct {v6}, Lorg/schabi/newpipe/extractor/stream/VideoStream$a;-><init>()V

    sget-object v7, Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;->PROGRESSIVE_HTTP:Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/schabi/newpipe/extractor/stream/VideoStream$a;->d(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/stream/VideoStream$a;

    move-result-object v6

    invoke-virtual {v6, p5, v1}, Lorg/schabi/newpipe/extractor/stream/VideoStream$a;->b(Ljava/lang/String;Z)Lorg/schabi/newpipe/extractor/stream/VideoStream$a;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lorg/schabi/newpipe/extractor/stream/VideoStream$a;->e(Z)Lorg/schabi/newpipe/extractor/stream/VideoStream$a;

    move-result-object v6

    invoke-virtual {v6, p3}, Lorg/schabi/newpipe/extractor/stream/VideoStream$a;->i(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/stream/VideoStream$a;

    move-result-object v6

    invoke-virtual {v6, v2}, Lorg/schabi/newpipe/extractor/stream/VideoStream$a;->h(Lorg/schabi/newpipe/extractor/MediaFormat;)Lorg/schabi/newpipe/extractor/stream/VideoStream$a;

    move-result-object v6

    invoke-virtual {v6}, Lorg/schabi/newpipe/extractor/stream/VideoStream$a;->a()Lorg/schabi/newpipe/extractor/stream/VideoStream;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {p6}, Lorg/schabi/newpipe/extractor/utils/a;->m(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1, p4, v0, p5}, Lxz7;->k0(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p6}, Lxz7;->l0(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :goto_0
    new-instance p5, Lorg/schabi/newpipe/extractor/stream/VideoStream$a;

    invoke-direct {p5}, Lorg/schabi/newpipe/extractor/stream/VideoStream$a;-><init>()V

    sget-object v0, Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;->HLS:Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p5, v5}, Lorg/schabi/newpipe/extractor/stream/VideoStream$a;->d(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/stream/VideoStream$a;

    move-result-object p5

    invoke-virtual {p5, p2, v1}, Lorg/schabi/newpipe/extractor/stream/VideoStream$a;->b(Ljava/lang/String;Z)Lorg/schabi/newpipe/extractor/stream/VideoStream$a;

    move-result-object p2

    invoke-virtual {p2, v7}, Lorg/schabi/newpipe/extractor/stream/VideoStream$a;->e(Z)Lorg/schabi/newpipe/extractor/stream/VideoStream$a;

    move-result-object p2

    invoke-virtual {p2, v0}, Lorg/schabi/newpipe/extractor/stream/VideoStream$a;->c(Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;)Lorg/schabi/newpipe/extractor/stream/VideoStream$a;

    move-result-object p2

    invoke-virtual {p2, p3}, Lorg/schabi/newpipe/extractor/stream/VideoStream$a;->i(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/stream/VideoStream$a;

    move-result-object p2

    invoke-virtual {p2, v2}, Lorg/schabi/newpipe/extractor/stream/VideoStream$a;->h(Lorg/schabi/newpipe/extractor/MediaFormat;)Lorg/schabi/newpipe/extractor/stream/VideoStream$a;

    move-result-object p2

    invoke-virtual {p2, p6}, Lorg/schabi/newpipe/extractor/stream/VideoStream$a;->g(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/stream/VideoStream$a;

    move-result-object p2

    invoke-virtual {p2}, Lorg/schabi/newpipe/extractor/stream/VideoStream$a;->a()Lorg/schabi/newpipe/extractor/stream/VideoStream;

    move-result-object p2

    iget-object p5, p0, Lxz7;->k:Ljava/util/List;

    invoke-static {p2, p5}, Lorg/schabi/newpipe/extractor/stream/Stream;->containSimilarStream(Lorg/schabi/newpipe/extractor/stream/Stream;Ljava/util/List;)Z

    move-result p5

    if-nez p5, :cond_1

    iget-object p5, p0, Lxz7;->k:Ljava/util/List;

    invoke-interface {p5, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    const-string p2, "torrentUrl"

    invoke-static {p1, p2}, Loc5;->h(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/schabi/newpipe/extractor/utils/a;->m(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p0, p0, Lxz7;->k:Ljava/util/List;

    new-instance p2, Lorg/schabi/newpipe/extractor/stream/VideoStream$a;

    invoke-direct {p2}, Lorg/schabi/newpipe/extractor/stream/VideoStream$a;-><init>()V

    sget-object p5, Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;->TORRENT:Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;

    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Lorg/schabi/newpipe/extractor/stream/VideoStream$a;->d(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/stream/VideoStream$a;

    move-result-object p2

    invoke-virtual {p2, p1, v1}, Lorg/schabi/newpipe/extractor/stream/VideoStream$a;->b(Ljava/lang/String;Z)Lorg/schabi/newpipe/extractor/stream/VideoStream$a;

    move-result-object p1

    invoke-virtual {p1, v7}, Lorg/schabi/newpipe/extractor/stream/VideoStream$a;->e(Z)Lorg/schabi/newpipe/extractor/stream/VideoStream$a;

    move-result-object p1

    invoke-virtual {p1, p5}, Lorg/schabi/newpipe/extractor/stream/VideoStream$a;->c(Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;)Lorg/schabi/newpipe/extractor/stream/VideoStream$a;

    move-result-object p1

    invoke-virtual {p1, p3}, Lorg/schabi/newpipe/extractor/stream/VideoStream$a;->i(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/stream/VideoStream$a;

    move-result-object p1

    invoke-virtual {p1, v2}, Lorg/schabi/newpipe/extractor/stream/VideoStream$a;->h(Lorg/schabi/newpipe/extractor/MediaFormat;)Lorg/schabi/newpipe/extractor/stream/VideoStream$a;

    move-result-object p1

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/VideoStream$a;->a()Lorg/schabi/newpipe/extractor/stream/VideoStream;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method public final h0(Lqy9;Lcom/grack/nanojson/JsonObject;)V
    .locals 3

    :try_start_0
    const-string v0, "data"

    invoke-static {p2, v0}, Loc5;->j(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/grack/nanojson/JsonArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p2}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/grack/nanojson/JsonObject;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/grack/nanojson/JsonObject;

    new-instance v1, Lyz7;

    iget-object v2, p0, Lxz7;->g:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Lyz7;-><init>(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)V

    invoke-virtual {v1}, Lyz7;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lmk3;->p()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1, v1}, Lqy9;->h(Lpy9;)V

    goto :goto_0

    :cond_1
    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string p2, "Could not extract related videos"

    invoke-direct {p1, p2, p0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final i0()V
    .locals 3

    const-class v0, Lcom/grack/nanojson/JsonObject;

    :try_start_0
    iget-object v1, p0, Lxz7;->h:Lcom/grack/nanojson/JsonObject;

    const-string v2, "streamingPlaylists"

    invoke-virtual {v1, v2}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lw50;

    invoke-direct {v2, v0}, Lw50;-><init>(Ljava/lang/Class;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lx50;

    invoke-direct {v2, v0}, Lx50;-><init>(Ljava/lang/Class;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lvz7;

    invoke-direct {v1}, Lvz7;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    iget-object p0, p0, Lxz7;->k:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lwz7;

    invoke-direct {v1, p0}, Lwz7;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEachOrdered(Ljava/util/function/Consumer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v1, "Could not get video streams"

    invoke-direct {v0, v1, p0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final j0(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;
    .locals 3

    iget-object v0, p0, Lxz7;->g:Ljava/lang/String;

    invoke-virtual {p0}, Lmk3;->i()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/api/v1/videos/"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lmk3;->f()Lc23;

    move-result-object p0

    invoke-virtual {p0, p1}, Lc23;->b(Ljava/lang/String;)Lfu8;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lfu8;->d()I

    move-result p1

    const/16 v0, 0x190

    if-ne p1, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lfu8;->d()I

    move-result p1

    const/16 v0, 0xc8

    if-ne p1, v0, :cond_1

    :try_start_0
    invoke-static {}, Lcom/grack/nanojson/a;->d()Lcom/grack/nanojson/a$a;

    move-result-object p1

    invoke-virtual {p0}, Lfu8;->c()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/grack/nanojson/a$a;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/grack/nanojson/JsonObject;
    :try_end_0
    .catch Lcom/grack/nanojson/JsonParserException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v0, "Could not parse json data for segments"

    invoke-direct {p1, v0, p0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_1
    new-instance p1, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    invoke-virtual {p0}, Lfu8;->d()I

    move-result p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not get segments from API. Response code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string p1, "Could not get segments from API."

    invoke-direct {p0, p1}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lxz7;->h:Lcom/grack/nanojson/JsonObject;

    const-string v0, "name"

    invoke-static {p0, v0}, Loc5;->h(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final k0(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const-string p0, "fileDownloadUrl"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "fileUrl"

    invoke-static {p1, p0}, Loc5;->h(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "-fragmented."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, ".m3u8"

    invoke-virtual {p4, p0, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final l0(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const-string p0, "resolution.id"

    invoke-static {p1, p0}, Loc5;->e(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "master"

    invoke-virtual {p2, p1, p0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public m0()Lqy9;
    .locals 4

    invoke-virtual {p0}, Lxz7;->P()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lxz7;->g:Ljava/lang/String;

    iget-object v1, p0, Lxz7;->h:Lcom/grack/nanojson/JsonObject;

    const-string v2, "account.name"

    invoke-static {v1, v2}, Loc5;->h(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lxz7;->h:Lcom/grack/nanojson/JsonObject;

    const-string v3, "account.host"

    invoke-static {v2, v3}, Loc5;->h(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/api/v1/accounts/"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "@"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/videos?start=0&count=8"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lxz7;->n0(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/utils/a;->k(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    new-instance v1, Lqy9;

    invoke-virtual {p0}, Lmk3;->n()I

    move-result v2

    invoke-direct {v1, v2}, Lqy9;-><init>(I)V

    invoke-virtual {p0, v1, v0}, Lxz7;->p0(Lqy9;Ljava/lang/String;)V

    return-object v1
.end method

.method public final n0(Ljava/util/List;)Ljava/lang/String;
    .locals 3

    iget-object p0, p0, Lxz7;->g:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/api/v1/search/videos"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "start=0&count=8&sort=-createdAt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "&tagsOneOf="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lorg/schabi/newpipe/extractor/utils/a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "?"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final o0()V
    .locals 5

    const-class v0, Lcom/grack/nanojson/JsonObject;

    iget-object v1, p0, Lxz7;->h:Lcom/grack/nanojson/JsonObject;

    const-string v2, "files"

    invoke-virtual {v1, v2}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v1

    const-string v3, ""

    invoke-virtual {p0, v1, v3}, Lxz7;->q0(Lcom/grack/nanojson/JsonArray;Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lxz7;->h:Lcom/grack/nanojson/JsonObject;

    const-string v3, "streamingPlaylists"

    invoke-virtual {v1, v3}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v3, Lw50;

    invoke-direct {v3, v0}, Lw50;-><init>(Ljava/lang/Class;)V

    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v3, Lx50;

    invoke-direct {v3, v0}, Lx50;-><init>(Ljava/lang/Class;)V

    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/grack/nanojson/JsonObject;

    invoke-virtual {v1, v2}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v3

    const-string v4, "playlistUrl"

    invoke-virtual {v1, v4}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v3, v1}, Lxz7;->q0(Lcom/grack/nanojson/JsonArray;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    return-void

    :goto_1
    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v1, "Could not get streams"

    invoke-direct {v0, v1, p0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final p0(Lqy9;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lmk3;->f()Lc23;

    move-result-object v0

    invoke-virtual {v0, p2}, Lc23;->b(Ljava/lang/String;)Lfu8;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lfu8;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/schabi/newpipe/extractor/utils/a;->k(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    invoke-static {}, Lcom/grack/nanojson/a;->d()Lcom/grack/nanojson/a$a;

    move-result-object v0

    invoke-virtual {p2}, Lfu8;->c()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/grack/nanojson/a$a;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/grack/nanojson/JsonObject;
    :try_end_0
    .catch Lcom/grack/nanojson/JsonParserException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string p2, "Could not parse json data for related videos"

    invoke-direct {p1, p2, p0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {p0, p1, p2}, Lxz7;->h0(Lqy9;Lcom/grack/nanojson/JsonObject;)V

    :cond_1
    return-void
.end method

.method public q(Lc23;)V
    .locals 3

    iget-object v0, p0, Lxz7;->g:Ljava/lang/String;

    invoke-virtual {p0}, Lmk3;->i()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/api/v1/videos/"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lc23;->b(Ljava/lang/String;)Lfu8;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lfu8;->c()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lxz7;->t0(Ljava/lang/String;)V

    invoke-virtual {p0}, Lxz7;->s0()V

    return-void

    :cond_0
    new-instance p0, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;

    const-string p1, "Could not extract PeerTube channel data"

    invoke-direct {p0, p1}, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final q0(Lcom/grack/nanojson/JsonArray;Ljava/lang/String;)V
    .locals 10

    const-class v0, Lcom/grack/nanojson/JsonObject;

    const-string v1, "fileUrl"

    :try_start_0
    invoke-static {p2}, Lorg/schabi/newpipe/extractor/utils/a;->m(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "-master.m3u8"

    invoke-virtual {p2, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    goto/16 :goto_4

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v3, Lw50;

    invoke-direct {v3, v0}, Lw50;-><init>(Ljava/lang/Class;)V

    invoke-interface {p1, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v3, Lx50;

    invoke-direct {v3, v0}, Lx50;-><init>(Ljava/lang/Class;)V

    invoke-interface {p1, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/grack/nanojson/JsonObject;

    invoke-virtual {v4, v1}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "fileDownloadUrl"

    if-eqz v0, :cond_1

    move-object v0, v1

    goto :goto_2

    :cond_1
    move-object v0, v3

    :goto_2
    :try_start_1
    invoke-static {v4, v0}, Loc5;->h(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/schabi/newpipe/extractor/utils/a;->m(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    const-string v0, "resolution.label"

    invoke-static {v4, v0}, Loc5;->h(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v1}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v7, v1

    goto :goto_3

    :cond_3
    move-object v7, v3

    :goto_3
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v3, "audio"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    move-object v3, p0

    move v5, v2

    move-object v9, p2

    invoke-virtual/range {v3 .. v9}, Lxz7;->f0(Lcom/grack/nanojson/JsonObject;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    move-object v3, p0

    move v5, v2

    move-object v9, p2

    invoke-virtual/range {v3 .. v9}, Lxz7;->g0(Lcom/grack/nanojson/JsonObject;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :cond_5
    return-void

    :goto_4
    new-instance p1, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string p2, "Could not get streams from array"

    invoke-direct {p1, p2, p0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public r()I
    .locals 1

    iget-object p0, p0, Lxz7;->h:Lcom/grack/nanojson/JsonObject;

    const-string v0, "nsfw"

    invoke-static {p0, v0}, Loc5;->b(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x12

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public s()Ljava/util/List;
    .locals 2

    invoke-virtual {p0}, Lmk3;->a()V

    iget-object v0, p0, Lxz7;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lxz7;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lxz7;->J()Lorg/schabi/newpipe/extractor/stream/StreamType;

    move-result-object v0

    sget-object v1, Lorg/schabi/newpipe/extractor/stream/StreamType;->VIDEO_STREAM:Lorg/schabi/newpipe/extractor/stream/StreamType;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lxz7;->o0()V

    :cond_0
    iget-object p0, p0, Lxz7;->j:Ljava/util/List;

    return-object p0
.end method

.method public final s0()V
    .locals 7

    iget-object v0, p0, Lxz7;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    invoke-virtual {p0}, Lmk3;->f()Lc23;

    move-result-object v0

    iget-object v1, p0, Lxz7;->g:Ljava/lang/String;

    invoke-virtual {p0}, Lmk3;->i()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/api/v1/videos/"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/captions"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc23;->b(Ljava/lang/String;)Lfu8;

    move-result-object v0

    invoke-static {}, Lcom/grack/nanojson/a;->d()Lcom/grack/nanojson/a$a;

    move-result-object v1

    invoke-virtual {v0}, Lfu8;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/grack/nanojson/a$a;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grack/nanojson/JsonObject;

    const-string v1, "data"

    invoke-static {v0, v1}, Loc5;->a(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lcom/grack/nanojson/JsonObject;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/grack/nanojson/JsonObject;

    iget-object v2, p0, Lxz7;->g:Ljava/lang/String;

    const-string v3, "captionPath"

    invoke-static {v1, v3}, Loc5;->h(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "language.id"

    invoke-static {v1, v3}, Loc5;->h(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/schabi/newpipe/extractor/MediaFormat;->getFromSuffix(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/MediaFormat;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {v1}, Lorg/schabi/newpipe/extractor/utils/a;->m(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lxz7;->i:Ljava/util/List;

    new-instance v6, Lorg/schabi/newpipe/extractor/stream/SubtitlesStream$a;

    invoke-direct {v6}, Lorg/schabi/newpipe/extractor/stream/SubtitlesStream$a;-><init>()V

    invoke-virtual {v6, v2, v4}, Lorg/schabi/newpipe/extractor/stream/SubtitlesStream$a;->c(Ljava/lang/String;Z)Lorg/schabi/newpipe/extractor/stream/SubtitlesStream$a;

    move-result-object v2

    invoke-virtual {v2, v3}, Lorg/schabi/newpipe/extractor/stream/SubtitlesStream$a;->e(Lorg/schabi/newpipe/extractor/MediaFormat;)Lorg/schabi/newpipe/extractor/stream/SubtitlesStream$a;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/schabi/newpipe/extractor/stream/SubtitlesStream$a;->d(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/stream/SubtitlesStream$a;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/schabi/newpipe/extractor/stream/SubtitlesStream$a;->b(Z)Lorg/schabi/newpipe/extractor/stream/SubtitlesStream$a;

    move-result-object v1

    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/stream/SubtitlesStream$a;->a()Lorg/schabi/newpipe/extractor/stream/SubtitlesStream;

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v2, "Could not get subtitles"

    invoke-direct {v1, v2, v0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object v1, p0, Lxz7;->l:Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    :cond_1
    return-void
.end method

.method public t()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lxz7;->h:Lcom/grack/nanojson/JsonObject;

    const-string v0, "category.label"

    invoke-static {p0, v0}, Loc5;->h(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public v()Lorg/schabi/newpipe/extractor/stream/Description;
    .locals 5

    const-string v0, "description"

    :try_start_0
    iget-object v1, p0, Lxz7;->h:Lcom/grack/nanojson/JsonObject;

    invoke-static {v1, v0}, Loc5;->h(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Lorg/schabi/newpipe/extractor/exceptions/ParsingException; {:try_start_0 .. :try_end_0} :catch_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xfa

    if-ne v2, v3, :cond_0

    const/16 v2, 0xf7

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "..."

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lorg/schabi/newpipe/extractor/a;->c()Lc23;

    move-result-object v2

    :try_start_1
    iget-object v3, p0, Lxz7;->g:Ljava/lang/String;

    invoke-virtual {p0}, Lmk3;->i()Ljava/lang/String;

    move-result-object p0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/api/v1/videos/"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/description"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lc23;->b(Ljava/lang/String;)Lfu8;

    move-result-object p0

    invoke-static {}, Lcom/grack/nanojson/a;->d()Lcom/grack/nanojson/a$a;

    move-result-object v2

    invoke-virtual {p0}, Lfu8;->c()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/grack/nanojson/a$a;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/grack/nanojson/JsonObject;

    invoke-static {p0, v0}, Loc5;->h(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/schabi/newpipe/extractor/exceptions/ReCaptchaException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/grack/nanojson/JsonParserException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_0
    new-instance p0, Lorg/schabi/newpipe/extractor/stream/Description;

    const/4 v0, 0x2

    invoke-direct {p0, v1, v0}, Lorg/schabi/newpipe/extractor/stream/Description;-><init>(Ljava/lang/String;I)V

    return-object p0

    :catch_1
    sget-object p0, Lorg/schabi/newpipe/extractor/stream/Description;->EMPTY_DESCRIPTION:Lorg/schabi/newpipe/extractor/stream/Description;

    return-object p0
.end method

.method public w()J
    .locals 2

    iget-object p0, p0, Lxz7;->h:Lcom/grack/nanojson/JsonObject;

    const-string v0, "dislikes"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public y()Ljava/util/List;
    .locals 13

    const-string v0, "storyboards"

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-virtual {p0, v0}, Lxz7;->j0(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/schabi/newpipe/extractor/exceptions/ReCaptchaException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_1

    invoke-virtual {v2, v0}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, v0}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lcom/grack/nanojson/JsonObject;

    if-eqz v3, :cond_0

    check-cast v2, Lcom/grack/nanojson/JsonObject;

    const-string v3, "storyboardPath"

    invoke-virtual {v2, v3}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "spriteWidth"

    invoke-virtual {v2, v4}, Lcom/grack/nanojson/JsonObject;->getInt(Ljava/lang/String;)I

    move-result v7

    const-string v4, "spriteHeight"

    invoke-virtual {v2, v4}, Lcom/grack/nanojson/JsonObject;->getInt(Ljava/lang/String;)I

    move-result v8

    const-string v4, "totalWidth"

    invoke-virtual {v2, v4}, Lcom/grack/nanojson/JsonObject;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "totalHeight"

    invoke-virtual {v2, v5}, Lcom/grack/nanojson/JsonObject;->getInt(Ljava/lang/String;)I

    move-result v5

    div-int v11, v4, v7

    div-int v12, v5, v8

    mul-int v9, v11, v12

    const-string v4, "spriteDuration"

    invoke-virtual {v2, v4}, Lcom/grack/nanojson/JsonObject;->getInt(Ljava/lang/String;)I

    move-result v2

    mul-int/lit16 v10, v2, 0x3e8

    new-instance v2, Lorg/schabi/newpipe/extractor/stream/Frameset;

    iget-object v4, p0, Lxz7;->g:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Luz7;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    move-object v5, v2

    invoke-direct/range {v5 .. v12}, Lorg/schabi/newpipe/extractor/stream/Frameset;-><init>(Ljava/util/List;IIIIII)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1

    :catch_0
    move-exception p0

    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;

    const-string v1, "Could not get frames"

    invoke-direct {v0, v1, p0}, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public z()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lmk3;->a()V

    invoke-virtual {p0}, Lxz7;->J()Lorg/schabi/newpipe/extractor/stream/StreamType;

    move-result-object v0

    sget-object v1, Lorg/schabi/newpipe/extractor/stream/StreamType;->VIDEO_STREAM:Lorg/schabi/newpipe/extractor/stream/StreamType;

    const-string v2, ""

    const-string v3, "playlistUrl"

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lxz7;->h:Lcom/grack/nanojson/JsonObject;

    const-string v1, "files"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    invoke-static {v0}, Lorg/schabi/newpipe/extractor/utils/a;->o(Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lxz7;->h:Lcom/grack/nanojson/JsonObject;

    invoke-virtual {p0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    invoke-virtual {p0, v3, v2}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lxz7;->h:Lcom/grack/nanojson/JsonObject;

    const-string v0, "streamingPlaylists"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonArray;->getObject(I)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    invoke-virtual {p0, v3, v2}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

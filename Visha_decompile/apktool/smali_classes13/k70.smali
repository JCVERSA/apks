.class public Lk70;
.super Lorg/schabi/newpipe/extractor/stream/StreamExtractor;
.source "SourceFile"


# instance fields
.field public g:Lcom/grack/nanojson/JsonObject;

.field public h:Lcom/grack/nanojson/JsonObject;

.field public i:Lorg/jsoup/nodes/Document;


# direct methods
.method public constructor <init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/extractor/stream/StreamExtractor;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;)V

    return-void
.end method

.method public static synthetic e0(Lorg/jsoup/nodes/Element;)Ljava/util/stream/Stream;
    .locals 0

    invoke-static {p0}, Lk70;->i0(Lorg/jsoup/nodes/Element;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f0(Lorg/jsoup/nodes/Element;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lk70;->j0(Lorg/jsoup/nodes/Element;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static g0(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;
    .locals 2

    :try_start_0
    const-string v0, "data-tralbum"

    invoke-static {p0, v0}, Loc5;->d(Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0
    :try_end_0
    .catch Lcom/grack/nanojson/JsonParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :goto_0
    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v1, "JSON does not exist"

    invoke-direct {v0, v1, p0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :goto_1
    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v1, "Faulty JSON; page likely does not contain album data"

    invoke-direct {v0, v1, p0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static synthetic i0(Lorg/jsoup/nodes/Element;)Ljava/util/stream/Stream;
    .locals 1

    const-string v0, "tag"

    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/Element;->G0(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic j0(Lorg/jsoup/nodes/Element;)Ljava/lang/String;
    .locals 1

    const-string v0, "src"

    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/g;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public C()J
    .locals 2

    iget-object p0, p0, Lk70;->g:Lcom/grack/nanojson/JsonObject;

    const-string v0, "trackinfo"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonArray;->getObject(I)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v0, "duration"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-long v0, v0

    return-wide v0
.end method

.method public D()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lk70;->h:Lcom/grack/nanojson/JsonObject;

    const-string v0, "license_type"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getInt(Ljava/lang/String;)I

    move-result p0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const-string p0, "Unknown"

    return-object p0

    :pswitch_1
    const-string p0, "CC BY-SA 3.0"

    return-object p0

    :pswitch_2
    const-string p0, "CC BY 3.0"

    return-object p0

    :pswitch_3
    const-string p0, "CC BY-ND 3.0"

    return-object p0

    :pswitch_4
    const-string p0, "CC BY-NC 3.0"

    return-object p0

    :pswitch_5
    const-string p0, "CC BY-NC-SA 3.0"

    return-object p0

    :pswitch_6
    const-string p0, "CC BY-NC-ND 3.0"

    return-object p0

    :pswitch_7
    const-string p0, "All rights reserved \u00a9"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic H()Lyz4;
    .locals 0

    invoke-virtual {p0}, Lk70;->h0()Lorg/schabi/newpipe/extractor/playlist/c;

    move-result-object p0

    return-object p0
.end method

.method public J()Lorg/schabi/newpipe/extractor/stream/StreamType;
    .locals 0

    sget-object p0, Lorg/schabi/newpipe/extractor/stream/StreamType;->AUDIO_STREAM:Lorg/schabi/newpipe/extractor/stream/StreamType;

    return-object p0
.end method

.method public P()Ljava/util/List;
    .locals 2

    iget-object p0, p0, Lk70;->i:Lorg/jsoup/nodes/Document;

    const-string v0, "itemprop"

    const-string v1, "keywords"

    invoke-virtual {p0, v0, v1}, Lorg/jsoup/nodes/Element;->F0(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lu60;

    invoke-direct {v0}, Lu60;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public Q()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lk70;->h:Lcom/grack/nanojson/JsonObject;

    const-string v0, "publish_date"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public R()Ljava/util/List;
    .locals 2

    iget-object v0, p0, Lk70;->g:Lcom/grack/nanojson/JsonObject;

    const-string v1, "art_id"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lk70;->g:Lcom/grack/nanojson/JsonObject;

    invoke-virtual {p0, v1}, Lcom/grack/nanojson/JsonObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    const/4 p0, 0x1

    invoke-static {v0, v1, p0}, Lj60;->h(JZ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public U()Lorg/schabi/newpipe/extractor/localization/DateWrapper;
    .locals 0

    invoke-virtual {p0}, Lk70;->Q()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lj60;->r(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/localization/DateWrapper;

    move-result-object p0

    return-object p0
.end method

.method public V()Ljava/util/List;
    .locals 1

    iget-object p0, p0, Lk70;->i:Lorg/jsoup/nodes/Document;

    const-string v0, "band-photo"

    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/Element;->G0(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lg70;

    invoke-direct {v0}, Lg70;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lj60;->i(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public W()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lk70;->g:Lcom/grack/nanojson/JsonObject;

    const-string v0, "artist"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public Y()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lk70;->p()Ljava/lang/String;

    move-result-object p0

    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x2

    aget-object p0, p0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

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
    .locals 0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public h0()Lorg/schabi/newpipe/extractor/playlist/c;
    .locals 2

    new-instance v0, Lorg/schabi/newpipe/extractor/playlist/c;

    invoke-virtual {p0}, Lmk3;->n()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/playlist/c;-><init>(I)V

    iget-object p0, p0, Lk70;->i:Lorg/jsoup/nodes/Document;

    const-string v1, "recommended-album"

    invoke-virtual {p0, v1}, Lorg/jsoup/nodes/Element;->G0(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, Li70;

    invoke-direct {v1}, Li70;-><init>()V

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, Lj70;

    invoke-direct {v1, v0}, Lj70;-><init>(Lorg/schabi/newpipe/extractor/playlist/c;)V

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lk70;->h:Lcom/grack/nanojson/JsonObject;

    const-string v0, "title"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public p()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lk70;->g:Lcom/grack/nanojson/JsonObject;

    const-string v0, "url"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/schabi/newpipe/extractor/utils/a;->w(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public q(Lc23;)V
    .locals 2

    invoke-virtual {p0}, Lmk3;->j()Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;

    move-result-object v0

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lc23;->b(Ljava/lang/String;)Lfu8;

    move-result-object p1

    invoke-virtual {p1}, Lfu8;->c()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lvc5;->a(Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    move-result-object v0

    iput-object v0, p0, Lk70;->i:Lorg/jsoup/nodes/Document;

    invoke-static {p1}, Lk70;->g0(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p1

    iput-object p1, p0, Lk70;->g:Lcom/grack/nanojson/JsonObject;

    const-string v0, "current"

    invoke-virtual {p1, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p1

    iput-object p1, p0, Lk70;->h:Lcom/grack/nanojson/JsonObject;

    iget-object p1, p0, Lk70;->g:Lcom/grack/nanojson/JsonObject;

    const-string v0, "trackinfo"

    invoke-virtual {p1, v0}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result p1

    const/4 v1, 0x1

    if-gt p1, v1, :cond_1

    iget-object p0, p0, Lk70;->g:Lcom/grack/nanojson/JsonObject;

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/grack/nanojson/JsonArray;->getObject(I)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string p1, "file"

    invoke-virtual {p0, p1}, Lcom/grack/nanojson/JsonObject;->isNull(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lorg/schabi/newpipe/extractor/exceptions/PaidContentException;

    const-string p1, "This track is not available without being purchased"

    invoke-direct {p0, p1}, Lorg/schabi/newpipe/extractor/exceptions/PaidContentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;

    const-string p1, "Page is actually an album, not a track"

    invoke-direct {p0, p1}, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public s()Ljava/util/List;
    .locals 3

    new-instance v0, Lorg/schabi/newpipe/extractor/stream/AudioStream$a;

    invoke-direct {v0}, Lorg/schabi/newpipe/extractor/stream/AudioStream$a;-><init>()V

    const-string v1, "mp3-128"

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/stream/AudioStream$a;->i(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/stream/AudioStream$a;

    move-result-object v0

    iget-object p0, p0, Lk70;->g:Lcom/grack/nanojson/JsonObject;

    const-string v2, "trackinfo"

    invoke-virtual {p0, v2}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object p0

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/grack/nanojson/JsonArray;->getObject(I)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v2, "file"

    invoke-virtual {p0, v2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lorg/schabi/newpipe/extractor/stream/AudioStream$a;->g(Ljava/lang/String;Z)Lorg/schabi/newpipe/extractor/stream/AudioStream$a;

    move-result-object p0

    sget-object v0, Lorg/schabi/newpipe/extractor/MediaFormat;->MP3:Lorg/schabi/newpipe/extractor/MediaFormat;

    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/stream/AudioStream$a;->l(Lorg/schabi/newpipe/extractor/MediaFormat;)Lorg/schabi/newpipe/extractor/stream/AudioStream$a;

    move-result-object p0

    const/16 v0, 0x80

    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/stream/AudioStream$a;->f(I)Lorg/schabi/newpipe/extractor/stream/AudioStream$a;

    move-result-object p0

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/stream/AudioStream$a;->a()Lorg/schabi/newpipe/extractor/stream/AudioStream;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public t()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lk70;->i:Lorg/jsoup/nodes/Document;

    const-string v0, "tralbum-tags"

    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/Element;->G0(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lh70;

    invoke-direct {v0}, Lh70;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lu60;

    invoke-direct {v0}, Lu60;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public v()Lorg/schabi/newpipe/extractor/stream/Description;
    .locals 3

    iget-object v0, p0, Lk70;->h:Lcom/grack/nanojson/JsonObject;

    const-string v1, "about"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lk70;->h:Lcom/grack/nanojson/JsonObject;

    const-string v2, "lyrics"

    invoke-virtual {v1, v2}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lk70;->h:Lcom/grack/nanojson/JsonObject;

    const-string v2, "credits"

    invoke-virtual {p0, v2}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    filled-new-array {v0, v1, p0}, [Ljava/lang/String;

    move-result-object p0

    const-string v0, "\n\n"

    invoke-static {v0, p0}, Lorg/schabi/newpipe/extractor/utils/a;->s(Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lorg/schabi/newpipe/extractor/stream/Description;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lorg/schabi/newpipe/extractor/stream/Description;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

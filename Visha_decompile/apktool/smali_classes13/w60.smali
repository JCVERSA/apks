.class public Lw60;
.super Lk70;
.source "SourceFile"


# instance fields
.field public j:Lcom/grack/nanojson/JsonObject;


# direct methods
.method public constructor <init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lk70;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;)V

    return-void
.end method

.method public static synthetic k0()Lorg/schabi/newpipe/extractor/exceptions/ParsingException;
    .locals 1

    invoke-static {}, Lw60;->l0()Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic l0()Lorg/schabi/newpipe/extractor/exceptions/ParsingException;
    .locals 2

    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v1, "Could not get uploader name"

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static m0(I)Lcom/grack/nanojson/JsonObject;
    .locals 4

    :try_start_0
    invoke-static {}, Lcom/grack/nanojson/a;->d()Lcom/grack/nanojson/a$a;

    move-result-object v0

    invoke-static {}, Lorg/schabi/newpipe/extractor/a;->c()Lc23;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https://bandcamp.com/api/bcweekly/1/get?id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lc23;->b(Ljava/lang/String;)Lfu8;

    move-result-object p0

    invoke-virtual {p0}, Lfu8;->c()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/grack/nanojson/a$a;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/grack/nanojson/JsonObject;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/schabi/newpipe/extractor/exceptions/ReCaptchaException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/grack/nanojson/JsonParserException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v1, "could not get show data"

    invoke-direct {v0, v1, p0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public C()J
    .locals 2

    iget-object p0, p0, Lw60;->j:Lcom/grack/nanojson/JsonObject;

    const-string v0, "audio_duration"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public D()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public bridge synthetic H()Lyz4;
    .locals 0

    invoke-virtual {p0}, Lw60;->h0()Lorg/schabi/newpipe/extractor/playlist/c;

    move-result-object p0

    return-object p0
.end method

.method public I()Ljava/util/List;
    .locals 6

    iget-object p0, p0, Lw60;->j:Lcom/grack/nanojson/JsonObject;

    const-string v0, "tracks"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/grack/nanojson/JsonObject;

    new-instance v2, Lorg/schabi/newpipe/extractor/stream/StreamSegment;

    const-string v3, "title"

    invoke-virtual {v1, v3}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "timecode"

    invoke-virtual {v1, v4}, Lcom/grack/nanojson/JsonObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v3, v4}, Lorg/schabi/newpipe/extractor/stream/StreamSegment;-><init>(Ljava/lang/String;I)V

    const-string v3, "track_art_id"

    invoke-virtual {v1, v3}, Lcom/grack/nanojson/JsonObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lj60;->f(JZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/schabi/newpipe/extractor/stream/StreamSegment;->setPreviewUrl(Ljava/lang/String;)V

    const-string v3, "artist"

    invoke-virtual {v1, v3}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/schabi/newpipe/extractor/stream/StreamSegment;->setChannelName(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public P()Ljava/util/List;
    .locals 0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public Q()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lw60;->j:Lcom/grack/nanojson/JsonObject;

    const-string v0, "published_date"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public R()Ljava/util/List;
    .locals 2

    iget-object p0, p0, Lw60;->j:Lcom/grack/nanojson/JsonObject;

    const-string v0, "show_image_id"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    const/4 p0, 0x0

    invoke-static {v0, v1, p0}, Lj60;->h(JZ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public V()Ljava/util/List;
    .locals 3

    new-instance p0, Lorg/schabi/newpipe/extractor/Image;

    const/16 v0, 0x200

    sget-object v1, Lorg/schabi/newpipe/extractor/Image$ResolutionLevel;->MEDIUM:Lorg/schabi/newpipe/extractor/Image$ResolutionLevel;

    const-string v2, "https://bandcamp.com/img/buttons/bandcamp-button-circle-whitecolor-512.png"

    invoke-direct {p0, v2, v0, v0, v1}, Lorg/schabi/newpipe/extractor/Image;-><init>(Ljava/lang/String;IILorg/schabi/newpipe/extractor/Image$ResolutionLevel;)V

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public W()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lw60;->j:Lcom/grack/nanojson/JsonObject;

    const-string v0, "image_caption"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lvc5;->a(Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    move-result-object p0

    const-string v0, "a"

    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/Element;->H0(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lu60;

    invoke-direct {v0}, Lu60;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lv60;

    invoke-direct {v0}, Lv60;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public Y()Ljava/lang/String;
    .locals 1

    new-instance p0, Lorg/schabi/newpipe/extractor/exceptions/ContentNotSupportedException;

    const-string v0, "Fan pages are not supported"

    invoke-direct {p0, v0}, Lorg/schabi/newpipe/extractor/exceptions/ContentNotSupportedException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public h0()Lorg/schabi/newpipe/extractor/playlist/c;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lw60;->j:Lcom/grack/nanojson/JsonObject;

    const-string v0, "subtitle"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public p()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lmk3;->j()Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;

    move-result-object p0

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;->getUrl()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public q(Lc23;)V
    .locals 0

    invoke-virtual {p0}, Lmk3;->i()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lw60;->m0(I)Lcom/grack/nanojson/JsonObject;

    move-result-object p1

    iput-object p1, p0, Lw60;->j:Lcom/grack/nanojson/JsonObject;

    return-void
.end method

.method public s()Ljava/util/List;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lw60;->j:Lcom/grack/nanojson/JsonObject;

    const-string v1, "audio_stream"

    invoke-virtual {p0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v1, "mp3-128"

    invoke-virtual {p0, v1}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    new-instance v2, Lorg/schabi/newpipe/extractor/stream/AudioStream$a;

    invoke-direct {v2}, Lorg/schabi/newpipe/extractor/stream/AudioStream$a;-><init>()V

    invoke-virtual {v2, v1}, Lorg/schabi/newpipe/extractor/stream/AudioStream$a;->i(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/stream/AudioStream$a;

    move-result-object v2

    invoke-virtual {p0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1, v3}, Lorg/schabi/newpipe/extractor/stream/AudioStream$a;->g(Ljava/lang/String;Z)Lorg/schabi/newpipe/extractor/stream/AudioStream$a;

    move-result-object v1

    sget-object v2, Lorg/schabi/newpipe/extractor/MediaFormat;->MP3:Lorg/schabi/newpipe/extractor/MediaFormat;

    invoke-virtual {v1, v2}, Lorg/schabi/newpipe/extractor/stream/AudioStream$a;->l(Lorg/schabi/newpipe/extractor/MediaFormat;)Lorg/schabi/newpipe/extractor/stream/AudioStream$a;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Lorg/schabi/newpipe/extractor/stream/AudioStream$a;->f(I)Lorg/schabi/newpipe/extractor/stream/AudioStream$a;

    move-result-object v1

    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/stream/AudioStream$a;->a()Lorg/schabi/newpipe/extractor/stream/AudioStream;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string v1, "opus-lo"

    invoke-virtual {p0, v1}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Lorg/schabi/newpipe/extractor/stream/AudioStream$a;

    invoke-direct {v2}, Lorg/schabi/newpipe/extractor/stream/AudioStream$a;-><init>()V

    invoke-virtual {v2, v1}, Lorg/schabi/newpipe/extractor/stream/AudioStream$a;->i(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/stream/AudioStream$a;

    move-result-object v2

    invoke-virtual {p0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0, v3}, Lorg/schabi/newpipe/extractor/stream/AudioStream$a;->g(Ljava/lang/String;Z)Lorg/schabi/newpipe/extractor/stream/AudioStream$a;

    move-result-object p0

    sget-object v1, Lorg/schabi/newpipe/extractor/MediaFormat;->OPUS:Lorg/schabi/newpipe/extractor/MediaFormat;

    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/extractor/stream/AudioStream$a;->l(Lorg/schabi/newpipe/extractor/MediaFormat;)Lorg/schabi/newpipe/extractor/stream/AudioStream$a;

    move-result-object p0

    const/16 v1, 0x64

    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/extractor/stream/AudioStream$a;->f(I)Lorg/schabi/newpipe/extractor/stream/AudioStream$a;

    move-result-object p0

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/stream/AudioStream$a;->a()Lorg/schabi/newpipe/extractor/stream/AudioStream;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object v0
.end method

.method public t()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public v()Lorg/schabi/newpipe/extractor/stream/Description;
    .locals 2

    new-instance v0, Lorg/schabi/newpipe/extractor/stream/Description;

    iget-object p0, p0, Lw60;->j:Lcom/grack/nanojson/JsonObject;

    const-string v1, "desc"

    invoke-virtual {p0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lorg/schabi/newpipe/extractor/stream/Description;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

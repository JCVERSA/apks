.class public Lkd6;
.super Lorg/schabi/newpipe/extractor/stream/StreamExtractor;
.source "SourceFile"


# instance fields
.field public g:Lcom/grack/nanojson/JsonObject;

.field public h:Lcom/grack/nanojson/JsonObject;


# direct methods
.method public constructor <init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/extractor/stream/StreamExtractor;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;)V

    return-void
.end method

.method public static synthetic e0(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/exceptions/ParsingException;
    .locals 0

    invoke-static {p0}, Lkd6;->f0(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f0(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/exceptions/ParsingException;
    .locals 3

    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot convert this language to a locale: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public B()Ljava/util/Locale;
    .locals 1

    iget-object p0, p0, Lkd6;->g:Lcom/grack/nanojson/JsonObject;

    const-string v0, "original_language"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/schabi/newpipe/extractor/localization/Localization;->getLocaleFromThreeLetterCode(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object p0

    return-object p0
.end method

.method public C()J
    .locals 2

    iget-object p0, p0, Lkd6;->g:Lcom/grack/nanojson/JsonObject;

    const-string v0, "length"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getInt(Ljava/lang/String;)I

    move-result p0

    int-to-long v0, p0

    return-wide v0
.end method

.method public J()Lorg/schabi/newpipe/extractor/stream/StreamType;
    .locals 0

    sget-object p0, Lorg/schabi/newpipe/extractor/stream/StreamType;->VIDEO_STREAM:Lorg/schabi/newpipe/extractor/stream/StreamType;

    return-object p0
.end method

.method public P()Ljava/util/List;
    .locals 1

    iget-object p0, p0, Lkd6;->g:Lcom/grack/nanojson/JsonObject;

    const-string v0, "tags"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object p0

    invoke-static {p0}, Loc5;->i(Lcom/grack/nanojson/JsonArray;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public Q()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lkd6;->g:Lcom/grack/nanojson/JsonObject;

    const-string v0, "release_date"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public R()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lkd6;->g:Lcom/grack/nanojson/JsonObject;

    invoke-static {p0}, Lwc6;->e(Lcom/grack/nanojson/JsonObject;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public U()Lorg/schabi/newpipe/extractor/localization/DateWrapper;
    .locals 1

    new-instance v0, Lorg/schabi/newpipe/extractor/localization/DateWrapper;

    invoke-virtual {p0}, Lkd6;->Q()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lwc6;->g(Ljava/lang/String;)Ljava/time/OffsetDateTime;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/extractor/localization/DateWrapper;-><init>(Ljava/time/OffsetDateTime;)V

    return-object v0
.end method

.method public V()Ljava/util/List;
    .locals 1

    iget-object p0, p0, Lkd6;->h:Lcom/grack/nanojson/JsonObject;

    const-string v0, "logo_url"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lwc6;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public W()Ljava/lang/String;
    .locals 2

    iget-object p0, p0, Lkd6;->g:Lcom/grack/nanojson/JsonObject;

    const-string v0, "conference_url"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "https://(api\\.)?media\\.ccc\\.de/public/conferences/"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public Y()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lkd6;->W()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://media.ccc.de/c/"

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
    .locals 8

    iget-object p0, p0, Lkd6;->g:Lcom/grack/nanojson/JsonObject;

    const-string v0, "recordings"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    invoke-virtual {p0, v2}, Lcom/grack/nanojson/JsonArray;->getObject(I)Lcom/grack/nanojson/JsonObject;

    move-result-object v3

    const-string v4, "mime_type"

    invoke-virtual {v3, v4}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "video"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "webm"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v4, Lorg/schabi/newpipe/extractor/MediaFormat;->WEBM:Lorg/schabi/newpipe/extractor/MediaFormat;

    goto :goto_1

    :cond_0
    const-string v5, "mp4"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lorg/schabi/newpipe/extractor/MediaFormat;->MPEG_4:Lorg/schabi/newpipe/extractor/MediaFormat;

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    new-instance v5, Lorg/schabi/newpipe/extractor/stream/VideoStream$a;

    invoke-direct {v5}, Lorg/schabi/newpipe/extractor/stream/VideoStream$a;-><init>()V

    const-string v6, "filename"

    const-string v7, " "

    invoke-virtual {v3, v6, v7}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/schabi/newpipe/extractor/stream/VideoStream$a;->d(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/stream/VideoStream$a;

    move-result-object v5

    const-string v6, "recording_url"

    invoke-virtual {v3, v6}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Lorg/schabi/newpipe/extractor/stream/VideoStream$a;->b(Ljava/lang/String;Z)Lorg/schabi/newpipe/extractor/stream/VideoStream$a;

    move-result-object v5

    invoke-virtual {v5, v1}, Lorg/schabi/newpipe/extractor/stream/VideoStream$a;->e(Z)Lorg/schabi/newpipe/extractor/stream/VideoStream$a;

    move-result-object v5

    invoke-virtual {v5, v4}, Lorg/schabi/newpipe/extractor/stream/VideoStream$a;->h(Lorg/schabi/newpipe/extractor/MediaFormat;)Lorg/schabi/newpipe/extractor/stream/VideoStream$a;

    move-result-object v4

    const-string v5, "height"

    invoke-virtual {v3, v5}, Lcom/grack/nanojson/JsonObject;->getInt(Ljava/lang/String;)I

    move-result v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "p"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lorg/schabi/newpipe/extractor/stream/VideoStream$a;->i(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/stream/VideoStream$a;

    move-result-object v3

    invoke-virtual {v3}, Lorg/schabi/newpipe/extractor/stream/VideoStream$a;->a()Lorg/schabi/newpipe/extractor/stream/VideoStream;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public b0()J
    .locals 2

    iget-object p0, p0, Lkd6;->g:Lcom/grack/nanojson/JsonObject;

    const-string v0, "view_count"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getInt(Ljava/lang/String;)I

    move-result p0

    int-to-long v0, p0

    return-wide v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lkd6;->g:Lcom/grack/nanojson/JsonObject;

    const-string v0, "title"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lkd6;->g:Lcom/grack/nanojson/JsonObject;

    const-string v0, "frontend_link"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public q(Lc23;)V
    .locals 4

    invoke-virtual {p0}, Lmk3;->i()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://api.media.ccc.de/public/events/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {}, Lcom/grack/nanojson/a;->d()Lcom/grack/nanojson/a$a;

    move-result-object v1

    invoke-virtual {p1, v0}, Lc23;->b(Ljava/lang/String;)Lfu8;

    move-result-object v2

    invoke-virtual {v2}, Lfu8;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/grack/nanojson/a$a;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/grack/nanojson/JsonObject;

    iput-object v1, p0, Lkd6;->g:Lcom/grack/nanojson/JsonObject;

    invoke-static {}, Lcom/grack/nanojson/a;->d()Lcom/grack/nanojson/a$a;

    move-result-object v1

    iget-object v2, p0, Lkd6;->g:Lcom/grack/nanojson/JsonObject;

    const-string v3, "conference_url"

    invoke-virtual {v2, v3}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lc23;->b(Ljava/lang/String;)Lfu8;

    move-result-object p1

    invoke-virtual {p1}, Lfu8;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/grack/nanojson/a$a;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/grack/nanojson/JsonObject;

    iput-object p1, p0, Lkd6;->h:Lcom/grack/nanojson/JsonObject;
    :try_end_0
    .catch Lcom/grack/nanojson/JsonParserException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not parse json returned by URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public s()Ljava/util/List;
    .locals 7

    iget-object p0, p0, Lkd6;->g:Lcom/grack/nanojson/JsonObject;

    const-string v0, "recordings"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    invoke-virtual {p0, v1}, Lcom/grack/nanojson/JsonArray;->getObject(I)Lcom/grack/nanojson/JsonObject;

    move-result-object v2

    const-string v3, "mime_type"

    invoke-virtual {v2, v3}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "opus"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v3, Lorg/schabi/newpipe/extractor/MediaFormat;->OPUS:Lorg/schabi/newpipe/extractor/MediaFormat;

    goto :goto_1

    :cond_0
    const-string v4, "mpeg"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v3, Lorg/schabi/newpipe/extractor/MediaFormat;->MP3:Lorg/schabi/newpipe/extractor/MediaFormat;

    goto :goto_1

    :cond_1
    const-string v4, "ogg"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Lorg/schabi/newpipe/extractor/MediaFormat;->OGG:Lorg/schabi/newpipe/extractor/MediaFormat;

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    new-instance v4, Lorg/schabi/newpipe/extractor/stream/AudioStream$a;

    invoke-direct {v4}, Lorg/schabi/newpipe/extractor/stream/AudioStream$a;-><init>()V

    const-string v5, "filename"

    const-string v6, " "

    invoke-virtual {v2, v5, v6}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/schabi/newpipe/extractor/stream/AudioStream$a;->i(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/stream/AudioStream$a;

    move-result-object v4

    const-string v5, "recording_url"

    invoke-virtual {v2, v5}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lorg/schabi/newpipe/extractor/stream/AudioStream$a;->g(Ljava/lang/String;Z)Lorg/schabi/newpipe/extractor/stream/AudioStream$a;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/schabi/newpipe/extractor/stream/AudioStream$a;->l(Lorg/schabi/newpipe/extractor/MediaFormat;)Lorg/schabi/newpipe/extractor/stream/AudioStream$a;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Lorg/schabi/newpipe/extractor/stream/AudioStream$a;->f(I)Lorg/schabi/newpipe/extractor/stream/AudioStream$a;

    move-result-object v3

    const-string v4, "language"

    invoke-virtual {v2, v4}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    const-string v4, "-"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {v2}, Lun5;->a(Ljava/lang/String;)Ljava/util/Optional;

    move-result-object v4

    new-instance v5, Ljd6;

    invoke-direct {v5, v2}, Ljd6;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Locale;

    invoke-virtual {v3, v2}, Lorg/schabi/newpipe/extractor/stream/AudioStream$a;->b(Ljava/util/Locale;)Lorg/schabi/newpipe/extractor/stream/AudioStream$a;

    :cond_3
    invoke-virtual {v3}, Lorg/schabi/newpipe/extractor/stream/AudioStream$a;->a()Lorg/schabi/newpipe/extractor/stream/AudioStream;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_5
    return-object v0
.end method

.method public v()Lorg/schabi/newpipe/extractor/stream/Description;
    .locals 2

    new-instance v0, Lorg/schabi/newpipe/extractor/stream/Description;

    iget-object p0, p0, Lkd6;->g:Lcom/grack/nanojson/JsonObject;

    const-string v1, "description"

    invoke-virtual {p0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lorg/schabi/newpipe/extractor/stream/Description;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

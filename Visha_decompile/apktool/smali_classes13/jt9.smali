.class public abstract Ljt9;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/List;

.field public static final b:Ljava/util/List;

.field public static c:Ljava/lang/String;

.field public static final d:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 18

    new-instance v0, Lorg/schabi/newpipe/extractor/utils/ImageSuffix;

    sget-object v1, Lorg/schabi/newpipe/extractor/Image$ResolutionLevel;->LOW:Lorg/schabi/newpipe/extractor/Image$ResolutionLevel;

    const-string v2, "mini"

    const/16 v3, 0x10

    invoke-direct {v0, v2, v3, v3, v1}, Lorg/schabi/newpipe/extractor/utils/ImageSuffix;-><init>(Ljava/lang/String;IILorg/schabi/newpipe/extractor/Image$ResolutionLevel;)V

    new-instance v2, Lorg/schabi/newpipe/extractor/utils/ImageSuffix;

    const-string v3, "t20x20"

    const/16 v4, 0x14

    invoke-direct {v2, v3, v4, v4, v1}, Lorg/schabi/newpipe/extractor/utils/ImageSuffix;-><init>(Ljava/lang/String;IILorg/schabi/newpipe/extractor/Image$ResolutionLevel;)V

    new-instance v3, Lorg/schabi/newpipe/extractor/utils/ImageSuffix;

    const-string v4, "small"

    const/16 v5, 0x20

    invoke-direct {v3, v4, v5, v5, v1}, Lorg/schabi/newpipe/extractor/utils/ImageSuffix;-><init>(Ljava/lang/String;IILorg/schabi/newpipe/extractor/Image$ResolutionLevel;)V

    new-instance v4, Lorg/schabi/newpipe/extractor/utils/ImageSuffix;

    const-string v5, "badge"

    const/16 v6, 0x2f

    invoke-direct {v4, v5, v6, v6, v1}, Lorg/schabi/newpipe/extractor/utils/ImageSuffix;-><init>(Ljava/lang/String;IILorg/schabi/newpipe/extractor/Image$ResolutionLevel;)V

    new-instance v5, Lorg/schabi/newpipe/extractor/utils/ImageSuffix;

    const-string v6, "t50x50"

    const/16 v7, 0x32

    invoke-direct {v5, v6, v7, v7, v1}, Lorg/schabi/newpipe/extractor/utils/ImageSuffix;-><init>(Ljava/lang/String;IILorg/schabi/newpipe/extractor/Image$ResolutionLevel;)V

    new-instance v6, Lorg/schabi/newpipe/extractor/utils/ImageSuffix;

    const-string v7, "t60x60"

    const/16 v8, 0x3c

    invoke-direct {v6, v7, v8, v8, v1}, Lorg/schabi/newpipe/extractor/utils/ImageSuffix;-><init>(Ljava/lang/String;IILorg/schabi/newpipe/extractor/Image$ResolutionLevel;)V

    new-instance v7, Lorg/schabi/newpipe/extractor/utils/ImageSuffix;

    const-string v8, "t67x67"

    const/16 v9, 0x43

    invoke-direct {v7, v8, v9, v9, v1}, Lorg/schabi/newpipe/extractor/utils/ImageSuffix;-><init>(Ljava/lang/String;IILorg/schabi/newpipe/extractor/Image$ResolutionLevel;)V

    new-instance v8, Lorg/schabi/newpipe/extractor/utils/ImageSuffix;

    const-string v9, "t80x80"

    const/16 v10, 0x50

    invoke-direct {v8, v9, v10, v10, v1}, Lorg/schabi/newpipe/extractor/utils/ImageSuffix;-><init>(Ljava/lang/String;IILorg/schabi/newpipe/extractor/Image$ResolutionLevel;)V

    new-instance v9, Lorg/schabi/newpipe/extractor/utils/ImageSuffix;

    const-string v10, "large"

    const/16 v11, 0x64

    invoke-direct {v9, v10, v11, v11, v1}, Lorg/schabi/newpipe/extractor/utils/ImageSuffix;-><init>(Ljava/lang/String;IILorg/schabi/newpipe/extractor/Image$ResolutionLevel;)V

    new-instance v10, Lorg/schabi/newpipe/extractor/utils/ImageSuffix;

    const-string v11, "t120x120"

    const/16 v12, 0x78

    invoke-direct {v10, v11, v12, v12, v1}, Lorg/schabi/newpipe/extractor/utils/ImageSuffix;-><init>(Ljava/lang/String;IILorg/schabi/newpipe/extractor/Image$ResolutionLevel;)V

    new-instance v11, Lorg/schabi/newpipe/extractor/utils/ImageSuffix;

    sget-object v15, Lorg/schabi/newpipe/extractor/Image$ResolutionLevel;->MEDIUM:Lorg/schabi/newpipe/extractor/Image$ResolutionLevel;

    const-string v1, "t200x200"

    const/16 v12, 0xc8

    invoke-direct {v11, v1, v12, v12, v15}, Lorg/schabi/newpipe/extractor/utils/ImageSuffix;-><init>(Ljava/lang/String;IILorg/schabi/newpipe/extractor/Image$ResolutionLevel;)V

    new-instance v12, Lorg/schabi/newpipe/extractor/utils/ImageSuffix;

    const-string v1, "t240x240"

    const/16 v13, 0xf0

    invoke-direct {v12, v1, v13, v13, v15}, Lorg/schabi/newpipe/extractor/utils/ImageSuffix;-><init>(Ljava/lang/String;IILorg/schabi/newpipe/extractor/Image$ResolutionLevel;)V

    new-instance v13, Lorg/schabi/newpipe/extractor/utils/ImageSuffix;

    const-string v1, "t250x250"

    const/16 v14, 0xfa

    invoke-direct {v13, v1, v14, v14, v15}, Lorg/schabi/newpipe/extractor/utils/ImageSuffix;-><init>(Ljava/lang/String;IILorg/schabi/newpipe/extractor/Image$ResolutionLevel;)V

    new-instance v14, Lorg/schabi/newpipe/extractor/utils/ImageSuffix;

    const-string v1, "t300x300"

    move-object/from16 v16, v13

    const/16 v13, 0x12c

    invoke-direct {v14, v1, v13, v13, v15}, Lorg/schabi/newpipe/extractor/utils/ImageSuffix;-><init>(Ljava/lang/String;IILorg/schabi/newpipe/extractor/Image$ResolutionLevel;)V

    new-instance v13, Lorg/schabi/newpipe/extractor/utils/ImageSuffix;

    const-string v1, "t500x500"

    move-object/from16 v17, v14

    const/16 v14, 0x1f4

    invoke-direct {v13, v1, v14, v14, v15}, Lorg/schabi/newpipe/extractor/utils/ImageSuffix;-><init>(Ljava/lang/String;IILorg/schabi/newpipe/extractor/Image$ResolutionLevel;)V

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v11

    move-object v11, v12

    move-object/from16 v12, v16

    move-object v14, v13

    move-object/from16 v13, v17

    filled-new-array/range {v0 .. v14}, [Lorg/schabi/newpipe/extractor/utils/ImageSuffix;

    move-result-object v0

    invoke-static {v0}, Lhdb;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Ljt9;->a:Ljava/util/List;

    new-instance v0, Lorg/schabi/newpipe/extractor/utils/ImageSuffix;

    const/16 v1, 0x4d8

    const/16 v2, 0x104

    const-string v3, "t1240x260"

    invoke-direct {v0, v3, v1, v2, v15}, Lorg/schabi/newpipe/extractor/utils/ImageSuffix;-><init>(Ljava/lang/String;IILorg/schabi/newpipe/extractor/Image$ResolutionLevel;)V

    new-instance v1, Lorg/schabi/newpipe/extractor/utils/ImageSuffix;

    const/16 v2, 0x9b0

    const/16 v3, 0x208

    const-string v4, "t2480x520"

    invoke-direct {v1, v4, v2, v3, v15}, Lorg/schabi/newpipe/extractor/utils/ImageSuffix;-><init>(Ljava/lang/String;IILorg/schabi/newpipe/extractor/Image$ResolutionLevel;)V

    invoke-static {v0, v1}, Let9;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Ljt9;->b:Ljava/util/List;

    const-string v0, "^https?://on.soundcloud.com/[0-9a-zA-Z]+$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Ljt9;->d:Ljava/util/regex/Pattern;

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;Lorg/schabi/newpipe/extractor/utils/ImageSuffix;)Lorg/schabi/newpipe/extractor/Image;
    .locals 0

    invoke-static {p0, p1}, Ljt9;->o(Ljava/lang/String;Lorg/schabi/newpipe/extractor/utils/ImageSuffix;)Lorg/schabi/newpipe/extractor/Image;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lls6;Lcom/grack/nanojson/JsonObject;)V
    .locals 0

    invoke-static {p0, p1}, Ljt9;->p(Lls6;Lcom/grack/nanojson/JsonObject;)V

    return-void
.end method

.method public static declared-synchronized c()Ljava/lang/String;
    .locals 6

    const-class v0, Ljt9;

    monitor-enter v0

    :try_start_0
    sget-object v1, Ljt9;->c:Ljava/lang/String;

    invoke-static {v1}, Lorg/schabi/newpipe/extractor/utils/a;->m(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Ljt9;->c:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_0
    :try_start_1
    invoke-static {}, Lorg/schabi/newpipe/extractor/a;->c()Lc23;

    move-result-object v1

    const-string v2, "https://soundcloud.com"

    invoke-virtual {v1, v2}, Lc23;->b(Ljava/lang/String;)Lfu8;

    move-result-object v2

    invoke-virtual {v2}, Lfu8;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lvc5;->a(Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    move-result-object v2

    const-string v3, "script[src*=\"sndcdn.com/assets/\"][src$=\".js\"]"

    invoke-virtual {v2, v3}, Lorg/jsoup/nodes/Element;->h1(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    const-string v3, "Range"

    const-string v4, "bytes=0-50000"

    invoke-static {v4}, Lft9;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-static {v3, v4}, Lgt9;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :catch_0
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jsoup/nodes/Element;

    const-string v5, "src"

    invoke-virtual {v4, v5}, Lorg/jsoup/nodes/g;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/schabi/newpipe/extractor/utils/a;->m(Ljava/lang/String;)Z

    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v5, :cond_1

    :try_start_2
    const-string v5, ",client_id:\"(.*?)\""

    invoke-virtual {v1, v4, v3}, Lc23;->c(Ljava/lang/String;Ljava/util/Map;)Lfu8;

    move-result-object v4

    invoke-virtual {v4}, Lfu8;->c()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lorg/schabi/newpipe/extractor/utils/Parser;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Ljt9;->c:Ljava/lang/String;
    :try_end_2
    .catch Lorg/schabi/newpipe/extractor/utils/Parser$RegexException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-object v4

    :cond_2
    :try_start_3
    new-instance v1, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;

    const-string v2, "Couldn\'t extract client id"

    invoke-direct {v1, v2}, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;-><init>(Ljava/lang/String;)V

    throw v1

    :goto_0
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public static d(Ljava/lang/String;)Ljava/util/List;
    .locals 2

    invoke-static {p0}, Lorg/schabi/newpipe/extractor/utils/a;->m(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v0, "-large."

    const-string v1, "-%s."

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljt9;->a:Ljava/util/List;

    invoke-static {p0, v0}, Ljt9;->e(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static e(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 1

    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lit9;

    invoke-direct {v0, p0}, Lit9;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Lk50;->a()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public static f(Lcom/grack/nanojson/JsonObject;)Ljava/util/List;
    .locals 1

    const-string v0, "artwork_url"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljt9;->d(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v0, "user"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v0, "avatar_url"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {p0}, Ljt9;->d(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v0, "Could not get track or track user\'s thumbnails"

    invoke-direct {p0, v0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static g(Ljava/lang/String;)Ljava/util/List;
    .locals 2

    invoke-static {p0}, Lorg/schabi/newpipe/extractor/utils/a;->m(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v0, "-original."

    const-string v1, "-%s."

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljt9;->b:Ljava/util/List;

    invoke-static {p0, v0}, Ljt9;->e(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static h(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;
    .locals 2

    const-string v0, "user"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v0, "avatar_url"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/schabi/newpipe/extractor/utils/a;->w(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static i(Lls6;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {}, Lorg/schabi/newpipe/extractor/a;->c()Lc23;

    move-result-object v0

    sget-object v1, Lce9;->b:Lst9;

    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/StreamingService;->l()Lorg/schabi/newpipe/extractor/localization/Localization;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lc23;->e(Ljava/lang/String;Lorg/schabi/newpipe/extractor/localization/Localization;)Lfu8;

    move-result-object p1

    invoke-virtual {p1}, Lfu8;->d()I

    move-result v0

    const/16 v1, 0x190

    if-ge v0, v1, :cond_1

    :try_start_0
    invoke-static {}, Lcom/grack/nanojson/a;->d()Lcom/grack/nanojson/a$a;

    move-result-object v0

    invoke-virtual {p1}, Lfu8;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/grack/nanojson/a$a;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/grack/nanojson/JsonObject;
    :try_end_0
    .catch Lcom/grack/nanojson/JsonParserException; {:try_start_0 .. :try_end_0} :catch_1

    const-string v0, "collection"

    invoke-virtual {p1, v0}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lw50;

    const-class v2, Lcom/grack/nanojson/JsonObject;

    invoke-direct {v1, v2}, Lw50;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lx50;

    invoke-direct {v1, v2}, Lx50;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lht9;

    invoke-direct {v1, p0}, Lht9;-><init>(Lls6;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    :try_start_1
    const-string p0, "next_href"

    invoke-virtual {p1, p0}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "client_id="

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Ljt9;->c()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "&client_id="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, ""

    :cond_0
    :goto_0
    return-object p0

    :catch_1
    move-exception p0

    new-instance p1, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v0, "Could not parse json response"

    invoke-direct {p1, v0, p0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_1
    new-instance p0, Ljava/io/IOException;

    invoke-virtual {p1}, Lfu8;->d()I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not get streams from API, HTTP "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static j(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;
    .locals 2

    :try_start_0
    const-string v0, "next_href"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "client_id="

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Ljt9;->c()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "&client_id="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object p0

    :catch_0
    const-string p0, ""

    return-object p0
.end method

.method public static k(Lqy9;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Ljt9;->l(Lqy9;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static l(Lqy9;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4

    invoke-static {}, Lorg/schabi/newpipe/extractor/a;->c()Lc23;

    move-result-object v0

    sget-object v1, Lce9;->b:Lst9;

    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/StreamingService;->l()Lorg/schabi/newpipe/extractor/localization/Localization;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lc23;->e(Ljava/lang/String;Lorg/schabi/newpipe/extractor/localization/Localization;)Lfu8;

    move-result-object p1

    invoke-virtual {p1}, Lfu8;->d()I

    move-result v0

    const/16 v1, 0x190

    if-ge v0, v1, :cond_3

    :try_start_0
    invoke-static {}, Lcom/grack/nanojson/a;->d()Lcom/grack/nanojson/a$a;

    move-result-object v0

    invoke-virtual {p1}, Lfu8;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/grack/nanojson/a$a;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/grack/nanojson/JsonObject;
    :try_end_0
    .catch Lcom/grack/nanojson/JsonParserException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "collection"

    invoke-virtual {p1, v0}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lcom/grack/nanojson/JsonObject;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/grack/nanojson/JsonObject;

    new-instance v2, Lvt9;

    if-eqz p2, :cond_1

    const-string v3, "track"

    invoke-virtual {v1, v3}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v1

    :cond_1
    invoke-direct {v2, v1}, Lvt9;-><init>(Lcom/grack/nanojson/JsonObject;)V

    invoke-virtual {p0, v2}, Lqy9;->h(Lpy9;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Ljt9;->j(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string p2, "Could not parse json response"

    invoke-direct {p1, p2, p0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_3
    new-instance p0, Ljava/io/IOException;

    invoke-virtual {p1}, Lfu8;->d()I

    move-result p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Could not get streams from API, HTTP "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static m(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;
    .locals 2

    const-string v0, "user"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v0, "username"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static n(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;
    .locals 2

    const-string v0, "user"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v0, "permalink_url"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/schabi/newpipe/extractor/utils/a;->w(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic o(Ljava/lang/String;Lorg/schabi/newpipe/extractor/utils/ImageSuffix;)Lorg/schabi/newpipe/extractor/Image;
    .locals 3

    new-instance v0, Lorg/schabi/newpipe/extractor/Image;

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/utils/ImageSuffix;->getSuffix()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/utils/ImageSuffix;->getHeight()I

    move-result v1

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/utils/ImageSuffix;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/utils/ImageSuffix;->getResolutionLevel()Lorg/schabi/newpipe/extractor/Image$ResolutionLevel;

    move-result-object p1

    invoke-direct {v0, p0, v1, v2, p1}, Lorg/schabi/newpipe/extractor/Image;-><init>(Ljava/lang/String;IILorg/schabi/newpipe/extractor/Image$ResolutionLevel;)V

    return-object v0
.end method

.method public static synthetic p(Lls6;Lcom/grack/nanojson/JsonObject;)V
    .locals 3

    const-string v0, "kind"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "playlist"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_1
    const-string v2, "track"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string v2, "user"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    new-instance v0, Lmt9;

    invoke-direct {v0, p1}, Lmt9;-><init>(Lcom/grack/nanojson/JsonObject;)V

    invoke-virtual {p0, v0}, Lyz4;->d(Lxz4;)V

    goto :goto_1

    :pswitch_1
    new-instance v0, Lvt9;

    invoke-direct {v0, p1}, Lvt9;-><init>(Lcom/grack/nanojson/JsonObject;)V

    invoke-virtual {p0, v0}, Lyz4;->d(Lxz4;)V

    goto :goto_1

    :pswitch_2
    new-instance v0, Lvs9;

    invoke-direct {v0, p1}, Lvs9;-><init>(Lcom/grack/nanojson/JsonObject;)V

    invoke-virtual {p0, v0}, Lyz4;->d(Lxz4;)V

    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x36ebcb -> :sswitch_2
        0x697f14b -> :sswitch_1
        0x700681d2 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static q(Ljava/lang/String;)Ljava/time/OffsetDateTime;
    .locals 5

    :try_start_0
    invoke-static {p0}, Ljava/time/OffsetDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/OffsetDateTime;

    move-result-object p0
    :try_end_0
    .catch Ljava/time/format/DateTimeParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "yyyy/MM/dd HH:mm:ss +0000"

    invoke-static {v1}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v1

    invoke-static {p0, v1}, Ljava/time/OffsetDateTime;->parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/OffsetDateTime;

    move-result-object p0
    :try_end_1
    .catch Ljava/time/format/DateTimeParseException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_1
    move-exception v1

    new-instance v2, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not parse date: \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\", "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0, v1}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static r(Lc23;Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;
    .locals 3

    invoke-static {p1}, Lorg/schabi/newpipe/extractor/utils/a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Ljt9;->c()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://api-v2.soundcloud.com/resolve?url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&client_id="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :try_start_0
    sget-object v0, Lce9;->b:Lst9;

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/StreamingService;->l()Lorg/schabi/newpipe/extractor/localization/Localization;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lc23;->e(Ljava/lang/String;Lorg/schabi/newpipe/extractor/localization/Localization;)Lfu8;

    move-result-object p0

    invoke-virtual {p0}, Lfu8;->c()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/grack/nanojson/a;->d()Lcom/grack/nanojson/a$a;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/grack/nanojson/a$a;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/grack/nanojson/JsonObject;
    :try_end_0
    .catch Lcom/grack/nanojson/JsonParserException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v0, "Could not parse json response"

    invoke-direct {p1, v0, p0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static s(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    sget-object v0, Ljt9;->d:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, Lorg/schabi/newpipe/extractor/a;->c()Lc23;

    move-result-object v0

    invoke-virtual {v0, p0}, Lc23;->f(Ljava/lang/String;)Lfu8;

    move-result-object p0

    invoke-virtual {p0}, Lfu8;->b()Ljava/lang/String;

    move-result-object p0

    const-string v0, "\\?"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    aget-object p0, p0, v1
    :try_end_0
    .catch Lorg/schabi/newpipe/extractor/exceptions/ExtractionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v1, "Could not follow on.soundcloud.com redirect"

    invoke-direct {v0, v1, p0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x2f

    if-ne v0, v2, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/schabi/newpipe/extractor/utils/a;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :try_start_1
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/utils/a;->x(Ljava/lang/String;)Ljava/net/URL;

    move-result-object p0
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_3

    :try_start_2
    invoke-virtual {p0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/schabi/newpipe/extractor/utils/a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Ljt9;->c()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://api-widget.soundcloud.com/resolve?url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "&format=json&client_id="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lorg/schabi/newpipe/extractor/a;->c()Lc23;

    move-result-object v0

    sget-object v1, Lce9;->b:Lst9;

    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/StreamingService;->l()Lorg/schabi/newpipe/extractor/localization/Localization;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lc23;->e(Ljava/lang/String;Lorg/schabi/newpipe/extractor/localization/Localization;)Lfu8;

    move-result-object p0

    invoke-virtual {p0}, Lfu8;->c()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/grack/nanojson/a;->d()Lcom/grack/nanojson/a$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/grack/nanojson/a$a;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/grack/nanojson/JsonObject;

    const-string v0, "id"

    invoke-static {p0, v0}, Loc5;->j(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_2
    .catch Lcom/grack/nanojson/JsonParserException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/schabi/newpipe/extractor/exceptions/ExtractionException; {:try_start_2 .. :try_end_2} :catch_1

    return-object p0

    :catch_1
    move-exception p0

    goto :goto_1

    :catch_2
    move-exception p0

    goto :goto_2

    :goto_1
    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v1, "Could not resolve id with embedded player. ClientId not extracted"

    invoke-direct {v0, v1, p0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :goto_2
    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v1, "Could not parse JSON response"

    invoke-direct {v0, v1, p0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The given URL is not valid"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static t(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {}, Lorg/schabi/newpipe/extractor/a;->c()Lc23;

    move-result-object v0

    invoke-static {p0}, Lorg/schabi/newpipe/extractor/utils/a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://w.soundcloud.com/player/?url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v1, Lce9;->b:Lst9;

    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/StreamingService;->l()Lorg/schabi/newpipe/extractor/localization/Localization;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lc23;->e(Ljava/lang/String;Lorg/schabi/newpipe/extractor/localization/Localization;)Lfu8;

    move-result-object p0

    invoke-virtual {p0}, Lfu8;->c()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lvc5;->a(Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    move-result-object p0

    const-string v0, "link[rel=\"canonical\"]"

    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/Element;->h1(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object p0

    invoke-virtual {p0}, Lorg/jsoup/select/Elements;->first()Lorg/jsoup/nodes/Element;

    move-result-object p0

    const-string v0, "abs:href"

    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/g;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

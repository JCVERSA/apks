.class public abstract Lj60;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 18

    new-instance v0, Lorg/schabi/newpipe/extractor/utils/ImageSuffix;

    sget-object v1, Lorg/schabi/newpipe/extractor/Image$ResolutionLevel;->HIGH:Lorg/schabi/newpipe/extractor/Image$ResolutionLevel;

    const-string v2, "10.jpg"

    const/4 v3, -0x1

    const/16 v4, 0x4b0

    invoke-direct {v0, v2, v3, v4, v1}, Lorg/schabi/newpipe/extractor/utils/ImageSuffix;-><init>(Ljava/lang/String;IILorg/schabi/newpipe/extractor/Image$ResolutionLevel;)V

    new-instance v2, Lorg/schabi/newpipe/extractor/utils/ImageSuffix;

    sget-object v4, Lorg/schabi/newpipe/extractor/Image$ResolutionLevel;->LOW:Lorg/schabi/newpipe/extractor/Image$ResolutionLevel;

    const-string v5, "101.jpg"

    const/16 v6, 0x5a

    invoke-direct {v2, v5, v6, v3, v4}, Lorg/schabi/newpipe/extractor/utils/ImageSuffix;-><init>(Ljava/lang/String;IILorg/schabi/newpipe/extractor/Image$ResolutionLevel;)V

    new-instance v5, Lorg/schabi/newpipe/extractor/utils/ImageSuffix;

    sget-object v6, Lorg/schabi/newpipe/extractor/Image$ResolutionLevel;->MEDIUM:Lorg/schabi/newpipe/extractor/Image$ResolutionLevel;

    const-string v7, "170.jpg"

    const/16 v8, 0x1a6

    invoke-direct {v5, v7, v8, v3, v6}, Lorg/schabi/newpipe/extractor/utils/ImageSuffix;-><init>(Ljava/lang/String;IILorg/schabi/newpipe/extractor/Image$ResolutionLevel;)V

    new-instance v7, Lorg/schabi/newpipe/extractor/utils/ImageSuffix;

    const-string v8, "171.jpg"

    const/16 v9, 0x286

    invoke-direct {v7, v8, v9, v3, v6}, Lorg/schabi/newpipe/extractor/utils/ImageSuffix;-><init>(Ljava/lang/String;IILorg/schabi/newpipe/extractor/Image$ResolutionLevel;)V

    new-instance v8, Lorg/schabi/newpipe/extractor/utils/ImageSuffix;

    const-string v9, "20.jpg"

    const/16 v10, 0x400

    invoke-direct {v8, v9, v3, v10, v1}, Lorg/schabi/newpipe/extractor/utils/ImageSuffix;-><init>(Ljava/lang/String;IILorg/schabi/newpipe/extractor/Image$ResolutionLevel;)V

    new-instance v9, Lorg/schabi/newpipe/extractor/utils/ImageSuffix;

    const-string v1, "200.jpg"

    const/16 v10, 0x1a4

    invoke-direct {v9, v1, v10, v3, v6}, Lorg/schabi/newpipe/extractor/utils/ImageSuffix;-><init>(Ljava/lang/String;IILorg/schabi/newpipe/extractor/Image$ResolutionLevel;)V

    new-instance v10, Lorg/schabi/newpipe/extractor/utils/ImageSuffix;

    const-string v1, "201.jpg"

    const/16 v11, 0x118

    invoke-direct {v10, v1, v11, v3, v6}, Lorg/schabi/newpipe/extractor/utils/ImageSuffix;-><init>(Ljava/lang/String;IILorg/schabi/newpipe/extractor/Image$ResolutionLevel;)V

    new-instance v11, Lorg/schabi/newpipe/extractor/utils/ImageSuffix;

    const-string v1, "202.jpg"

    const/16 v12, 0x8c

    invoke-direct {v11, v1, v12, v3, v4}, Lorg/schabi/newpipe/extractor/utils/ImageSuffix;-><init>(Ljava/lang/String;IILorg/schabi/newpipe/extractor/Image$ResolutionLevel;)V

    new-instance v12, Lorg/schabi/newpipe/extractor/utils/ImageSuffix;

    const-string v1, "204.jpg"

    const/16 v13, 0x168

    invoke-direct {v12, v1, v13, v3, v6}, Lorg/schabi/newpipe/extractor/utils/ImageSuffix;-><init>(Ljava/lang/String;IILorg/schabi/newpipe/extractor/Image$ResolutionLevel;)V

    new-instance v13, Lorg/schabi/newpipe/extractor/utils/ImageSuffix;

    const-string v1, "205.jpg"

    const/16 v14, 0xf0

    invoke-direct {v13, v1, v14, v3, v6}, Lorg/schabi/newpipe/extractor/utils/ImageSuffix;-><init>(Ljava/lang/String;IILorg/schabi/newpipe/extractor/Image$ResolutionLevel;)V

    new-instance v14, Lorg/schabi/newpipe/extractor/utils/ImageSuffix;

    const-string v1, "206.jpg"

    const/16 v15, 0xb4

    invoke-direct {v14, v1, v15, v3, v6}, Lorg/schabi/newpipe/extractor/utils/ImageSuffix;-><init>(Ljava/lang/String;IILorg/schabi/newpipe/extractor/Image$ResolutionLevel;)V

    new-instance v15, Lorg/schabi/newpipe/extractor/utils/ImageSuffix;

    const-string v1, "207.jpg"

    move-object/from16 v16, v14

    const/16 v14, 0x78

    invoke-direct {v15, v1, v14, v3, v4}, Lorg/schabi/newpipe/extractor/utils/ImageSuffix;-><init>(Ljava/lang/String;IILorg/schabi/newpipe/extractor/Image$ResolutionLevel;)V

    new-instance v14, Lorg/schabi/newpipe/extractor/utils/ImageSuffix;

    const-string v1, "43.jpg"

    move-object/from16 v17, v15

    const/16 v15, 0x64

    invoke-direct {v14, v1, v15, v3, v4}, Lorg/schabi/newpipe/extractor/utils/ImageSuffix;-><init>(Ljava/lang/String;IILorg/schabi/newpipe/extractor/Image$ResolutionLevel;)V

    new-instance v15, Lorg/schabi/newpipe/extractor/utils/ImageSuffix;

    const-string v1, "44.jpg"

    const/16 v4, 0xc8

    invoke-direct {v15, v1, v4, v3, v6}, Lorg/schabi/newpipe/extractor/utils/ImageSuffix;-><init>(Ljava/lang/String;IILorg/schabi/newpipe/extractor/Image$ResolutionLevel;)V

    move-object v1, v2

    move-object v2, v5

    move-object v3, v7

    move-object v4, v8

    move-object v5, v9

    move-object v6, v10

    move-object v7, v11

    move-object v8, v12

    move-object v9, v13

    move-object/from16 v10, v16

    move-object/from16 v11, v17

    move-object v12, v14

    move-object v13, v15

    filled-new-array/range {v0 .. v13}, [Lorg/schabi/newpipe/extractor/utils/ImageSuffix;

    move-result-object v0

    invoke-static {v0}, Lhdb;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lj60;->a:Ljava/util/List;

    return-void
.end method

.method public static synthetic a(Lorg/jsoup/nodes/Element;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lj60;->p(Lorg/jsoup/nodes/Element;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lorg/jsoup/nodes/Element;)Ljava/util/stream/Stream;
    .locals 0

    invoke-static {p0}, Lj60;->o(Lorg/jsoup/nodes/Element;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Ljava/lang/String;Lorg/schabi/newpipe/extractor/utils/ImageSuffix;)Lorg/schabi/newpipe/extractor/Image;
    .locals 0

    invoke-static {p0, p1}, Lj60;->n(Ljava/lang/String;Lorg/schabi/newpipe/extractor/utils/ImageSuffix;)Lorg/schabi/newpipe/extractor/Image;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lj60;->q(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static e(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;
    .locals 6

    :try_start_0
    invoke-static {}, Lcom/grack/nanojson/a;->d()Lcom/grack/nanojson/a$a;

    move-result-object v0

    invoke-static {}, Lorg/schabi/newpipe/extractor/a;->c()Lc23;

    move-result-object v1

    const-string v2, "https://bandcamp.com/api/mobile/22/band_details"

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    invoke-static {}, Ltc5;->a()Lzb5;

    move-result-object v4

    invoke-virtual {v4}, Luc5;->n()Luc5;

    move-result-object v4

    check-cast v4, Lzb5;

    const-string v5, "band_id"

    invoke-virtual {v4, v5, p0}, Luc5;->E(Ljava/lang/String;Ljava/lang/String;)Luc5;

    move-result-object p0

    check-cast p0, Lzb5;

    invoke-virtual {p0}, Luc5;->j()Luc5;

    move-result-object p0

    check-cast p0, Lzb5;

    invoke-virtual {p0}, Lzb5;->H()Ljava/lang/String;

    move-result-object p0

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-virtual {v1, v2, v3, p0}, Lc23;->j(Ljava/lang/String;Ljava/util/Map;[B)Lfu8;

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

    const-string v1, "Could not download band details"

    invoke-direct {v0, v1, p0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static f(JZ)Ljava/lang/String;
    .locals 2

    if-eqz p2, :cond_0

    const/16 p2, 0x61

    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p2

    goto :goto_0

    :cond_0
    const-string p2, ""

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://f4.bcbits.com/img/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "_10.jpg"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static g(Ljava/lang/String;)Ljava/util/List;
    .locals 2

    sget-object v0, Lj60;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Li60;

    invoke-direct {v1, p0}, Li60;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Lk50;->a()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public static h(JZ)Ljava/util/List;
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    if-eqz p2, :cond_1

    const/16 p2, 0x61

    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p2

    goto :goto_0

    :cond_1
    const-string p2, ""

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://f4.bcbits.com/img/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "_"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lj60;->g(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static i(Ljava/lang/String;)Ljava/util/List;
    .locals 2

    invoke-static {p0}, Lorg/schabi/newpipe/extractor/utils/a;->m(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v0, "_\\d+\\.\\w+"

    const-string v1, "_"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lj60;->g(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static j(Lorg/jsoup/nodes/Element;)Ljava/util/List;
    .locals 1

    const-string v0, "art"

    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/Element;->G0(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lf60;

    invoke-direct {v0}, Lf60;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lg60;

    invoke-direct {v0}, Lg60;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lh60;

    invoke-direct {v0}, Lh60;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

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

.method public static k(JJLjava/lang/String;)Ljava/lang/String;
    .locals 3

    :try_start_0
    invoke-static {}, Lorg/schabi/newpipe/extractor/a;->c()Lc23;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p4, v1}, Ljava/lang/String;->charAt(I)C

    move-result p4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://bandcamp.com/api/mobile/22/tralbum_details?band_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "&tralbum_id="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "&tralbum_type="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lc23;->b(Ljava/lang/String;)Lfu8;

    move-result-object p0

    invoke-virtual {p0}, Lfu8;->c()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/grack/nanojson/a;->d()Lcom/grack/nanojson/a$a;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/grack/nanojson/a$a;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/grack/nanojson/JsonObject;

    const-string p1, "bandcamp_url"

    invoke-virtual {p0, p1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/schabi/newpipe/extractor/utils/a;->w(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lcom/grack/nanojson/JsonParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/schabi/newpipe/extractor/exceptions/ReCaptchaException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string p2, "Ids could not be translated to URL"

    invoke-direct {p1, p2, p0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static l(Ljava/lang/String;)Z
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "https?://.+\\.bandcamp\\.com(/.*)?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "https?://bandcamp\\.com(/.*)?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    :try_start_0
    invoke-static {}, Lorg/schabi/newpipe/extractor/a;->c()Lc23;

    move-result-object v0

    invoke-static {p0}, Lorg/schabi/newpipe/extractor/utils/a;->w(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lc23;->b(Ljava/lang/String;)Lfu8;

    move-result-object p0

    invoke-virtual {p0}, Lfu8;->c()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lvc5;->a(Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    move-result-object p0

    const-string v0, "cart-wrapper"

    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/Element;->G0(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/jsoup/nodes/Element;

    const-string v0, "a"

    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/Element;->H0(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/jsoup/nodes/Element;

    const-string v0, "href"

    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/g;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "https://bandcamp.com/cart"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/schabi/newpipe/extractor/exceptions/ReCaptchaException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    new-instance p0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v0, "Could not determine whether URL is custom domain (not available? network error?)"

    invoke-direct {p0, v0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_1
    return v1
.end method

.method public static m(Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string v0, "https?://bandcamp\\.com/\\?show=\\d+"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic n(Ljava/lang/String;Lorg/schabi/newpipe/extractor/utils/ImageSuffix;)Lorg/schabi/newpipe/extractor/Image;
    .locals 3

    new-instance v0, Lorg/schabi/newpipe/extractor/Image;

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/utils/ImageSuffix;->getSuffix()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

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

.method public static synthetic o(Lorg/jsoup/nodes/Element;)Ljava/util/stream/Stream;
    .locals 1

    const-string v0, "img"

    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/Element;->H0(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic p(Lorg/jsoup/nodes/Element;)Ljava/lang/String;
    .locals 1

    const-string v0, "src"

    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/g;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic q(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lorg/schabi/newpipe/extractor/utils/a;->m(Ljava/lang/String;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static r(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/localization/DateWrapper;
    .locals 4

    :try_start_0
    const-string v0, "dd MMM yyyy HH:mm:ss zzz"

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v0, v1}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;Ljava/util/Locale;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    invoke-static {p0, v0}, Ljava/time/ZonedDateTime;->parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/ZonedDateTime;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/extractor/localization/DateWrapper;

    invoke-virtual {v0}, Ljava/time/ZonedDateTime;->toOffsetDateTime()Ljava/time/OffsetDateTime;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lorg/schabi/newpipe/extractor/localization/DateWrapper;-><init>(Ljava/time/OffsetDateTime;Z)V
    :try_end_0
    .catch Ljava/time/DateTimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not parse date \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

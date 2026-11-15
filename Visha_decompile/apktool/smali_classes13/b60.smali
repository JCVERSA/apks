.class public Lb60;
.super Lea1;
.source "SourceFile"


# instance fields
.field public g:Lorg/jsoup/nodes/Document;


# direct methods
.method public constructor <init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lea1;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)V

    return-void
.end method

.method public static synthetic C(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;
    .locals 1

    const-string v0, "token"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p1
.end method

.method public static synthetic E()Lorg/schabi/newpipe/extractor/exceptions/ParsingException;
    .locals 2

    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v1, "Could not get token"

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static synthetic w(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lb60;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic x()Lorg/schabi/newpipe/extractor/exceptions/ParsingException;
    .locals 1

    invoke-static {}, Lb60;->E()Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic y(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lb60;->C(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final A(Lcom/grack/nanojson/JsonArray;)Ljava/lang/String;
    .locals 1

    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lw50;

    const-class v0, Lcom/grack/nanojson/JsonObject;

    invoke-direct {p1, v0}, Lw50;-><init>(Ljava/lang/Class;)V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lx50;

    invoke-direct {p1, v0}, Lx50;-><init>(Ljava/lang/Class;)V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Ly50;

    invoke-direct {p1}, Ly50;-><init>()V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lz50;

    invoke-direct {p1}, Lz50;-><init>()V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->reduce(Ljava/util/function/BinaryOperator;)Ljava/util/Optional;

    move-result-object p0

    new-instance p1, La60;

    invoke-direct {p1}, La60;-><init>()V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public final B()Ljava/lang/String;
    .locals 2

    iget-object p0, p0, Lb60;->g:Lorg/jsoup/nodes/Document;

    const-string v0, "meta[name=bc-page-properties]"

    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/Element;->i1(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object p0

    const-string v0, "content"

    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/g;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Loc5;->k(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v0, "item_id"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public q(Lc23;)V
    .locals 1

    invoke-virtual {p0}, Ltl5;->s()Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;

    move-result-object v0

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lc23;->b(Ljava/lang/String;)Lfu8;

    move-result-object p1

    invoke-virtual {p1}, Lfu8;->c()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lvc5;->a(Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    move-result-object p1

    iput-object p1, p0, Lb60;->g:Lorg/jsoup/nodes/Document;

    return-void
.end method

.method public r()Ltl5$a;
    .locals 7

    new-instance v0, Lga1;

    invoke-virtual {p0}, Lmk3;->n()I

    move-result v1

    invoke-direct {v0, v1}, Lga1;-><init>(I)V

    iget-object v1, p0, Lb60;->g:Lorg/jsoup/nodes/Document;

    const-string v2, "collectors-data"

    invoke-virtual {v1, v2}, Lorg/jsoup/nodes/Element;->D0(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v1

    const-string v2, "data-blob"

    invoke-virtual {v1, v2}, Lorg/jsoup/nodes/g;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Loc5;->k(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v1

    const-string v2, "reviews"

    invoke-virtual {v1, v2}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    new-instance v5, Lc60;

    check-cast v4, Lcom/grack/nanojson/JsonObject;

    invoke-virtual {p0}, Lmk3;->p()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v4, v6}, Lc60;-><init>(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Lga1;->h(Lfa1;)V

    goto :goto_0

    :cond_0
    const-string v3, "more_reviews_available"

    invoke-virtual {v1, v3}, Lcom/grack/nanojson/JsonObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance p0, Ltl5$a;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ltl5$a;-><init>(Lyz4;Lorg/schabi/newpipe/extractor/Page;)V

    return-object p0

    :cond_1
    invoke-virtual {p0}, Lb60;->B()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v2}, Lb60;->A(Lcom/grack/nanojson/JsonArray;)Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ltl5$a;

    new-instance v3, Lorg/schabi/newpipe/extractor/Page;

    invoke-static {v1, p0}, Lv50;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v3, p0}, Lorg/schabi/newpipe/extractor/Page;-><init>(Ljava/util/List;)V

    invoke-direct {v2, v0, v3}, Ltl5$a;-><init>(Lyz4;Lorg/schabi/newpipe/extractor/Page;)V

    return-object v2
.end method

.method public t(Lorg/schabi/newpipe/extractor/Page;)Ltl5$a;
    .locals 7

    new-instance v0, Lga1;

    invoke-virtual {p0}, Lmk3;->n()I

    move-result v1

    invoke-direct {v0, v1}, Lga1;-><init>(I)V

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Page;->getIds()Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, v1, p1}, Lb60;->z(Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p1

    const-string v2, "results"

    invoke-virtual {p1, v2}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    new-instance v5, Lc60;

    check-cast v4, Lcom/grack/nanojson/JsonObject;

    invoke-virtual {p0}, Lmk3;->p()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v4, v6}, Lc60;-><init>(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Lga1;->h(Lfa1;)V

    goto :goto_0

    :cond_0
    const-string v3, "more_available"

    invoke-virtual {p1, v3}, Lcom/grack/nanojson/JsonObject;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    new-instance p0, Ltl5$a;

    const/4 p1, 0x0

    invoke-direct {p0, v0, p1}, Ltl5$a;-><init>(Lyz4;Lorg/schabi/newpipe/extractor/Page;)V

    return-object p0

    :cond_1
    new-instance p1, Ltl5$a;

    new-instance v3, Lorg/schabi/newpipe/extractor/Page;

    invoke-virtual {p0, v2}, Lb60;->A(Lcom/grack/nanojson/JsonArray;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lu50;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v3, p0}, Lorg/schabi/newpipe/extractor/Page;-><init>(Ljava/util/List;)V

    invoke-direct {p1, v0, v3}, Ltl5$a;-><init>(Lyz4;Lorg/schabi/newpipe/extractor/Page;)V

    return-object p1
.end method

.method public v()Z
    .locals 0

    invoke-virtual {p0}, Lmk3;->p()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lj60;->m(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final z(Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;
    .locals 5

    :try_start_0
    invoke-virtual {p0}, Lmk3;->f()Lc23;

    move-result-object p0

    const-string v0, "https://bandcamp.com/api/tralbumcollectors/2/reviews"

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-static {}, Ltc5;->a()Lzb5;

    move-result-object v2

    invoke-virtual {v2}, Luc5;->n()Luc5;

    move-result-object v2

    check-cast v2, Lzb5;

    const-string v3, "tralbum_type"

    const-string v4, "t"

    invoke-virtual {v2, v3, v4}, Luc5;->E(Ljava/lang/String;Ljava/lang/String;)Luc5;

    move-result-object v2

    check-cast v2, Lzb5;

    const-string v3, "tralbum_id"

    invoke-virtual {v2, v3, p1}, Luc5;->E(Ljava/lang/String;Ljava/lang/String;)Luc5;

    move-result-object p1

    check-cast p1, Lzb5;

    const-string v2, "token"

    invoke-virtual {p1, v2, p2}, Luc5;->E(Ljava/lang/String;Ljava/lang/String;)Luc5;

    move-result-object p1

    check-cast p1, Lzb5;

    const-string p2, "count"

    const/4 v2, 0x7

    invoke-virtual {p1, p2, v2}, Luc5;->B(Ljava/lang/String;I)Luc5;

    move-result-object p1

    check-cast p1, Lzb5;

    const-string p2, "exclude_fan_ids"

    invoke-virtual {p1, p2}, Luc5;->d(Ljava/lang/String;)Luc5;

    move-result-object p1

    check-cast p1, Lzb5;

    invoke-virtual {p1}, Luc5;->j()Luc5;

    move-result-object p1

    check-cast p1, Lzb5;

    invoke-virtual {p1}, Luc5;->j()Luc5;

    move-result-object p1

    check-cast p1, Lzb5;

    invoke-virtual {p1}, Lzb5;->H()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Lc23;->j(Ljava/lang/String;Ljava/util/Map;[B)Lfu8;

    move-result-object p0

    invoke-virtual {p0}, Lfu8;->c()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Loc5;->k(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/schabi/newpipe/extractor/exceptions/ReCaptchaException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string p2, "Could not fetch reviews"

    invoke-direct {p1, p2, p0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

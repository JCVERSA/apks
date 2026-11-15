.class public Ltzc;
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

.method public static synthetic A(Lcom/grack/nanojson/JsonObject;)Z
    .locals 0

    invoke-static {p0}, Ltzc;->N(Lcom/grack/nanojson/JsonObject;)Z

    move-result p0

    return p0
.end method

.method public static synthetic B(Lcom/grack/nanojson/JsonObject;)Lcom/grack/nanojson/JsonObject;
    .locals 0

    invoke-static {p0}, Ltzc;->U(Lcom/grack/nanojson/JsonObject;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic C(Lcom/grack/nanojson/JsonObject;)Lcom/grack/nanojson/JsonObject;
    .locals 0

    invoke-static {p0}, Ltzc;->M(Lcom/grack/nanojson/JsonObject;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic D(Lcom/grack/nanojson/JsonObject;)Lcom/grack/nanojson/JsonObject;
    .locals 0

    invoke-static {p0}, Ltzc;->J(Lcom/grack/nanojson/JsonObject;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic E(Lcom/grack/nanojson/JsonObject;)Lcom/grack/nanojson/JsonObject;
    .locals 0

    invoke-static {p0}, Ltzc;->P(Lcom/grack/nanojson/JsonObject;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic F(Lcom/grack/nanojson/JsonObject;)Ljava/util/stream/Stream;
    .locals 0

    invoke-static {p0}, Ltzc;->O(Lcom/grack/nanojson/JsonObject;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic G()Lorg/schabi/newpipe/extractor/exceptions/ParsingException;
    .locals 1

    invoke-static {}, Ltzc;->T()Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic I(Lcom/grack/nanojson/JsonObject;)Z
    .locals 1

    const-string v0, "richItemRenderer"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic J(Lcom/grack/nanojson/JsonObject;)Lcom/grack/nanojson/JsonObject;
    .locals 1

    const-string v0, "richItemRenderer"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v0, "content"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v0, "videoRenderer"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic K(Lqy9;Lona;Lcom/grack/nanojson/JsonObject;)V
    .locals 1

    new-instance v0, Lbzc;

    invoke-direct {v0, p2, p1}, Lbzc;-><init>(Lcom/grack/nanojson/JsonObject;Lona;)V

    invoke-virtual {p0, v0}, Lqy9;->h(Lpy9;)V

    return-void
.end method

.method public static synthetic L(Lcom/grack/nanojson/JsonObject;)Ljava/util/stream/Stream;
    .locals 1

    const-string v0, "itemSectionRenderer"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v0, "contents"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic M(Lcom/grack/nanojson/JsonObject;)Lcom/grack/nanojson/JsonObject;
    .locals 1

    const-string v0, "shelfRenderer"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic N(Lcom/grack/nanojson/JsonObject;)Z
    .locals 1

    const-string v0, "title"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static synthetic O(Lcom/grack/nanojson/JsonObject;)Ljava/util/stream/Stream;
    .locals 1

    const-string v0, "content"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v0, "expandedShelfContentsRenderer"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v0, "items"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic P(Lcom/grack/nanojson/JsonObject;)Lcom/grack/nanojson/JsonObject;
    .locals 1

    const-string v0, "videoRenderer"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic Q(Lqy9;Lona;Lcom/grack/nanojson/JsonObject;)V
    .locals 1

    new-instance v0, Lbzc;

    invoke-direct {v0, p2, p1}, Lbzc;-><init>(Lcom/grack/nanojson/JsonObject;Lona;)V

    invoke-virtual {p0, v0}, Lqy9;->h(Lpy9;)V

    return-void
.end method

.method public static synthetic R(Lcom/grack/nanojson/JsonObject;)Z
    .locals 1

    const-string v0, "selected"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic S(Lcom/grack/nanojson/JsonObject;)Z
    .locals 1

    const-string v0, "content"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic T()Lorg/schabi/newpipe/extractor/exceptions/ParsingException;
    .locals 2

    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v1, "Could not get \"Now\" or \"Videos\" trending tab"

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static synthetic U(Lcom/grack/nanojson/JsonObject;)Lcom/grack/nanojson/JsonObject;
    .locals 1

    const-string v0, "tabRenderer"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic u(Lqy9;Lona;Lcom/grack/nanojson/JsonObject;)V
    .locals 0

    invoke-static {p0, p1, p2}, Ltzc;->Q(Lqy9;Lona;Lcom/grack/nanojson/JsonObject;)V

    return-void
.end method

.method public static synthetic v(Lcom/grack/nanojson/JsonObject;)Z
    .locals 0

    invoke-static {p0}, Ltzc;->S(Lcom/grack/nanojson/JsonObject;)Z

    move-result p0

    return p0
.end method

.method public static synthetic w(Lcom/grack/nanojson/JsonObject;)Z
    .locals 0

    invoke-static {p0}, Ltzc;->R(Lcom/grack/nanojson/JsonObject;)Z

    move-result p0

    return p0
.end method

.method public static synthetic x(Lqy9;Lona;Lcom/grack/nanojson/JsonObject;)V
    .locals 0

    invoke-static {p0, p1, p2}, Ltzc;->K(Lqy9;Lona;Lcom/grack/nanojson/JsonObject;)V

    return-void
.end method

.method public static synthetic y(Lcom/grack/nanojson/JsonObject;)Ljava/util/stream/Stream;
    .locals 0

    invoke-static {p0}, Ltzc;->L(Lcom/grack/nanojson/JsonObject;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic z(Lcom/grack/nanojson/JsonObject;)Z
    .locals 0

    invoke-static {p0}, Ltzc;->I(Lcom/grack/nanojson/JsonObject;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final H()Lcom/grack/nanojson/JsonObject;
    .locals 2

    iget-object p0, p0, Ltzc;->h:Lcom/grack/nanojson/JsonObject;

    const-string v0, "contents"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v0, "twoColumnBrowseResultsRenderer"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v0, "tabs"

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

    new-instance v0, Lgzc;

    invoke-direct {v0}, Lgzc;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lhzc;

    invoke-direct {v0}, Lhzc;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lizc;

    invoke-direct {v0}, Lizc;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Ljzc;

    invoke-direct {v0}, Ljzc;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/grack/nanojson/JsonObject;

    return-object p0
.end method

.method public k()Ljava/lang/String;
    .locals 3

    iget-object p0, p0, Ltzc;->h:Lcom/grack/nanojson/JsonObject;

    const-string v0, "header"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v0, "feedTabbedHeaderRenderer"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "title"

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    invoke-static {p0, v2}, Lcxc;->K(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string v0, "c4TabbedHeaderRenderer"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    invoke-static {p0, v2}, Lcxc;->K(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const-string v0, "pageHeaderRenderer"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v0, "pageTitle"

    invoke-static {p0, v0}, Lcxc;->K(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/utils/a;->m(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    return-object p0

    :cond_3
    new-instance p0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v0, "Could not get Trending name"

    invoke-direct {p0, v0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public q(Lc23;)V
    .locals 2

    invoke-virtual {p0}, Lmk3;->h()Lorg/schabi/newpipe/extractor/localization/Localization;

    move-result-object p1

    invoke-virtual {p0}, Lmk3;->g()Lorg/schabi/newpipe/extractor/localization/ContentCountry;

    move-result-object v0

    invoke-static {p1, v0}, Lcxc;->y0(Lorg/schabi/newpipe/extractor/localization/Localization;Lorg/schabi/newpipe/extractor/localization/ContentCountry;)Laa5;

    move-result-object p1

    const-string v0, "browseId"

    const-string v1, "FEtrending"

    invoke-virtual {p1, v0, v1}, Laa5;->h(Ljava/lang/String;Ljava/lang/String;)Laa5;

    move-result-object p1

    const-string v0, "params"

    const-string v1, "4gIOGgxtb3N0X3BvcHVsYXI%3D"

    invoke-virtual {p1, v0, v1}, Laa5;->h(Ljava/lang/String;Ljava/lang/String;)Laa5;

    move-result-object p1

    invoke-virtual {p1}, Laa5;->b()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ltc5;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const-string v0, "browse"

    invoke-virtual {p0}, Lmk3;->h()Lorg/schabi/newpipe/extractor/localization/Localization;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcxc;->I(Ljava/lang/String;[BLorg/schabi/newpipe/extractor/localization/Localization;)Lcom/grack/nanojson/JsonObject;

    move-result-object p1

    iput-object p1, p0, Ltzc;->h:Lcom/grack/nanojson/JsonObject;

    return-void
.end method

.method public r()Ltl5$a;
    .locals 7

    new-instance v0, Lqy9;

    invoke-virtual {p0}, Lmk3;->n()I

    move-result v1

    invoke-direct {v0, v1}, Lqy9;-><init>(I)V

    invoke-virtual {p0}, Lmk3;->o()Lona;

    move-result-object v1

    invoke-virtual {p0}, Ltzc;->H()Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v2, "content"

    invoke-virtual {p0, v2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v2

    const-string v3, "endpoint"

    invoke-virtual {p0, v3}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v3, "browseEndpoint"

    invoke-virtual {p0, v3}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v3, "params"

    const-string v4, ""

    invoke-virtual {p0, v3, v4}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v3, "4gIOGgxtb3N0X3BvcHVsYXI%3D"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const-string v3, "richGridRenderer"

    invoke-virtual {v2, v3}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v4

    const-string v5, "contents"

    const-class v6, Lcom/grack/nanojson/JsonObject;

    if-eqz v4, :cond_0

    invoke-virtual {v2, v3}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    invoke-virtual {p0, v5}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v2, Lw50;

    invoke-direct {v2, v6}, Lw50;-><init>(Ljava/lang/Class;)V

    invoke-interface {p0, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v2, Lx50;

    invoke-direct {v2, v6}, Lx50;-><init>(Ljava/lang/Class;)V

    invoke-interface {p0, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v2, Lpzc;

    invoke-direct {v2}, Lpzc;-><init>()V

    invoke-interface {p0, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v2, Lqzc;

    invoke-direct {v2}, Lqzc;-><init>()V

    invoke-interface {p0, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v2, Lrzc;

    invoke-direct {v2, v0, v1}, Lrzc;-><init>(Lqy9;Lona;)V

    invoke-interface {p0, v2}, Ljava/util/stream/Stream;->forEachOrdered(Ljava/util/function/Consumer;)V

    goto/16 :goto_1

    :cond_0
    const-string v3, "sectionListRenderer"

    invoke-virtual {v2, v3}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v2, v3}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lw50;

    invoke-direct {v3, v6}, Lw50;-><init>(Ljava/lang/Class;)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lx50;

    invoke-direct {v3, v6}, Lx50;-><init>(Ljava/lang/Class;)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lszc;

    invoke-direct {v3}, Lszc;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lw50;

    invoke-direct {v3, v6}, Lw50;-><init>(Ljava/lang/Class;)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lx50;

    invoke-direct {v3, v6}, Lx50;-><init>(Ljava/lang/Class;)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lkzc;

    invoke-direct {v3}, Lkzc;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    if-eqz p0, :cond_1

    invoke-interface {v2}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    invoke-static {p0}, Lfzc;->a(Ljava/util/Optional;)Ljava/util/stream/Stream;

    move-result-object p0

    goto :goto_0

    :cond_1
    new-instance p0, Llzc;

    invoke-direct {p0}, Llzc;-><init>()V

    invoke-interface {v2, p0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    :goto_0
    new-instance v2, Lmzc;

    invoke-direct {v2}, Lmzc;-><init>()V

    invoke-interface {p0, v2}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v2, Lw50;

    invoke-direct {v2, v6}, Lw50;-><init>(Ljava/lang/Class;)V

    invoke-interface {p0, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v2, Lx50;

    invoke-direct {v2, v6}, Lx50;-><init>(Ljava/lang/Class;)V

    invoke-interface {p0, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v2, Lnzc;

    invoke-direct {v2}, Lnzc;-><init>()V

    invoke-interface {p0, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v2, Lozc;

    invoke-direct {v2, v0, v1}, Lozc;-><init>(Lqy9;Lona;)V

    invoke-interface {p0, v2}, Ljava/util/stream/Stream;->forEachOrdered(Ljava/util/function/Consumer;)V

    :cond_2
    :goto_1
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

.class public Lxvc;
.super Lorg/schabi/newpipe/extractor/playlist/a;
.source "SourceFile"


# static fields
.field public static final j:Ljava/util/List;


# instance fields
.field public g:Lcom/grack/nanojson/JsonObject;

.field public h:Lcom/grack/nanojson/JsonObject;

.field public i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lorg/schabi/newpipe/extractor/utils/ImageSuffix;

    const/16 v1, 0x78

    sget-object v2, Lorg/schabi/newpipe/extractor/Image$ResolutionLevel;->LOW:Lorg/schabi/newpipe/extractor/Image$ResolutionLevel;

    const-string v3, "default.jpg"

    const/16 v4, 0x5a

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/schabi/newpipe/extractor/utils/ImageSuffix;-><init>(Ljava/lang/String;IILorg/schabi/newpipe/extractor/Image$ResolutionLevel;)V

    new-instance v1, Lorg/schabi/newpipe/extractor/utils/ImageSuffix;

    sget-object v2, Lorg/schabi/newpipe/extractor/Image$ResolutionLevel;->MEDIUM:Lorg/schabi/newpipe/extractor/Image$ResolutionLevel;

    const-string v3, "mqdefault.jpg"

    const/16 v4, 0xb4

    const/16 v5, 0x140

    invoke-direct {v1, v3, v4, v5, v2}, Lorg/schabi/newpipe/extractor/utils/ImageSuffix;-><init>(Ljava/lang/String;IILorg/schabi/newpipe/extractor/Image$ResolutionLevel;)V

    new-instance v3, Lorg/schabi/newpipe/extractor/utils/ImageSuffix;

    const/16 v4, 0x168

    const/16 v5, 0x1e0

    const-string v6, "hqdefault.jpg"

    invoke-direct {v3, v6, v4, v5, v2}, Lorg/schabi/newpipe/extractor/utils/ImageSuffix;-><init>(Ljava/lang/String;IILorg/schabi/newpipe/extractor/Image$ResolutionLevel;)V

    invoke-static {v0, v1, v3}, Lsvc;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lxvc;->j:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/extractor/playlist/a;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)V

    return-void
.end method

.method public static synthetic F(Lona;Lcom/grack/nanojson/JsonObject;)Lbzc;
    .locals 0

    invoke-static {p0, p1}, Lxvc;->N(Lona;Lcom/grack/nanojson/JsonObject;)Lbzc;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic G(Lcom/grack/nanojson/JsonObject;)Lcom/grack/nanojson/JsonObject;
    .locals 0

    invoke-static {p0}, Lxvc;->M(Lcom/grack/nanojson/JsonObject;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic H(Ljava/lang/String;Lorg/schabi/newpipe/extractor/utils/ImageSuffix;)Lorg/schabi/newpipe/extractor/Image;
    .locals 0

    invoke-static {p0, p1}, Lxvc;->O(Ljava/lang/String;Lorg/schabi/newpipe/extractor/utils/ImageSuffix;)Lorg/schabi/newpipe/extractor/Image;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic M(Lcom/grack/nanojson/JsonObject;)Lcom/grack/nanojson/JsonObject;
    .locals 1

    const-string v0, "playlistPanelVideoRenderer"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic N(Lona;Lcom/grack/nanojson/JsonObject;)Lbzc;
    .locals 1

    new-instance v0, Lbzc;

    invoke-direct {v0, p1, p0}, Lbzc;-><init>(Lcom/grack/nanojson/JsonObject;Lona;)V

    return-object v0
.end method

.method public static synthetic O(Ljava/lang/String;Lorg/schabi/newpipe/extractor/utils/ImageSuffix;)Lorg/schabi/newpipe/extractor/Image;
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


# virtual methods
.method public B()Ljava/util/List;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lxvc;->h:Lcom/grack/nanojson/JsonObject;

    const-string v1, "playlistId"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lxvc;->K(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    :try_start_1
    iget-object v1, p0, Lxvc;->g:Lcom/grack/nanojson/JsonObject;

    const-string v2, "currentVideoEndpoint"

    invoke-virtual {v1, v2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v1

    const-string v2, "watchEndpoint"

    invoke-virtual {v1, v2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v1

    const-string v2, "videoId"

    invoke-virtual {v1, v2}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lxvc;->L(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_1
    new-instance p0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v1, "Could not get playlist thumbnails"

    invoke-direct {p0, v1, v0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0
.end method

.method public C()Ljava/util/List;
    .locals 0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public D()Ljava/lang/String;
    .locals 0

    const-string p0, "YouTube"

    return-object p0
.end method

.method public E()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public final I(Lqy9;Ljava/util/List;)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lmk3;->o()Lona;

    move-result-object p0

    invoke-interface {p2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lw50;

    const-class v1, Lcom/grack/nanojson/JsonObject;

    invoke-direct {v0, v1}, Lw50;-><init>(Ljava/lang/Class;)V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lx50;

    invoke-direct {v0, v1}, Lx50;-><init>(Ljava/lang/Class;)V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Luvc;

    invoke-direct {v0}, Luvc;-><init>()V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lguc;

    invoke-direct {v0}, Lguc;-><init>()V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lvvc;

    invoke-direct {v0, p0}, Lvvc;-><init>(Lona;)V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lwvc;

    invoke-direct {p2, p1}, Lwvc;-><init>(Lqy9;)V

    invoke-interface {p0, p2}, Ljava/util/stream/Stream;->forEachOrdered(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final J(Lcom/grack/nanojson/JsonObject;Ljava/util/Map;)Lorg/schabi/newpipe/extractor/Page;
    .locals 7

    const-string v0, "contents"

    invoke-virtual {p1, v0}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v1

    invoke-virtual {p1, v0}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v1, p1}, Lcom/grack/nanojson/JsonArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/grack/nanojson/JsonObject;

    if-eqz p1, :cond_0

    const-string v0, "playlistPanelVideoRenderer"

    invoke-virtual {p1, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p1

    const-string v0, "navigationEndpoint"

    invoke-virtual {p1, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p1

    const-string v0, "watchEndpoint"

    invoke-virtual {p1, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p1

    const-string v0, "playlistId"

    invoke-virtual {p1, v0}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "videoId"

    invoke-virtual {p1, v2}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "index"

    invoke-virtual {p1, v4}, Lcom/grack/nanojson/JsonObject;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "params"

    invoke-virtual {p1, v5}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lmk3;->h()Lorg/schabi/newpipe/extractor/localization/Localization;

    move-result-object v6

    invoke-virtual {p0}, Lmk3;->g()Lorg/schabi/newpipe/extractor/localization/ContentCountry;

    move-result-object p0

    invoke-static {v6, p0}, Lcxc;->y0(Lorg/schabi/newpipe/extractor/localization/Localization;Lorg/schabi/newpipe/extractor/localization/ContentCountry;)Laa5;

    move-result-object p0

    invoke-virtual {p0, v2, v3}, Laa5;->h(Ljava/lang/String;Ljava/lang/String;)Laa5;

    move-result-object p0

    invoke-virtual {p0, v0, v1}, Laa5;->h(Ljava/lang/String;Ljava/lang/String;)Laa5;

    move-result-object p0

    const-string v0, "playlistIndex"

    invoke-virtual {p0, v0, v4}, Laa5;->f(Ljava/lang/String;I)Laa5;

    move-result-object p0

    invoke-virtual {p0, v5, p1}, Laa5;->h(Ljava/lang/String;Ljava/lang/String;)Laa5;

    move-result-object p0

    invoke-virtual {p0}, Laa5;->b()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ltc5;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    new-instance p0, Lorg/schabi/newpipe/extractor/Page;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v1, "https://www.youtube.com/youtubei/v1/next?prettyPrint=false"

    move-object v0, p0

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lorg/schabi/newpipe/extractor/Page;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;[B)V

    return-object p0

    :cond_0
    new-instance p0, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;

    const-string p1, "Could not extract next page url"

    invoke-direct {p0, p1}, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final K(Ljava/lang/String;)Ljava/util/List;
    .locals 0

    invoke-static {p1}, Lcxc;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lxvc;->L(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final L(Ljava/lang/String;)Ljava/util/List;
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "https://i.ytimg.com/vi/"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lxvc;->j:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Ltvc;

    invoke-direct {v0, p0}, Ltvc;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Lk50;->a()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lxvc;->h:Lcom/grack/nanojson/JsonObject;

    const-string v0, "title"

    invoke-static {p0, v0}, Lcxc;->K(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/schabi/newpipe/extractor/utils/a;->m(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v0, "Could not get playlist name"

    invoke-direct {p0, v0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public q(Lc23;)V
    .locals 5

    invoke-virtual {p0}, Lmk3;->h()Lorg/schabi/newpipe/extractor/localization/Localization;

    move-result-object p1

    invoke-virtual {p0}, Lmk3;->p()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/schabi/newpipe/extractor/utils/a;->x(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    invoke-virtual {p0}, Lmk3;->i()Ljava/lang/String;

    move-result-object v1

    const-string v2, "v"

    invoke-static {v0, v2}, Lorg/schabi/newpipe/extractor/utils/a;->h(Ljava/net/URL;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "index"

    invoke-static {v0, v3}, Lorg/schabi/newpipe/extractor/utils/a;->h(Ljava/net/URL;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lmk3;->g()Lorg/schabi/newpipe/extractor/localization/ContentCountry;

    move-result-object v3

    invoke-static {p1, v3}, Lcxc;->y0(Lorg/schabi/newpipe/extractor/localization/Localization;Lorg/schabi/newpipe/extractor/localization/ContentCountry;)Laa5;

    move-result-object v3

    const-string v4, "playlistId"

    invoke-virtual {v3, v4, v1}, Laa5;->h(Ljava/lang/String;Ljava/lang/String;)Laa5;

    move-result-object v1

    if-eqz v2, :cond_0

    const-string v3, "videoId"

    invoke-virtual {v1, v3, v2}, Laa5;->h(Ljava/lang/String;Ljava/lang/String;)Laa5;

    :cond_0
    if-eqz v0, :cond_1

    const-string v2, "playlistIndex"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v2, v0}, Laa5;->f(Ljava/lang/String;I)Laa5;

    :cond_1
    invoke-virtual {v1}, Laa5;->b()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ltc5;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-static {}, Lcxc;->T()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0}, Lmk3;->f()Lc23;

    move-result-object v2

    const-string v3, "https://www.youtube.com/youtubei/v1/next?prettyPrint=false"

    invoke-virtual {v2, v3, v1, v0, p1}, Lc23;->k(Ljava/lang/String;Ljava/util/Map;[BLorg/schabi/newpipe/extractor/localization/Localization;)Lfu8;

    move-result-object p1

    invoke-static {p1}, Lcxc;->R(Lfu8;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Loc5;->k(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    iput-object v0, p0, Lxvc;->g:Lcom/grack/nanojson/JsonObject;

    const-string v1, "contents"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "twoColumnWatchNextResults"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "playlist"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    iput-object v0, p0, Lxvc;->h:Lcom/grack/nanojson/JsonObject;

    invoke-static {v0}, Lorg/schabi/newpipe/extractor/utils/a;->o(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance p0, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;

    const-string p1, "Could not get playlistData"

    invoke-direct {p0, p1}, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcxc;->X()Z

    move-result p1

    if-nez p1, :cond_2

    new-instance p1, Lorg/schabi/newpipe/extractor/exceptions/ContentNotAvailableException;

    const-string v0, "Consent is required in some countries to view Mix playlists"

    invoke-direct {p1, v0, p0}, Lorg/schabi/newpipe/extractor/exceptions/ContentNotAvailableException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_2
    throw p0

    :cond_3
    const-string v0, "VISITOR_INFO1_LIVE"

    invoke-static {v0, p1}, Lcxc;->q(Ljava/lang/String;Lfu8;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lxvc;->i:Ljava/lang/String;

    return-void
.end method

.method public r()Ltl5$a;
    .locals 4

    new-instance v0, Lqy9;

    invoke-virtual {p0}, Lmk3;->n()I

    move-result v1

    invoke-direct {v0, v1}, Lqy9;-><init>(I)V

    iget-object v1, p0, Lxvc;->h:Lcom/grack/nanojson/JsonObject;

    const-string v2, "contents"

    invoke-virtual {v1, v2}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lxvc;->I(Lqy9;Ljava/util/List;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "VISITOR_INFO1_LIVE"

    iget-object v3, p0, Lxvc;->i:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ltl5$a;

    iget-object v3, p0, Lxvc;->h:Lcom/grack/nanojson/JsonObject;

    invoke-virtual {p0, v3, v1}, Lxvc;->J(Lcom/grack/nanojson/JsonObject;Ljava/util/Map;)Lorg/schabi/newpipe/extractor/Page;

    move-result-object p0

    invoke-direct {v2, v0, p0}, Ltl5$a;-><init>(Lyz4;Lorg/schabi/newpipe/extractor/Page;)V

    return-object v2
.end method

.method public t(Lorg/schabi/newpipe/extractor/Page;)Ltl5$a;
    .locals 6

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Page;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/schabi/newpipe/extractor/utils/a;->m(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Page;->getCookies()Ljava/util/Map;

    move-result-object v0

    const-string v1, "VISITOR_INFO1_LIVE"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lqy9;

    invoke-virtual {p0}, Lmk3;->n()I

    move-result v1

    invoke-direct {v0, v1}, Lqy9;-><init>(I)V

    invoke-static {}, Lcxc;->T()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0}, Lmk3;->f()Lc23;

    move-result-object v2

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Page;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Page;->getBody()[B

    move-result-object v4

    invoke-virtual {p0}, Lmk3;->h()Lorg/schabi/newpipe/extractor/localization/Localization;

    move-result-object v5

    invoke-virtual {v2, v3, v1, v4, v5}, Lc23;->k(Ljava/lang/String;Ljava/util/Map;[BLorg/schabi/newpipe/extractor/localization/Localization;)Lfu8;

    move-result-object v1

    invoke-static {v1}, Lcxc;->R(Lfu8;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Loc5;->k(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v1

    const-string v2, "contents"

    invoke-virtual {v1, v2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v1

    const-string v3, "twoColumnWatchNextResults"

    invoke-virtual {v1, v3}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v1

    const-string v3, "playlist"

    invoke-virtual {v1, v3}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v2

    const-string v3, "currentIndex"

    invoke-virtual {v1, v3}, Lcom/grack/nanojson/JsonObject;->getInt(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/util/AbstractList;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lxvc;->I(Lqy9;Ljava/util/List;)V

    new-instance v2, Ltl5$a;

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Page;->getCookies()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lxvc;->J(Lcom/grack/nanojson/JsonObject;Ljava/util/Map;)Lorg/schabi/newpipe/extractor/Page;

    move-result-object p0

    invoke-direct {v2, v0, p0}, Ltl5$a;-><init>(Lyz4;Lorg/schabi/newpipe/extractor/Page;)V

    return-object v2

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cookie \'VISITOR_INFO1_LIVE\' is missing"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Page doesn\'t contain an URL"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public v()Lorg/schabi/newpipe/extractor/stream/Description;
    .locals 0

    sget-object p0, Lorg/schabi/newpipe/extractor/stream/Description;->EMPTY_DESCRIPTION:Lorg/schabi/newpipe/extractor/stream/Description;

    return-object p0
.end method

.method public w()Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo$PlaylistType;
    .locals 1

    iget-object p0, p0, Lxvc;->h:Lcom/grack/nanojson/JsonObject;

    const-string v0, "playlistId"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcxc;->r(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo$PlaylistType;

    move-result-object p0

    return-object p0
.end method

.method public x()J
    .locals 2

    const-wide/16 v0, -0x2

    return-wide v0
.end method

.class public Lorg/schabi/newpipe/extractor/services/youtube/extractors/a;
.super Lus0;
.source "SourceFile"


# instance fields
.field public g:Lcom/grack/nanojson/JsonObject;

.field public h:Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader;

.field public i:Ljava/lang/String;

.field public j:Lcom/grack/nanojson/JsonObject;


# direct methods
.method public constructor <init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lus0;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)V

    return-void
.end method

.method public static synthetic C(Lcom/grack/nanojson/JsonArray;)Z
    .locals 0

    invoke-static {p0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/a;->W(Lcom/grack/nanojson/JsonArray;)Z

    move-result p0

    return p0
.end method

.method public static synthetic D(Lorg/schabi/newpipe/extractor/services/youtube/extractors/a;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Consumer;Lcom/grack/nanojson/JsonObject;)V
    .locals 0

    invoke-virtual/range {p0 .. p6}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/a;->c0(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Consumer;Lcom/grack/nanojson/JsonObject;)V

    return-void
.end method

.method public static synthetic E(Lcom/grack/nanojson/JsonObject;)Z
    .locals 0

    invoke-static {p0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/a;->a0(Lcom/grack/nanojson/JsonObject;)Z

    move-result p0

    return p0
.end method

.method public static synthetic F(Lcom/grack/nanojson/JsonObject;)Lcom/grack/nanojson/JsonObject;
    .locals 0

    invoke-static {p0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/a;->b0(Lcom/grack/nanojson/JsonObject;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic G(Lcom/grack/nanojson/JsonObject;)Lcom/grack/nanojson/JsonArray;
    .locals 0

    invoke-static {p0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/a;->V(Lcom/grack/nanojson/JsonObject;)Lcom/grack/nanojson/JsonArray;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic H(Lorg/schabi/newpipe/extractor/services/youtube/extractors/a;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/a;->X(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic I()Lorg/schabi/newpipe/extractor/exceptions/ParsingException;
    .locals 1

    invoke-static {}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/a;->T()Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic J()Lorg/schabi/newpipe/extractor/exceptions/ParsingException;
    .locals 1

    invoke-static {}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/a;->R()Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic K(Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader;)Lcom/grack/nanojson/JsonArray;
    .locals 0

    invoke-static {p0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/a;->U(Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader;)Lcom/grack/nanojson/JsonArray;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic L(Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader;)Lcom/grack/nanojson/JsonArray;
    .locals 0

    invoke-static {p0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/a;->S(Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader;)Lcom/grack/nanojson/JsonArray;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic M(Lorg/schabi/newpipe/extractor/services/youtube/extractors/a;Ljava/util/List;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/a;->Z(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic N(Lcom/grack/nanojson/JsonObject;Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)Lfu0;
    .locals 0

    invoke-static/range {p0 .. p6}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/a;->Y(Lcom/grack/nanojson/JsonObject;Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)Lfu0;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic R()Lorg/schabi/newpipe/extractor/exceptions/ParsingException;
    .locals 2

    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v1, "Could not get avatars"

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static synthetic S(Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader;)Lcom/grack/nanojson/JsonArray;
    .locals 5

    sget-object v0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/a$a;->a:[I

    iget-object v1, p0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader;->headerType:Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader$HeaderType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const-string v2, "avatar"

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    const-string v3, "thumbnails"

    if-eq v0, v1, :cond_0

    iget-object p0, p0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader;->json:Lcom/grack/nanojson/JsonObject;

    invoke-virtual {p0, v2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader;->json:Lcom/grack/nanojson/JsonObject;

    const-string v0, "boxArt"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader;->json:Lcom/grack/nanojson/JsonObject;

    const-string v0, "content"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v0, "pageHeaderViewModel"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v0, "image"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v1, "contentPreviewImageViewModel"

    invoke-virtual {p0, v1}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "sources"

    if-eqz v3, :cond_2

    invoke-virtual {p0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    invoke-virtual {p0, v4}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object p0

    return-object p0

    :cond_2
    const-string v1, "decoratedAvatarViewModel"

    invoke-virtual {p0, v1}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v1, "avatarViewModel"

    invoke-virtual {p0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    invoke-virtual {p0, v4}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object p0

    return-object p0

    :cond_3
    new-instance p0, Lcom/grack/nanojson/JsonArray;

    invoke-direct {p0}, Lcom/grack/nanojson/JsonArray;-><init>()V

    return-object p0
.end method

.method public static synthetic T()Lorg/schabi/newpipe/extractor/exceptions/ParsingException;
    .locals 2

    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v1, "Could not get avatars"

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static synthetic U(Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader;)Lcom/grack/nanojson/JsonArray;
    .locals 3

    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader;->headerType:Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader$HeaderType;

    sget-object v1, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader$HeaderType;->PAGE:Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader$HeaderType;

    const-string v2, "banner"

    if-ne v0, v1, :cond_1

    iget-object p0, p0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader;->json:Lcom/grack/nanojson/JsonObject;

    const-string v0, "content"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v0, "pageHeaderViewModel"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v0, "imageBannerViewModel"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v0, "image"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v0, "sources"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lcom/grack/nanojson/JsonArray;

    invoke-direct {p0}, Lcom/grack/nanojson/JsonArray;-><init>()V

    return-object p0

    :cond_1
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader;->json:Lcom/grack/nanojson/JsonObject;

    invoke-virtual {p0, v2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v0, "thumbnails"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic V(Lcom/grack/nanojson/JsonObject;)Lcom/grack/nanojson/JsonArray;
    .locals 1

    const-string v0, "metadataParts"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic W(Lcom/grack/nanojson/JsonArray;)Z
    .locals 1

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic Y(Lcom/grack/nanojson/JsonObject;Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)Lfu0;
    .locals 9

    new-instance v8, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor$g;

    move-object v0, v8

    move-object v1, p5

    move-object v2, p6

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor$g;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;Lcom/grack/nanojson/JsonObject;Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v8
.end method

.method public static synthetic a0(Lcom/grack/nanojson/JsonObject;)Z
    .locals 1

    const-string v0, "tabRenderer"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b0(Lcom/grack/nanojson/JsonObject;)Lcom/grack/nanojson/JsonObject;
    .locals 1

    const-string v0, "tabRenderer"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public A()Ljava/util/List;
    .locals 2

    invoke-virtual {p0}, Lmk3;->a()V

    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/a;->j:Lcom/grack/nanojson/JsonObject;

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/a;->g:Lcom/grack/nanojson/JsonObject;

    const-string v0, "microformat"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v0, "microformatDataRenderer"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v0, "tags"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lw50;

    const-class v1, Ljava/lang/String;

    invoke-direct {v0, v1}, Lw50;-><init>(Ljava/lang/Class;)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lmsc;

    invoke-direct {v0, v1}, Lmsc;-><init>(Ljava/lang/Class;)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Lk50;->a()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public B()Z
    .locals 1

    invoke-virtual {p0}, Lmk3;->a()V

    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/a;->j:Lcom/grack/nanojson/JsonObject;

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/a;->h:Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader;

    if-eqz p0, :cond_1

    invoke-static {p0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper;->t(Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader;)Z

    move-result p0

    return p0

    :cond_1
    new-instance p0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v0, "Could not get channel verified status, no channel header has been extracted"

    invoke-direct {p0, v0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final O(Lcom/grack/nanojson/JsonObject;)J
    .locals 4

    const-string p0, "content"

    invoke-virtual {p1, p0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p1

    const-string v0, "pageHeaderViewModel"

    invoke-virtual {p1, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p1

    const-string v0, "metadata"

    invoke-virtual {p1, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p1

    const-string v0, "contentMetadataViewModel"

    invoke-virtual {p1, v0}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    const-wide/16 v2, -0x1

    if-eqz v1, :cond_1

    invoke-virtual {p1, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p1

    const-string v0, "metadataRows"

    invoke-virtual {p1, v0}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lw50;

    const-class v1, Lcom/grack/nanojson/JsonObject;

    invoke-direct {v0, v1}, Lw50;-><init>(Ljava/lang/Class;)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lx50;

    invoke-direct {v0, v1}, Lx50;-><init>(Ljava/lang/Class;)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lwsc;

    invoke-direct {v0}, Lwsc;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lxsc;

    invoke-direct {v0}, Lxsc;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/grack/nanojson/JsonArray;

    if-nez p1, :cond_0

    return-wide v2

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1, v0}, Lcom/grack/nanojson/JsonArray;->getObject(I)Lcom/grack/nanojson/JsonObject;

    move-result-object p1

    const-string v0, "text"

    invoke-virtual {p1, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/schabi/newpipe/extractor/utils/a;->r(Ljava/lang/String;)J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    move-exception p0

    new-instance p1, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v0, "Could not get subscriber count"

    invoke-direct {p1, v0, p0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_1
    return-wide v2
.end method

.method public final P()Ljava/util/List;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/a;->p()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Latc;

    invoke-direct {v2, p0, v0, v1}, Latc;-><init>(Lorg/schabi/newpipe/extractor/services/youtube/extractors/a;Ljava/util/List;Ljava/lang/String;)V

    const-string p0, "videos"

    invoke-interface {v2, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    const-string p0, "shorts"

    invoke-interface {v2, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    const-string p0, "livestreams"

    invoke-interface {v2, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final Q()Ljava/util/List;
    .locals 10

    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/a;->g:Lcom/grack/nanojson/JsonObject;

    const-string v1, "contents"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "twoColumnBrowseResultsRenderer"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "tabs"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v0

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Lssc;

    invoke-direct {v7, p0, v8}, Lssc;-><init>(Lorg/schabi/newpipe/extractor/services/youtube/extractors/a;Ljava/util/List;)V

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/a;->k()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/a;->p()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/a;->i()Ljava/lang/String;

    move-result-object v5

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

    new-instance v1, Ltsc;

    invoke-direct {v1}, Ltsc;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lusc;

    invoke-direct {v1}, Lusc;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v9, Lvsc;

    move-object v1, v9

    move-object v2, p0

    move-object v3, v8

    invoke-direct/range {v1 .. v7}, Lvsc;-><init>(Lorg/schabi/newpipe/extractor/services/youtube/extractors/a;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Consumer;)V

    invoke-interface {v0, v9}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    invoke-static {v8}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic X(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lorg/schabi/newpipe/extractor/linkhandler/ReadyChannelTabListLinkHandler;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object p0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/a;->i:Ljava/lang/String;

    new-instance v1, Lrsc;

    invoke-direct {v1}, Lrsc;-><init>()V

    invoke-direct {v0, p2, p0, p3, v1}, Lorg/schabi/newpipe/extractor/linkhandler/ReadyChannelTabListLinkHandler;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/extractor/linkhandler/ReadyChannelTabListLinkHandler$ChannelTabExtractorBuilder;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final synthetic Z(Ljava/util/List;Ljava/lang/String;)V
    .locals 2

    :try_start_0
    invoke-static {}, Lduc;->r()Lduc;

    move-result-object v0

    iget-object p0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/a;->i:Ljava/lang/String;

    invoke-static {p2}, Llsc;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    const-string v1, ""

    invoke-virtual {v0, p0, p2, v1}, Lem5;->l(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/schabi/newpipe/extractor/exceptions/ParsingException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final synthetic c0(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Consumer;Lcom/grack/nanojson/JsonObject;)V
    .locals 14

    move-object v0, p0

    move-object/from16 v1, p5

    const-string v2, "videos"

    const-string v3, "shorts"

    const-string v4, "playlists"

    const/4 v5, 0x0

    const/4 v6, 0x1

    const-string v7, "endpoint"

    move-object/from16 v9, p6

    invoke-virtual {v9, v7}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v7

    const-string v8, "commandMetadata"

    invoke-virtual {v7, v8}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v7

    const-string v8, "webCommandMetadata"

    invoke-virtual {v7, v8}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v7

    const-string v8, "url"

    invoke-virtual {v7, v8}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    array-length v10, v8

    if-nez v10, :cond_0

    return-void

    :cond_0
    array-length v10, v8

    sub-int/2addr v10, v6

    aget-object v8, v8, v10

    iget-object v10, v0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/a;->h:Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader;

    if-nez v10, :cond_1

    const/4 v10, 0x0

    goto :goto_0

    :cond_1
    new-instance v11, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader;

    iget-object v12, v10, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader;->json:Lcom/grack/nanojson/JsonObject;

    iget-object v10, v10, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader;->headerType:Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader$HeaderType;

    invoke-direct {v11, v12, v10}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader;-><init>(Lcom/grack/nanojson/JsonObject;Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader$HeaderType;)V

    move-object v10, v11

    :goto_0
    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    const/4 v11, -0x1

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v12

    sparse-switch v12, :sswitch_data_0

    :goto_1
    move v6, v11

    goto :goto_2

    :sswitch_0
    const-string v6, "releases"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_1

    :cond_2
    const/4 v6, 0x4

    goto :goto_2

    :sswitch_1
    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    goto :goto_1

    :cond_3
    const/4 v6, 0x3

    goto :goto_2

    :sswitch_2
    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    goto :goto_1

    :cond_4
    const/4 v6, 0x2

    goto :goto_2

    :sswitch_3
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    goto :goto_1

    :sswitch_4
    const-string v6, "streams"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    goto :goto_1

    :cond_5
    move v6, v5

    :cond_6
    :goto_2
    packed-switch v6, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    const-string v0, "albums"

    invoke-interface {v1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_3

    :pswitch_1
    new-instance v1, Lorg/schabi/newpipe/extractor/linkhandler/ReadyChannelTabListLinkHandler;

    iget-object v0, v0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/a;->i:Ljava/lang/String;

    new-instance v3, Lqsc;

    move-object v8, v3

    move-object/from16 v9, p6

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    invoke-direct/range {v8 .. v13}, Lqsc;-><init>(Lcom/grack/nanojson/JsonObject;Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v7, v0, v2, v3}, Lorg/schabi/newpipe/extractor/linkhandler/ReadyChannelTabListLinkHandler;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/extractor/linkhandler/ReadyChannelTabListLinkHandler$ChannelTabExtractorBuilder;)V

    move-object v0, p1

    invoke-interface {p1, v5, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_3

    :pswitch_2
    invoke-interface {v1, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_3

    :pswitch_3
    invoke-interface {v1, v4}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_3

    :pswitch_4
    const-string v0, "livestreams"

    invoke-interface {v1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_7
    :goto_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x702b5f0d -> :sswitch_4
        -0x6f36471f -> :sswitch_3
        -0x35d4f489 -> :sswitch_2
        -0x30ad84a8 -> :sswitch_1
        -0x20dc26b4 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public i()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lmk3;->a()V

    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/a;->h:Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader;

    iget-object v1, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/a;->g:Lcom/grack/nanojson/JsonObject;

    iget-object p0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/a;->i:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper;->q(Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader;Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public k()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lmk3;->a()V

    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/a;->h:Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader;

    iget-object v1, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/a;->j:Lcom/grack/nanojson/JsonObject;

    iget-object p0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/a;->g:Lcom/grack/nanojson/JsonObject;

    invoke-static {v0, v1, p0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper;->r(Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader;Lcom/grack/nanojson/JsonObject;Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public p()Ljava/lang/String;
    .locals 4

    :try_start_0
    invoke-static {}, Lrtc;->r()Lrtc;

    move-result-object v0

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/a;->i()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "channel/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lem5;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lorg/schabi/newpipe/extractor/exceptions/ParsingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    invoke-super {p0}, Lmk3;->p()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public q(Lc23;)V
    .locals 3

    invoke-super {p0}, Lmk3;->i()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper;->H(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lmk3;->h()Lorg/schabi/newpipe/extractor/localization/Localization;

    move-result-object v0

    invoke-virtual {p0}, Lmk3;->g()Lorg/schabi/newpipe/extractor/localization/ContentCountry;

    move-result-object v1

    const-string v2, "EgZ2aWRlb3PyBgQKAjoA"

    invoke-static {p1, v2, v0, v1}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper;->s(Ljava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/extractor/localization/Localization;Lorg/schabi/newpipe/extractor/localization/ContentCountry;)Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$b;

    move-result-object p1

    iget-object v0, p1, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$b;->a:Lcom/grack/nanojson/JsonObject;

    iput-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/a;->g:Lcom/grack/nanojson/JsonObject;

    invoke-static {v0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper;->p(Lcom/grack/nanojson/JsonObject;)Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader;

    move-result-object v0

    iput-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/a;->h:Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader;

    iget-object p1, p1, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$b;->b:Ljava/lang/String;

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/a;->i:Ljava/lang/String;

    iget-object p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/a;->g:Lcom/grack/nanojson/JsonObject;

    invoke-static {p1}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper;->o(Lcom/grack/nanojson/JsonObject;)Lcom/grack/nanojson/JsonObject;

    move-result-object p1

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/a;->j:Lcom/grack/nanojson/JsonObject;

    return-void
.end method

.method public r()Ljava/util/List;
    .locals 1

    invoke-virtual {p0}, Lmk3;->a()V

    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/a;->j:Lcom/grack/nanojson/JsonObject;

    if-eqz v0, :cond_0

    const-string p0, "avatar"

    invoke-virtual {v0, p0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v0, "thumbnails"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lzsc;

    invoke-direct {v0}, Lzsc;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lnsc;

    invoke-direct {v0}, Lnsc;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0

    :cond_0
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/a;->h:Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Losc;

    invoke-direct {v0}, Losc;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lzsc;

    invoke-direct {v0}, Lzsc;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lpsc;

    invoke-direct {v0}, Lpsc;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public s()Ljava/util/List;
    .locals 1

    invoke-virtual {p0}, Lmk3;->a()V

    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/a;->j:Lcom/grack/nanojson/JsonObject;

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/a;->h:Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lysc;

    invoke-direct {v0}, Lysc;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lzsc;

    invoke-direct {v0}, Lzsc;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public t()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lmk3;->a()V

    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/a;->j:Lcom/grack/nanojson/JsonObject;

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/a;->h:Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "description"

    if-eqz v0, :cond_1

    :try_start_1
    iget-object v2, v0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader;->headerType:Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader$HeaderType;

    sget-object v3, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader$HeaderType;->INTERACTIVE_TABBED:Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader$HeaderType;

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader;->json:Lcom/grack/nanojson/JsonObject;

    invoke-virtual {p0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    invoke-static {p0}, Lcxc;->L(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/a;->g:Lcom/grack/nanojson/JsonObject;

    const-string v0, "metadata"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v0, "channelMetadataRenderer"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :goto_0
    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v1, "Could not get channel description"

    invoke-direct {v0, v1, p0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public u()Ljava/lang/String;
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/a;->i()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcxc;->E(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v1, "Could not get feed URL"

    invoke-direct {v0, v1, p0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public v()Ljava/util/List;
    .locals 0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public w()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public x()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public y()J
    .locals 5

    invoke-virtual {p0}, Lmk3;->a()V

    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/a;->j:Lcom/grack/nanojson/JsonObject;

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_0

    return-wide v1

    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/a;->h:Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader;

    if-eqz v0, :cond_5

    iget-object v3, v0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader;->headerType:Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader$HeaderType;

    sget-object v4, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader$HeaderType;->INTERACTIVE_TABBED:Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader$HeaderType;

    if-ne v3, v4, :cond_1

    return-wide v1

    :cond_1
    iget-object v0, v0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader;->json:Lcom/grack/nanojson/JsonObject;

    sget-object v4, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader$HeaderType;->PAGE:Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader$HeaderType;

    if-ne v3, v4, :cond_2

    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/a;->O(Lcom/grack/nanojson/JsonObject;)J

    move-result-wide v0

    return-wide v0

    :cond_2
    const-string p0, "subscriberCountText"

    invoke-virtual {v0, p0}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0, p0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    goto :goto_0

    :cond_3
    const-string p0, "subtitle"

    invoke-virtual {v0, p0}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v0, p0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    goto :goto_0

    :cond_4
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_5

    :try_start_0
    invoke-static {p0}, Lcxc;->L(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/schabi/newpipe/extractor/utils/a;->r(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception p0

    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v1, "Could not get subscriber count"

    invoke-direct {v0, v1, p0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_5
    return-wide v1
.end method

.method public z()Ljava/util/List;
    .locals 1

    invoke-virtual {p0}, Lmk3;->a()V

    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/a;->j:Lcom/grack/nanojson/JsonObject;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/a;->Q()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/a;->P()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

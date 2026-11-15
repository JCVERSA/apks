.class public Loxc;
.super Lorg/schabi/newpipe/extractor/playlist/a;
.source "SourceFile"


# instance fields
.field public g:Lcom/grack/nanojson/JsonObject;

.field public h:Lcom/grack/nanojson/JsonObject;

.field public i:Lcom/grack/nanojson/JsonObject;

.field public j:Lcom/grack/nanojson/JsonObject;

.field public k:Z


# direct methods
.method public constructor <init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/extractor/playlist/a;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)V

    return-void
.end method

.method public static synthetic F(Lqy9;Lona;Lcom/grack/nanojson/JsonObject;)V
    .locals 0

    invoke-static {p0, p1, p2}, Loxc;->U(Lqy9;Lona;Lcom/grack/nanojson/JsonObject;)V

    return-void
.end method

.method public static synthetic G(Lcom/grack/nanojson/JsonObject;)Z
    .locals 0

    invoke-static {p0}, Loxc;->X(Lcom/grack/nanojson/JsonObject;)Z

    move-result p0

    return p0
.end method

.method public static synthetic H(Lcom/grack/nanojson/JsonObject;)Lcom/grack/nanojson/JsonObject;
    .locals 0

    invoke-static {p0}, Loxc;->b0(Lcom/grack/nanojson/JsonObject;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic I(Lcom/grack/nanojson/JsonObject;)Lcom/grack/nanojson/JsonObject;
    .locals 0

    invoke-static {p0}, Loxc;->Y(Lcom/grack/nanojson/JsonObject;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic J(Lcom/grack/nanojson/JsonObject;)Z
    .locals 0

    invoke-static {p0}, Loxc;->a0(Lcom/grack/nanojson/JsonObject;)Z

    move-result p0

    return p0
.end method

.method public static synthetic K(Lcom/grack/nanojson/JsonObject;)Z
    .locals 0

    invoke-static {p0}, Loxc;->W(Lcom/grack/nanojson/JsonObject;)Z

    move-result p0

    return p0
.end method

.method public static synthetic L(Lcom/grack/nanojson/JsonObject;)Lcom/grack/nanojson/JsonObject;
    .locals 0

    invoke-static {p0}, Loxc;->V(Lcom/grack/nanojson/JsonObject;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic M()Lorg/schabi/newpipe/extractor/exceptions/ParsingException;
    .locals 1

    invoke-static {}, Loxc;->Z()Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic N()Lorg/schabi/newpipe/extractor/exceptions/ParsingException;
    .locals 1

    invoke-static {}, Loxc;->c0()Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic U(Lqy9;Lona;Lcom/grack/nanojson/JsonObject;)V
    .locals 2

    const-string v0, "playlistVideoRenderer"

    invoke-virtual {p2, v0}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lbzc;

    invoke-virtual {p2, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p2

    invoke-direct {v1, p2, p1}, Lbzc;-><init>(Lcom/grack/nanojson/JsonObject;Lona;)V

    invoke-virtual {p0, v1}, Lqy9;->h(Lpy9;)V

    goto :goto_0

    :cond_0
    const-string p1, "richItemRenderer"

    invoke-virtual {p2, p1}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2, p1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p1

    const-string p2, "content"

    invoke-virtual {p1, p2}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1, p2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p1

    const-string p2, "reelItemRenderer"

    invoke-virtual {p1, p2}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lrxc;

    invoke-virtual {p1, p2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p1

    invoke-direct {v0, p1}, Lrxc;-><init>(Lcom/grack/nanojson/JsonObject;)V

    invoke-virtual {p0, v0}, Lqy9;->h(Lpy9;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic V(Lcom/grack/nanojson/JsonObject;)Lcom/grack/nanojson/JsonObject;
    .locals 1

    const-string v0, "itemSectionRenderer"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v0, "contents"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonArray;->getObject(I)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic W(Lcom/grack/nanojson/JsonObject;)Z
    .locals 1

    const-string v0, "playlistVideoListRenderer"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "richGridRenderer"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static synthetic X(Lcom/grack/nanojson/JsonObject;)Z
    .locals 1

    const-string v0, "playlistSidebarPrimaryInfoRenderer"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic Y(Lcom/grack/nanojson/JsonObject;)Lcom/grack/nanojson/JsonObject;
    .locals 1

    const-string v0, "playlistSidebarPrimaryInfoRenderer"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic Z()Lorg/schabi/newpipe/extractor/exceptions/ParsingException;
    .locals 2

    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v1, "Could not get playlist info"

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static synthetic a0(Lcom/grack/nanojson/JsonObject;)Z
    .locals 1

    const-string v0, "playlistSidebarSecondaryInfoRenderer"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v0, "videoOwner"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v0, "videoOwnerRenderer"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b0(Lcom/grack/nanojson/JsonObject;)Lcom/grack/nanojson/JsonObject;
    .locals 1

    const-string v0, "playlistSidebarSecondaryInfoRenderer"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v0, "videoOwner"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v0, "videoOwnerRenderer"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c0()Lorg/schabi/newpipe/extractor/exceptions/ParsingException;
    .locals 2

    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v1, "Could not get uploader info"

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public B()Ljava/util/List;
    .locals 4

    iget-boolean v0, p0, Loxc;->k:Z

    const-string v1, "thumbnails"

    const-string v2, "thumbnail"

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Loxc;->R()Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v3, "playlistHeaderBanner"

    invoke-virtual {v0, v3}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v3, "heroPlaylistThumbnailRenderer"

    invoke-virtual {v0, v3}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Loxc;->h:Lcom/grack/nanojson/JsonObject;

    const-string v3, "thumbnailRenderer"

    invoke-virtual {v0, v3}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v3, "playlistVideoThumbnailRenderer"

    invoke-virtual {v0, v3}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/utils/a;->n(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v0}, Lcxc;->F(Lcom/grack/nanojson/JsonArray;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object p0, p0, Loxc;->g:Lcom/grack/nanojson/JsonObject;

    const-string v0, "microformat"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v0, "microformatDataRenderer"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object p0

    invoke-static {p0}, Lorg/schabi/newpipe/extractor/utils/a;->n(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p0}, Lcxc;->F(Lcom/grack/nanojson/JsonArray;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v0, "Could not get playlist thumbnails"

    invoke-direct {p0, v0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public C()Ljava/util/List;
    .locals 2

    iget-boolean v0, p0, Loxc;->k:Z

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Loxc;->T()Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v0, "thumbnail"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v0, "thumbnails"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object p0

    invoke-static {p0}, Lcxc;->F(Lcom/grack/nanojson/JsonArray;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v1, "Could not get playlist uploader avatars"

    invoke-direct {v0, v1, p0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public D()Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-boolean v0, p0, Loxc;->k:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Loxc;->R()Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v0, "ownerText"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Loxc;->T()Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v0, "title"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    :goto_0
    invoke-static {p0}, Lcxc;->L(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :goto_1
    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v1, "Could not get playlist uploader name"

    invoke-direct {v0, v1, p0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public E()Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-boolean v0, p0, Loxc;->k:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "navigationEndpoint"

    if-eqz v0, :cond_0

    :try_start_1
    invoke-virtual {p0}, Loxc;->R()Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v0, "ownerText"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v0, "runs"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonArray;->getObject(I)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Loxc;->T()Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    :goto_0
    invoke-static {p0}, Lcxc;->P(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :goto_1
    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v1, "Could not get playlist uploader url"

    invoke-direct {v0, v1, p0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final O()Z
    .locals 2

    iget-object v0, p0, Loxc;->g:Lcom/grack/nanojson/JsonObject;

    const-string v1, "header"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Loxc;->g:Lcom/grack/nanojson/JsonObject;

    const-string v0, "sidebar"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final P(Lqy9;Lcom/grack/nanojson/JsonArray;)V
    .locals 2

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

    new-instance v0, Lnxc;

    invoke-direct {v0, p1, p0}, Lnxc;-><init>(Lqy9;Lona;)V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final Q(Lcom/grack/nanojson/JsonArray;)Lorg/schabi/newpipe/extractor/Page;
    .locals 3

    invoke-static {p1}, Lorg/schabi/newpipe/extractor/utils/a;->n(Ljava/util/Collection;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Lcom/grack/nanojson/JsonArray;->getObject(I)Lcom/grack/nanojson/JsonObject;

    move-result-object p1

    const-string v0, "continuationItemRenderer"

    invoke-virtual {p1, v0}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p1

    const-string v0, "continuationEndpoint"

    invoke-virtual {p1, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p1

    const-string v0, "continuationCommand"

    invoke-virtual {p1, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p1

    const-string v0, "token"

    invoke-virtual {p1, v0}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lmk3;->h()Lorg/schabi/newpipe/extractor/localization/Localization;

    move-result-object v0

    invoke-virtual {p0}, Lmk3;->g()Lorg/schabi/newpipe/extractor/localization/ContentCountry;

    move-result-object p0

    invoke-static {v0, p0}, Lcxc;->y0(Lorg/schabi/newpipe/extractor/localization/Localization;Lorg/schabi/newpipe/extractor/localization/ContentCountry;)Laa5;

    move-result-object p0

    const-string v0, "continuation"

    invoke-virtual {p0, v0, p1}, Laa5;->h(Ljava/lang/String;Ljava/lang/String;)Laa5;

    move-result-object p0

    invoke-virtual {p0}, Laa5;->b()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ltc5;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    new-instance p1, Lorg/schabi/newpipe/extractor/Page;

    const-string v0, "https://www.youtube.com/youtubei/v1/browse?prettyPrint=false"

    invoke-direct {p1, v0, p0}, Lorg/schabi/newpipe/extractor/Page;-><init>(Ljava/lang/String;[B)V

    return-object p1

    :cond_1
    return-object v1
.end method

.method public final R()Lcom/grack/nanojson/JsonObject;
    .locals 2

    iget-object v0, p0, Loxc;->j:Lcom/grack/nanojson/JsonObject;

    if-nez v0, :cond_0

    iget-object v0, p0, Loxc;->g:Lcom/grack/nanojson/JsonObject;

    const-string v1, "header"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "playlistHeaderRenderer"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    iput-object v0, p0, Loxc;->j:Lcom/grack/nanojson/JsonObject;

    :cond_0
    iget-object p0, p0, Loxc;->j:Lcom/grack/nanojson/JsonObject;

    return-object p0
.end method

.method public final S()Lcom/grack/nanojson/JsonObject;
    .locals 3

    iget-object v0, p0, Loxc;->h:Lcom/grack/nanojson/JsonObject;

    if-nez v0, :cond_0

    iget-object v0, p0, Loxc;->g:Lcom/grack/nanojson/JsonObject;

    const-string v1, "sidebar"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "playlistSidebarRenderer"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "items"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

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

    new-instance v1, Lkxc;

    invoke-direct {v1}, Lkxc;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Llxc;

    invoke-direct {v1}, Llxc;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lmxc;

    invoke-direct {v1}, Lmxc;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grack/nanojson/JsonObject;

    iput-object v0, p0, Loxc;->h:Lcom/grack/nanojson/JsonObject;

    :cond_0
    iget-object p0, p0, Loxc;->h:Lcom/grack/nanojson/JsonObject;

    return-object p0
.end method

.method public final T()Lcom/grack/nanojson/JsonObject;
    .locals 3

    iget-object v0, p0, Loxc;->i:Lcom/grack/nanojson/JsonObject;

    if-nez v0, :cond_0

    iget-object v0, p0, Loxc;->g:Lcom/grack/nanojson/JsonObject;

    const-string v1, "sidebar"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "playlistSidebarRenderer"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "items"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

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

    new-instance v1, Lhxc;

    invoke-direct {v1}, Lhxc;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lixc;

    invoke-direct {v1}, Lixc;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Ljxc;

    invoke-direct {v1}, Ljxc;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grack/nanojson/JsonObject;

    iput-object v0, p0, Loxc;->i:Lcom/grack/nanojson/JsonObject;

    :cond_0
    iget-object p0, p0, Loxc;->i:Lcom/grack/nanojson/JsonObject;

    return-object p0
.end method

.method public k()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Loxc;->S()Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "title"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    invoke-static {v0}, Lcxc;->L(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/schabi/newpipe/extractor/utils/a;->m(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    return-object v0

    :cond_0
    iget-object p0, p0, Loxc;->g:Lcom/grack/nanojson/JsonObject;

    const-string v0, "microformat"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v0, "microformatDataRenderer"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public q(Lc23;)V
    .locals 4

    invoke-virtual {p0}, Lmk3;->h()Lorg/schabi/newpipe/extractor/localization/Localization;

    move-result-object p1

    invoke-virtual {p0}, Lmk3;->g()Lorg/schabi/newpipe/extractor/localization/ContentCountry;

    move-result-object v0

    invoke-static {p1, v0}, Lcxc;->y0(Lorg/schabi/newpipe/extractor/localization/Localization;Lorg/schabi/newpipe/extractor/localization/ContentCountry;)Laa5;

    move-result-object v0

    invoke-virtual {p0}, Lmk3;->i()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VL"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "browseId"

    invoke-virtual {v0, v2, v1}, Laa5;->h(Ljava/lang/String;Ljava/lang/String;)Laa5;

    move-result-object v0

    const-string v1, "params"

    const-string v2, "wgYCCAA%3D"

    invoke-virtual {v0, v1, v2}, Laa5;->h(Ljava/lang/String;Ljava/lang/String;)Laa5;

    move-result-object v0

    invoke-virtual {v0}, Laa5;->b()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ltc5;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const-string v1, "browse"

    invoke-static {v1, v0, p1}, Lcxc;->I(Ljava/lang/String;[BLorg/schabi/newpipe/extractor/localization/Localization;)Lcom/grack/nanojson/JsonObject;

    move-result-object p1

    iput-object p1, p0, Loxc;->g:Lcom/grack/nanojson/JsonObject;

    invoke-static {p1}, Lcxc;->l(Lcom/grack/nanojson/JsonObject;)V

    invoke-virtual {p0}, Loxc;->O()Z

    move-result p1

    iput-boolean p1, p0, Loxc;->k:Z

    return-void
.end method

.method public r()Ltl5$a;
    .locals 6

    new-instance v0, Lqy9;

    invoke-virtual {p0}, Lmk3;->n()I

    move-result v1

    invoke-direct {v0, v1}, Lqy9;-><init>(I)V

    iget-object v1, p0, Loxc;->g:Lcom/grack/nanojson/JsonObject;

    const-string v2, "contents"

    invoke-virtual {v1, v2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v1

    const-string v3, "twoColumnBrowseResultsRenderer"

    invoke-virtual {v1, v3}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v1

    const-string v3, "tabs"

    invoke-virtual {v1, v3}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/grack/nanojson/JsonArray;->getObject(I)Lcom/grack/nanojson/JsonObject;

    move-result-object v1

    const-string v3, "tabRenderer"

    invoke-virtual {v1, v3}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v1

    const-string v3, "content"

    invoke-virtual {v1, v3}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v1

    const-string v3, "sectionListRenderer"

    invoke-virtual {v1, v3}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v3, Lw50;

    const-class v4, Lcom/grack/nanojson/JsonObject;

    invoke-direct {v3, v4}, Lw50;-><init>(Ljava/lang/Class;)V

    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v3, Lx50;

    invoke-direct {v3, v4}, Lx50;-><init>(Ljava/lang/Class;)V

    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v3, Lfxc;

    invoke-direct {v3}, Lfxc;-><init>()V

    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v3, Lgxc;

    invoke-direct {v3}, Lgxc;-><init>()V

    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/grack/nanojson/JsonObject;

    if-eqz v1, :cond_2

    const-string v4, "playlistVideoListRenderer"

    invoke-virtual {v1, v4}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v1, v4}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v4, "richGridRenderer"

    invoke-virtual {v1, v4}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v1, v4}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v1

    :goto_0
    invoke-virtual {v1, v2}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Loxc;->P(Lqy9;Lcom/grack/nanojson/JsonArray;)V

    invoke-virtual {p0, v1}, Loxc;->Q(Lcom/grack/nanojson/JsonArray;)Lorg/schabi/newpipe/extractor/Page;

    move-result-object v3

    goto :goto_1

    :cond_1
    new-instance p0, Ltl5$a;

    invoke-direct {p0, v0, v3}, Ltl5$a;-><init>(Lyz4;Lorg/schabi/newpipe/extractor/Page;)V

    return-object p0

    :cond_2
    :goto_1
    new-instance p0, Ltl5$a;

    invoke-direct {p0, v0, v3}, Ltl5$a;-><init>(Lyz4;Lorg/schabi/newpipe/extractor/Page;)V

    return-object p0
.end method

.method public t(Lorg/schabi/newpipe/extractor/Page;)Ltl5$a;
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Page;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/schabi/newpipe/extractor/utils/a;->m(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lqy9;

    invoke-virtual {p0}, Lmk3;->n()I

    move-result v1

    invoke-direct {v0, v1}, Lqy9;-><init>(I)V

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Page;->getBody()[B

    move-result-object p1

    invoke-virtual {p0}, Lmk3;->h()Lorg/schabi/newpipe/extractor/localization/Localization;

    move-result-object v1

    const-string v2, "browse"

    invoke-static {v2, p1, v1}, Lcxc;->I(Ljava/lang/String;[BLorg/schabi/newpipe/extractor/localization/Localization;)Lcom/grack/nanojson/JsonObject;

    move-result-object p1

    const-string v1, "onResponseReceivedActions"

    invoke-virtual {p1, v1}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/grack/nanojson/JsonArray;->getObject(I)Lcom/grack/nanojson/JsonObject;

    move-result-object p1

    const-string v1, "appendContinuationItemsAction"

    invoke-virtual {p1, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p1

    const-string v1, "continuationItems"

    invoke-virtual {p1, v1}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Loxc;->P(Lqy9;Lcom/grack/nanojson/JsonArray;)V

    new-instance v1, Ltl5$a;

    invoke-virtual {p0, p1}, Loxc;->Q(Lcom/grack/nanojson/JsonArray;)Lorg/schabi/newpipe/extractor/Page;

    move-result-object p0

    invoke-direct {v1, v0, p0}, Ltl5$a;-><init>(Lyz4;Lorg/schabi/newpipe/extractor/Page;)V

    return-object v1

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Page doesn\'t contain an URL"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public v()Lorg/schabi/newpipe/extractor/stream/Description;
    .locals 2

    invoke-virtual {p0}, Loxc;->S()Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v0, "description"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcxc;->M(Lcom/grack/nanojson/JsonObject;Z)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Lorg/schabi/newpipe/extractor/stream/Description;

    invoke-direct {v1, p0, v0}, Lorg/schabi/newpipe/extractor/stream/Description;-><init>(Ljava/lang/String;I)V

    return-object v1
.end method

.method public w()Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo$PlaylistType;
    .locals 0

    invoke-virtual {p0}, Lmk3;->p()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcxc;->s(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo$PlaylistType;

    move-result-object p0

    return-object p0
.end method

.method public x()J
    .locals 3

    iget-boolean v0, p0, Loxc;->k:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Loxc;->R()Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v2, "numVideosText"

    invoke-virtual {v0, v2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    invoke-static {v0}, Lcxc;->L(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/utils/a;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    :cond_0
    invoke-virtual {p0}, Loxc;->R()Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v2, "byline"

    invoke-virtual {v0, v2}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonArray;->getObject(I)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v2, "text"

    invoke-virtual {v0, v2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    invoke-static {v0}, Lcxc;->L(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_1
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/utils/a;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    return-wide v0

    :catch_1
    :cond_1
    iget-boolean v0, p0, Loxc;->k:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Loxc;->R()Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Loxc;->S()Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    :goto_0
    const-string v2, "briefStats"

    invoke-virtual {v0, v2}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonArray;->getObject(I)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    invoke-static {v0}, Lcxc;->L(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {v0}, Lorg/schabi/newpipe/extractor/utils/a;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0

    :cond_3
    iget-boolean v0, p0, Loxc;->k:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Loxc;->R()Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Loxc;->S()Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    :goto_1
    const-string v0, "stats"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0, v1}, Lcom/grack/nanojson/JsonArray;->getObject(I)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    invoke-static {p0}, Lcxc;->L(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_5

    invoke-static {p0}, Lorg/schabi/newpipe/extractor/utils/a;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0

    :cond_5
    const-wide/16 v0, -0x1

    return-wide v0
.end method

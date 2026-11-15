.class public Lrvc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/schabi/newpipe/extractor/playlist/b;


# instance fields
.field public final a:Lcom/grack/nanojson/JsonObject;

.field public final b:Lcom/grack/nanojson/JsonObject;

.field public final c:Lcom/grack/nanojson/JsonObject;

.field public final d:Lcom/grack/nanojson/JsonObject;

.field public e:Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo$PlaylistType;


# direct methods
.method public constructor <init>(Lcom/grack/nanojson/JsonObject;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrvc;->a:Lcom/grack/nanojson/JsonObject;

    const-string v0, "contentImage"

    invoke-virtual {p1, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "collectionThumbnailViewModel"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "primaryThumbnail"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "thumbnailViewModel"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    iput-object v0, p0, Lrvc;->b:Lcom/grack/nanojson/JsonObject;

    const-string v0, "metadata"

    invoke-virtual {p1, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p1

    const-string v1, "lockupMetadataViewModel"

    invoke-virtual {p1, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p1

    iput-object p1, p0, Lrvc;->c:Lcom/grack/nanojson/JsonObject;

    invoke-virtual {p1, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p1

    const-string v0, "contentMetadataViewModel"

    invoke-virtual {p1, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p1

    const-string v0, "metadataRows"

    invoke-virtual {p1, v0}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/grack/nanojson/JsonArray;->getObject(I)Lcom/grack/nanojson/JsonObject;

    move-result-object p1

    iput-object p1, p0, Lrvc;->d:Lcom/grack/nanojson/JsonObject;

    :try_start_0
    invoke-virtual {p0}, Lrvc;->F()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcxc;->r(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo$PlaylistType;

    move-result-object p1

    iput-object p1, p0, Lrvc;->e:Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo$PlaylistType;
    :try_end_0
    .catch Lorg/schabi/newpipe/extractor/exceptions/ParsingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object p1, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo$PlaylistType;->NORMAL:Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo$PlaylistType;

    iput-object p1, p0, Lrvc;->e:Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo$PlaylistType;

    :goto_0
    return-void
.end method

.method public static synthetic B()Lorg/schabi/newpipe/extractor/exceptions/ParsingException;
    .locals 1

    invoke-static {}, Lrvc;->H()Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic C()Lorg/schabi/newpipe/extractor/exceptions/ParsingException;
    .locals 1

    invoke-static {}, Lrvc;->J()Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic D(Lcom/grack/nanojson/JsonObject;)Z
    .locals 0

    invoke-static {p0}, Lrvc;->G(Lcom/grack/nanojson/JsonObject;)Z

    move-result p0

    return p0
.end method

.method public static synthetic E(Lcom/grack/nanojson/JsonObject;)Z
    .locals 0

    invoke-static {p0}, Lrvc;->I(Lcom/grack/nanojson/JsonObject;)Z

    move-result p0

    return p0
.end method

.method public static synthetic G(Lcom/grack/nanojson/JsonObject;)Z
    .locals 1

    const-string v0, "thumbnailOverlayBadgeViewModel"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic H()Lorg/schabi/newpipe/extractor/exceptions/ParsingException;
    .locals 2

    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v1, "Could not get thumbnailOverlayBadgeViewModel"

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static synthetic I(Lcom/grack/nanojson/JsonObject;)Z
    .locals 1

    const-string v0, "thumbnailBadgeViewModel"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic J()Lorg/schabi/newpipe/extractor/exceptions/ParsingException;
    .locals 2

    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v1, "Could not get thumbnailBadgeViewModel"

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final F()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lrvc;->a:Lcom/grack/nanojson/JsonObject;

    const-string v1, "contentId"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/schabi/newpipe/extractor/utils/a;->m(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lrvc;->a:Lcom/grack/nanojson/JsonObject;

    const-string v0, "rendererContext"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v0, "commandContext"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v0, "watchEndpoint"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v0, "playlistId"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/utils/a;->m(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    return-object v0

    :cond_1
    new-instance p0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v0, "Could not get playlist ID"

    invoke-direct {p0, v0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public a()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lrvc;->e:Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo$PlaylistType;

    sget-object v1, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo$PlaylistType;->NORMAL:Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo$PlaylistType;

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lrvc;->d:Lcom/grack/nanojson/JsonObject;

    const-string v0, "metadataParts"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonArray;->getObject(I)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v1, "text"

    invoke-virtual {p0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v1, "commandRuns"

    invoke-virtual {p0, v1}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonArray;->getObject(I)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v0, "onTap"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v0, "innertubeCommand"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    invoke-static {p0}, Lcxc;->P(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lrvc;->d:Lcom/grack/nanojson/JsonObject;

    const-string v0, "metadataParts"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonArray;->getObject(I)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v0, "text"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v0, "content"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public c()Z
    .locals 3

    iget-object v0, p0, Lrvc;->e:Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo$PlaylistType;

    sget-object v1, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo$PlaylistType;->NORMAL:Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo$PlaylistType;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    iget-object p0, p0, Lrvc;->d:Lcom/grack/nanojson/JsonObject;

    const-string v0, "metadataParts"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/grack/nanojson/JsonArray;->getObject(I)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v0, "text"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v0, "attachmentRuns"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object p0

    invoke-static {p0}, Lcxc;->W(Lcom/grack/nanojson/JsonArray;)Z

    move-result p0

    return p0
.end method

.method public d()J
    .locals 3

    const-class v0, Lcom/grack/nanojson/JsonObject;

    iget-object v1, p0, Lrvc;->e:Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo$PlaylistType;

    sget-object v2, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo$PlaylistType;->NORMAL:Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo$PlaylistType;

    if-eq v1, v2, :cond_0

    const-wide/16 v0, -0x2

    return-wide v0

    :cond_0
    :try_start_0
    iget-object p0, p0, Lrvc;->b:Lcom/grack/nanojson/JsonObject;

    const-string v1, "overlays"

    invoke-virtual {p0, v1}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, Lw50;

    invoke-direct {v1, v0}, Lw50;-><init>(Ljava/lang/Class;)V

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, Lx50;

    invoke-direct {v1, v0}, Lx50;-><init>(Ljava/lang/Class;)V

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, Lnvc;

    invoke-direct {v1}, Lnvc;-><init>()V

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    new-instance v1, Lovc;

    invoke-direct {v1}, Lovc;-><init>()V

    invoke-virtual {p0, v1}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/grack/nanojson/JsonObject;

    const-string v1, "thumbnailOverlayBadgeViewModel"

    invoke-virtual {p0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v1, "thumbnailBadges"

    invoke-virtual {p0, v1}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, Lw50;

    invoke-direct {v1, v0}, Lw50;-><init>(Ljava/lang/Class;)V

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, Lx50;

    invoke-direct {v1, v0}, Lx50;-><init>(Ljava/lang/Class;)V

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lpvc;

    invoke-direct {v0}, Lpvc;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lqvc;

    invoke-direct {v0}, Lqvc;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/grack/nanojson/JsonObject;

    const-string v0, "thumbnailBadgeViewModel"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v0, "text"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/schabi/newpipe/extractor/utils/a;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception p0

    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v1, "Could not get playlist stream count"

    invoke-direct {v0, v1, p0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lrvc;->c:Lcom/grack/nanojson/JsonObject;

    const-string v0, "title"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v0, "content"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lrvc;->e:Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo$PlaylistType;

    sget-object v1, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo$PlaylistType;->NORMAL:Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo$PlaylistType;

    if-ne v0, v1, :cond_0

    :try_start_0
    invoke-static {}, Lqxc;->r()Lqxc;

    move-result-object v0

    invoke-virtual {p0}, Lrvc;->F()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lem5;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_0
    iget-object p0, p0, Lrvc;->a:Lcom/grack/nanojson/JsonObject;

    const-string v0, "rendererContext"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v0, "commandContext"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v0, "onTap"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v0, "innertubeCommand"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    invoke-static {p0}, Lcxc;->P(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public j()Ljava/util/List;
    .locals 1

    iget-object p0, p0, Lrvc;->b:Lcom/grack/nanojson/JsonObject;

    const-string v0, "image"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v0, "sources"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object p0

    invoke-static {p0}, Lcxc;->F(Lcom/grack/nanojson/JsonArray;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public o()Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo$PlaylistType;
    .locals 0

    iget-object p0, p0, Lrvc;->e:Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo$PlaylistType;

    return-object p0
.end method

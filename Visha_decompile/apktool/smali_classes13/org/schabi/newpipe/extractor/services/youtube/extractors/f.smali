.class public Lorg/schabi/newpipe/extractor/services/youtube/extractors/f;
.super Lorg/schabi/newpipe/extractor/stream/StreamExtractor;
.source "SourceFile"


# static fields
.field public static x:Z


# instance fields
.field public g:Lcom/grack/nanojson/JsonObject;

.field public h:Lcom/grack/nanojson/JsonObject;

.field public i:Lcom/grack/nanojson/JsonObject;

.field public j:Lcom/grack/nanojson/JsonObject;

.field public k:Lcom/grack/nanojson/JsonObject;

.field public l:Lcom/grack/nanojson/JsonObject;

.field public m:Lcom/grack/nanojson/JsonObject;

.field public n:Lcom/grack/nanojson/JsonObject;

.field public o:Lcom/grack/nanojson/JsonObject;

.field public p:I

.field public q:Lorg/schabi/newpipe/extractor/stream/StreamType;

.field public r:Ljava/lang/String;

.field public s:Ljava/lang/String;

.field public t:Ljava/lang/String;

.field public u:Ljava/lang/String;

.field public v:Ljava/lang/String;

.field public w:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/extractor/stream/StreamExtractor;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;)V

    const/4 p1, -0x1

    iput p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/f;->p:I

    return-void
.end method

.method public static G0(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "ManifestUrl"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/schabi/newpipe/extractor/utils/Pair;

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/utils/Pair;->getFirst()Ljava/io/Serializable;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/utils/Pair;->getFirst()Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/grack/nanojson/JsonObject;

    invoke-virtual {v1, p0}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/schabi/newpipe/extractor/utils/a;->m(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/utils/Pair;->getSecond()Ljava/io/Serializable;

    move-result-object p0

    if-nez p0, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "?"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/utils/Pair;->getSecond()Ljava/io/Serializable;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "?pot="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "&"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    const-string p0, ""

    return-object p0
.end method

.method public static O0(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Z
    .locals 1

    const-string v0, "videoDetails"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v0, "videoId"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static P0(Lcom/grack/nanojson/JsonObject;)Z
    .locals 2

    const-string v0, "status"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "login_required"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "reason"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "age"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic Q0(Lcom/grack/nanojson/JsonObject;)Ljava/util/stream/Stream;
    .locals 2

    const-string v0, "metadataRowRenderer"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v0, "contents"

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

    return-object p0
.end method

.method public static synthetic R0(Lcom/grack/nanojson/JsonObject;)Ljava/util/stream/Stream;
    .locals 2

    const-string v0, "runs"

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

    return-object p0
.end method

.method public static synthetic S0(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;
    .locals 2

    const-string v0, "text"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic T0(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "Age-restricted"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static synthetic W0(Ljava/util/List;Lorg/schabi/newpipe/extractor/stream/Stream;)V
    .locals 1

    invoke-static {p1, p0}, Lorg/schabi/newpipe/extractor/stream/Stream;->containSimilarStream(Lorg/schabi/newpipe/extractor/stream/Stream;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static synthetic X0(Lona;Lcom/grack/nanojson/JsonObject;)Lxz4;
    .locals 2

    const-string v0, "compactVideoRenderer"

    invoke-virtual {p1, v0}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lbzc;

    invoke-virtual {p1, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p1

    invoke-direct {v1, p1, p0}, Lbzc;-><init>(Lcom/grack/nanojson/JsonObject;Lona;)V

    return-object v1

    :cond_0
    const-string p0, "compactRadioRenderer"

    invoke-virtual {p1, p0}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lmvc;

    invoke-virtual {p1, p0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    invoke-direct {v0, p0}, Lmvc;-><init>(Lcom/grack/nanojson/JsonObject;)V

    return-object v0

    :cond_1
    const-string p0, "compactPlaylistRenderer"

    invoke-virtual {p1, p0}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lmvc;

    invoke-virtual {p1, p0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    invoke-direct {v0, p0}, Lmvc;-><init>(Lcom/grack/nanojson/JsonObject;)V

    return-object v0

    :cond_2
    const-string p0, "lockupViewModel"

    invoke-virtual {p1, p0}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1, p0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string p1, "contentType"

    invoke-virtual {p0, p1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "LOCKUP_CONTENT_TYPE_PLAYLIST"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    new-instance p1, Lrvc;

    invoke-direct {p1, p0}, Lrvc;-><init>(Lcom/grack/nanojson/JsonObject;)V

    return-object p1

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic Y0(Lcom/grack/nanojson/JsonObject;)Z
    .locals 1

    const-string v0, "engagementPanelSectionListRenderer"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v0, "panelIdentifier"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "engagement-panel-macro-markers-description-chapters"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic Z0(Lcom/grack/nanojson/JsonObject;)Lcom/grack/nanojson/JsonArray;
    .locals 1

    const-string v0, "engagementPanelSectionListRenderer"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v0, "content"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v0, "macroMarkersListRenderer"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v0, "contents"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a1(Lcom/grack/nanojson/JsonObject;)Lcom/grack/nanojson/JsonObject;
    .locals 1

    const-string v0, "macroMarkersListItemRenderer"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c1(Ljava/lang/String;Lcom/grack/nanojson/JsonObject;)Lcom/grack/nanojson/JsonObject;
    .locals 0

    invoke-virtual {p1, p0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d1(Ljava/lang/String;Lcom/grack/nanojson/JsonObject;)Z
    .locals 0

    invoke-virtual {p1, p0}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic e0(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/f;->T0(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic f0(Lorg/schabi/newpipe/extractor/services/youtube/extractors/f;ZLorg/schabi/newpipe/extractor/services/youtube/extractors/ItagInfo;)Lorg/schabi/newpipe/extractor/stream/VideoStream;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/f;->e1(ZLorg/schabi/newpipe/extractor/services/youtube/extractors/ItagInfo;)Lorg/schabi/newpipe/extractor/stream/VideoStream;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f1(Lcom/grack/nanojson/JsonObject;)Lcom/grack/nanojson/JsonObject;
    .locals 1

    const-string v0, "segmentedLikeDislikeButtonRenderer"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v0, "likeButton"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v0, "toggleButtonRenderer"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g0(Lorg/schabi/newpipe/extractor/services/youtube/extractors/f;Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/grack/nanojson/JsonObject;)Lorg/schabi/newpipe/extractor/services/youtube/extractors/ItagInfo;
    .locals 0

    invoke-virtual/range {p0 .. p5}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/f;->b1(Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/grack/nanojson/JsonObject;)Lorg/schabi/newpipe/extractor/services/youtube/extractors/ItagInfo;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g1(Lcom/grack/nanojson/JsonObject;)Z
    .locals 0

    invoke-static {p0}, Lorg/schabi/newpipe/extractor/utils/a;->o(Ljava/util/Map;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static synthetic h0(Lcom/grack/nanojson/JsonObject;)Lcom/grack/nanojson/JsonObject;
    .locals 0

    invoke-static {p0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/f;->h1(Lcom/grack/nanojson/JsonObject;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h1(Lcom/grack/nanojson/JsonObject;)Lcom/grack/nanojson/JsonObject;
    .locals 1

    const-string v0, "segmentedLikeDislikeButtonViewModel"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v0, "likeButtonViewModel"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v0, "toggleButtonViewModel"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v0, "defaultButtonViewModel"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v0, "buttonViewModel"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i0(Lorg/schabi/newpipe/extractor/services/youtube/extractors/f;Lorg/schabi/newpipe/extractor/services/youtube/extractors/ItagInfo;)Lorg/schabi/newpipe/extractor/stream/AudioStream;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/f;->U0(Lorg/schabi/newpipe/extractor/services/youtube/extractors/ItagInfo;)Lorg/schabi/newpipe/extractor/stream/AudioStream;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i1(Lcom/grack/nanojson/JsonObject;)Z
    .locals 0

    invoke-static {p0}, Lorg/schabi/newpipe/extractor/utils/a;->o(Ljava/util/Map;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static synthetic j0(Lorg/schabi/newpipe/extractor/services/youtube/extractors/f;Ljava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/utils/Pair;)Ljava/util/stream/Stream;
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/f;->V0(Ljava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/utils/Pair;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static j1(Lcom/grack/nanojson/JsonArray;)J
    .locals 4

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

    new-instance v0, Lcyc;

    invoke-direct {v0}, Lcyc;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Ldyc;

    invoke-direct {v0}, Ldyc;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/grack/nanojson/JsonObject;

    if-eqz p0, :cond_2

    const-string v0, "accessibilityData"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v1

    const-string v2, "label"

    invoke-virtual {v1, v2}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "accessibility"

    if-nez v1, :cond_0

    invoke-virtual {p0, v3}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    if-nez v1, :cond_1

    const-string v1, "defaultText"

    invoke-virtual {p0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    move-object v0, p0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string v1, "no likes"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_2
    if-eqz v0, :cond_3

    :try_start_0
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/utils/a;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception p0

    new-instance v1, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not parse \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\" as a long"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_3
    new-instance p0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v0, "Could not get like count from accessibility data"

    invoke-direct {p0, v0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic k0(Lcom/grack/nanojson/JsonObject;)Lcom/grack/nanojson/JsonArray;
    .locals 0

    invoke-static {p0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/f;->Z0(Lcom/grack/nanojson/JsonObject;)Lcom/grack/nanojson/JsonArray;

    move-result-object p0

    return-object p0
.end method

.method public static k1(Lcom/grack/nanojson/JsonArray;)J
    .locals 4

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

    new-instance v0, Layc;

    invoke-direct {v0}, Layc;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lbyc;

    invoke-direct {v0}, Lbyc;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/grack/nanojson/JsonObject;

    if-eqz p0, :cond_1

    const-string v0, "accessibilityText"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/utils/a;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not parse \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\" as a long"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    new-instance p0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v0, "Could not find buttonViewModel\'s accessibilityText string"

    invoke-direct {p0, v0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v0, "Could not find buttonViewModel object"

    invoke-direct {p0, v0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic l0(Ljava/lang/String;Lcom/grack/nanojson/JsonObject;)Z
    .locals 0

    invoke-static {p0, p1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/f;->d1(Ljava/lang/String;Lcom/grack/nanojson/JsonObject;)Z

    move-result p0

    return p0
.end method

.method public static synthetic m0(Lcom/grack/nanojson/JsonObject;)Z
    .locals 0

    invoke-static {p0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/f;->i1(Lcom/grack/nanojson/JsonObject;)Z

    move-result p0

    return p0
.end method

.method public static m1(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/f;->O0(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string p1, "playabilityStatus"

    invoke-virtual {p0, p1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    invoke-static {p0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/f;->y0(Lcom/grack/nanojson/JsonObject;)V

    new-instance p0, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;

    const-string p1, "WEB player response is not valid"

    invoke-direct {p0, p1}, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic n0(Lcom/grack/nanojson/JsonObject;)Ljava/util/stream/Stream;
    .locals 0

    invoke-static {p0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/f;->Q0(Lcom/grack/nanojson/JsonObject;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic o0(Lcom/grack/nanojson/JsonObject;)Z
    .locals 0

    invoke-static {p0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/f;->Y0(Lcom/grack/nanojson/JsonObject;)Z

    move-result p0

    return p0
.end method

.method public static synthetic p0(Lcom/grack/nanojson/JsonObject;)Lcom/grack/nanojson/JsonObject;
    .locals 0

    invoke-static {p0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/f;->f1(Lcom/grack/nanojson/JsonObject;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic q0(Lcom/grack/nanojson/JsonObject;)Lcom/grack/nanojson/JsonObject;
    .locals 0

    invoke-static {p0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/f;->a1(Lcom/grack/nanojson/JsonObject;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic r0(Lcom/grack/nanojson/JsonObject;)Ljava/util/stream/Stream;
    .locals 0

    invoke-static {p0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/f;->R0(Lcom/grack/nanojson/JsonObject;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic s0(Ljava/util/List;Lorg/schabi/newpipe/extractor/stream/Stream;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/f;->W0(Ljava/util/List;Lorg/schabi/newpipe/extractor/stream/Stream;)V

    return-void
.end method

.method public static synthetic t0(Ljava/lang/String;Lcom/grack/nanojson/JsonObject;)Lcom/grack/nanojson/JsonObject;
    .locals 0

    invoke-static {p0, p1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/f;->c1(Ljava/lang/String;Lcom/grack/nanojson/JsonObject;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic u0(Lcom/grack/nanojson/JsonObject;)Z
    .locals 0

    invoke-static {p0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/f;->g1(Lcom/grack/nanojson/JsonObject;)Z

    move-result p0

    return p0
.end method

.method public static synthetic v0(Lona;Lcom/grack/nanojson/JsonObject;)Lxz4;
    .locals 0

    invoke-static {p0, p1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/f;->X0(Lona;Lcom/grack/nanojson/JsonObject;)Lxz4;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic w0(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/f;->S0(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static y0(Lcom/grack/nanojson/JsonObject;)V
    .locals 5

    const-string v0, "status"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    const-string v1, "ok"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_1

    :cond_0
    const-string v1, "reason"

    invoke-virtual {p0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "login_required"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "This age-restricted video cannot be watched anonymously"

    if-eqz v2, :cond_4

    if-nez v1, :cond_2

    const-string v2, "messages"

    invoke-virtual {p0, v2}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/grack/nanojson/JsonArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    const-string v4, "private"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Lorg/schabi/newpipe/extractor/exceptions/PrivateContentException;

    const-string v0, "This video is private"

    invoke-direct {p0, v0}, Lorg/schabi/newpipe/extractor/exceptions/PrivateContentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    const-string v2, "age"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    new-instance p0, Lorg/schabi/newpipe/extractor/exceptions/AgeRestrictedContentException;

    invoke-direct {p0, v3}, Lorg/schabi/newpipe/extractor/exceptions/AgeRestrictedContentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_0
    const-string v2, "unplayable"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "error"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_5
    if-eqz v1, :cond_b

    const-string v0, "Music Premium"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "payment"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "members-only"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "unavailable"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "errorScreen"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v0, "playerErrorMessageRenderer"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v0, "subreason"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    invoke-static {p0}, Lcxc;->L(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_6

    const-string v0, "country"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance p0, Lorg/schabi/newpipe/extractor/exceptions/GeographicRestrictionException;

    const-string v0, "This video is not available in client\'s country."

    invoke-direct {p0, v0}, Lorg/schabi/newpipe/extractor/exceptions/GeographicRestrictionException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ContentNotAvailableException;

    invoke-static {p0, v1}, Lgvc;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/extractor/exceptions/ContentNotAvailableException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    const-string p0, "age-restricted"

    invoke-virtual {v1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_b

    new-instance p0, Lorg/schabi/newpipe/extractor/exceptions/AgeRestrictedContentException;

    invoke-direct {p0, v3}, Lorg/schabi/newpipe/extractor/exceptions/AgeRestrictedContentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    new-instance p0, Lorg/schabi/newpipe/extractor/exceptions/PaidContentException;

    const-string v0, "This video is only available for members of the channel of this video"

    invoke-direct {p0, v0}, Lorg/schabi/newpipe/extractor/exceptions/PaidContentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    new-instance p0, Lorg/schabi/newpipe/extractor/exceptions/PaidContentException;

    const-string v0, "This video is a paid video"

    invoke-direct {p0, v0}, Lorg/schabi/newpipe/extractor/exceptions/PaidContentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    new-instance p0, Lorg/schabi/newpipe/extractor/exceptions/YoutubeMusicPremiumContentException;

    invoke-direct {p0}, Lorg/schabi/newpipe/extractor/exceptions/YoutubeMusicPremiumContentException;-><init>()V

    throw p0

    :cond_b
    new-instance p0, Lorg/schabi/newpipe/extractor/exceptions/ContentNotAvailableException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got error: \""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/schabi/newpipe/extractor/exceptions/ContentNotAvailableException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c
    :goto_1
    return-void
.end method


# virtual methods
.method public final A0(Lorg/schabi/newpipe/extractor/localization/Localization;Lorg/schabi/newpipe/extractor/localization/ContentCountry;Ljava/lang/String;Lec8;Z)V
    .locals 3

    invoke-static {}, Lcxc;->w()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/f;->t:Ljava/lang/String;

    if-eqz p5, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p4, p3}, Lec8;->a(Ljava/lang/String;)Lfc8;

    :goto_0
    invoke-static {p1, p2, p3}, Lxyc;->h(Lorg/schabi/newpipe/extractor/localization/Localization;Lorg/schabi/newpipe/extractor/localization/ContentCountry;Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    invoke-static {v0, p3}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/f;->m1(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/f;->g:Lcom/grack/nanojson/JsonObject;

    const-string v1, "microformat"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v1

    const-string v2, "playerMicroformatRenderer"

    invoke-virtual {v1, v2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v1

    iput-object v1, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/f;->n:Lcom/grack/nanojson/JsonObject;

    const-string v1, "playabilityStatus"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    invoke-static {v0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/f;->P0(Lcom/grack/nanojson/JsonObject;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p5, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p4, p3}, Lec8;->b(Ljava/lang/String;)Lfc8;

    :goto_1
    const/4 p4, 0x0

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/f;->B0(Lorg/schabi/newpipe/extractor/localization/Localization;Lorg/schabi/newpipe/extractor/localization/ContentCountry;Ljava/lang/String;Lfc8;)V

    goto :goto_2

    :cond_2
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/f;->y0(Lcom/grack/nanojson/JsonObject;)V

    iget-object p4, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/f;->t:Ljava/lang/String;

    invoke-static {p3}, Lhvc;->c(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result p5

    invoke-static {p1, p2, p3, p4, p5}, Lxyc;->f(Lorg/schabi/newpipe/extractor/localization/Localization;Lorg/schabi/newpipe/extractor/localization/ContentCountry;Ljava/lang/String;Ljava/lang/String;I)Lcom/grack/nanojson/JsonObject;

    move-result-object p1

    invoke-static {p1, p3}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/f;->O0(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_3

    const-string p2, "streamingData"

    invoke-virtual {p1, p2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p2

    iput-object p2, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/f;->k:Lcom/grack/nanojson/JsonObject;

    const-string p2, "captions"

    invoke-virtual {p1, p2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p1

    const-string p2, "playerCaptionsTracklistRenderer"

    invoke-virtual {p1, p2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p1

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/f;->o:Lcom/grack/nanojson/JsonObject;

    :goto_2
    return-void

    :cond_3
    new-instance p0, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;

    const-string p1, "TVHTML5 player response is not valid"

    invoke-direct {p0, p1}, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public B()Ljava/util/Locale;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final B0(Lorg/schabi/newpipe/extractor/localization/Localization;Lorg/schabi/newpipe/extractor/localization/ContentCountry;Ljava/lang/String;Lfc8;)V
    .locals 6

    invoke-static {}, Lcxc;->w()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/f;->t:Ljava/lang/String;

    invoke-static {p3}, Lhvc;->c(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lxyc;->g(Lorg/schabi/newpipe/extractor/localization/Localization;Lorg/schabi/newpipe/extractor/localization/ContentCountry;Ljava/lang/String;Ljava/lang/String;Lfc8;I)Lcom/grack/nanojson/JsonObject;

    move-result-object p1

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/f;->g:Lcom/grack/nanojson/JsonObject;

    const-string p2, "playabilityStatus"

    invoke-virtual {p1, p2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p2

    invoke-static {p2}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/f;->y0(Lcom/grack/nanojson/JsonObject;)V

    invoke-static {p1, p3}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/f;->O0(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "streamingData"

    invoke-virtual {p1, p2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p2

    iput-object p2, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/f;->k:Lcom/grack/nanojson/JsonObject;

    const-string p2, "captions"

    invoke-virtual {p1, p2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p1

    const-string p2, "playerCaptionsTracklistRenderer"

    invoke-virtual {p1, p2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p1

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/f;->o:Lcom/grack/nanojson/JsonObject;

    return-void

    :cond_0
    new-instance p0, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;

    const-string p1, "WEB_EMBEDDED_PLAYER player response is not valid"

    invoke-direct {p0, p1}, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public C()J
    .locals 3

    invoke-virtual {p0}, Lmk3;->a()V

    :try_start_0
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/f;->g:Lcom/grack/nanojson/JsonObject;

    const-string v1, "videoDetails"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "lengthSeconds"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/f;->k:Lcom/grack/nanojson/JsonObject;

    iget-object v1, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/f;->j:Lcom/grack/nanojson/JsonObject;

    iget-object v2, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/f;->i:Lcom/grack/nanojson/JsonObject;

    filled-new-array {v0, v1, v2}, [Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/f;->E0(Ljava/util/List;)I

    move-result p0

    int-to-long v0, p0

    return-wide v0
.end method

.method public final C0(Lorg/schabi/newpipe/extractor/localization/Localization;Lorg/schabi/newpipe/extractor/localization/ContentCountry;Ljava/lang/String;Lfc8;)V
    .locals 1

    :try_start_0
    invoke-static {}, Lcxc;->w()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/f;->r:Ljava/lang/String;

    invoke-static {p2, p1, p3, v0, p4}, Lxyc;->d(Lorg/schabi/newpipe/extractor/localization/ContentCountry;Lorg/schabi/newpipe/extractor/localization/Localization;Ljava/lang/String;Ljava/lang/String;Lfc8;)Lcom/grack/nanojson/JsonObject;

    move-result-object p1

    invoke-static {p1, p3}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/f;->O0(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "streamingData"

    invoke-virtual {p1, p2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p2

    iput-object p2, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/f;->i:Lcom/grack/nanojson/JsonObject;

    iget-object p2, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/f;->o:Lcom/grack/nanojson/JsonObject;

    invoke-static {p2}, Lorg/schabi/newpipe/extractor/utils/a;->o(Ljava/util/Map;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "captions"

    invoke-virtual {p1, p2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p1

    const-string p2, "playerCaptionsTracklistRenderer"

    invoke-virtual {p1, p2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p1

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/f;->o:Lcom/grack/nanojson/JsonObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public D()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/f;->M0()Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v0, "metadataRowContainer"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v0, "metadataRowContainerRenderer"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v0, "rows"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonArray;->getObject(I)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v1, "metadataRowRenderer"

    invoke-virtual {p0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v1, "contents"

    invoke-virtual {p0, v1}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/grack/nanojson/JsonArray;->getObject(I)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    invoke-static {v0}, Lcxc;->L(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "title"

    invoke-virtual {p0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    invoke-static {p0}, Lcxc;->L(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Licence"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "YouTube licence"

    :goto_0
    return-object v0
.end method

.method public final D0()Ljava/util/function/Function;
    .locals 1

    new-instance v0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/e;

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/e;-><init>(Lorg/schabi/newpipe/extractor/services/youtube/extractors/f;)V

    return-object v0
.end method

.method public E()J
    .locals 2

    invoke-virtual {p0}, Lmk3;->a()V

    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/f;->g:Lcom/grack/nanojson/JsonObject;

    const-string v1, "videoDetails"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "allowRatings"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/f;->L0()Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v0, "videoActions"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v0, "menuRenderer"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v0, "topLevelButtons"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object p0

    :try_start_0
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/f;->k1(Lcom/grack/nanojson/JsonArray;)J

    move-result-wide v0
    :try_end_0
    .catch Lorg/schabi/newpipe/extractor/exceptions/ParsingException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    :try_start_1
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/f;->j1(Lcom/grack/nanojson/JsonArray;)J

    move-result-wide v0
    :try_end_1
    .catch Lorg/schabi/newpipe/extractor/exceptions/ParsingException; {:try_start_1 .. :try_end_1} :catch_1

    return-wide v0

    :catch_1
    move-exception p0

    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v1, "Could not get like count"

    invoke-direct {v0, v1, p0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final E0(Ljava/util/List;)I
    .locals 2

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :catch_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/grack/nanojson/JsonObject;

    const-string v0, "adaptiveFormats"

    invoke-virtual {p1, v0}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/grack/nanojson/JsonArray;->getObject(I)Lcom/grack/nanojson/JsonObject;

    move-result-object p1

    const-string v0, "approxDurationMs"

    invoke-virtual {p1, v0}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    long-to-float p1, v0

    const/high16 v0, 0x447a0000    # 1000.0f

    div-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :cond_1
    new-instance p0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string p1, "Could not get duration"

    invoke-direct {p0, p1}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public F()Ljava/util/List;
    .locals 2

    iget-object p0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/f;->h:Lcom/grack/nanojson/JsonObject;

    const-string v0, "contents"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v1, "twoColumnWatchNextResults"

    invoke-virtual {p0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v1, "results"

    invoke-virtual {p0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object p0

    invoke-static {p0}, Llvc;->f(Lcom/grack/nanojson/JsonArray;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final F0(Ljava/lang/String;Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Ljava/util/function/Function;Ljava/lang/String;)Ljava/util/List;
    .locals 9

    :try_start_0
    invoke-virtual {p0}, Lmk3;->i()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lorg/schabi/newpipe/extractor/utils/Pair;

    iget-object v3, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/f;->k:Lcom/grack/nanojson/JsonObject;

    new-instance v4, Lorg/schabi/newpipe/extractor/utils/Pair;

    iget-object v5, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/f;->t:Ljava/lang/String;

    iget-object v6, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/f;->u:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Lorg/schabi/newpipe/extractor/utils/Pair;-><init>(Ljava/io/Serializable;Ljava/io/Serializable;)V

    invoke-direct {v2, v3, v4}, Lorg/schabi/newpipe/extractor/utils/Pair;-><init>(Ljava/io/Serializable;Ljava/io/Serializable;)V

    new-instance v3, Lorg/schabi/newpipe/extractor/utils/Pair;

    iget-object v4, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/f;->j:Lcom/grack/nanojson/JsonObject;

    new-instance v5, Lorg/schabi/newpipe/extractor/utils/Pair;

    iget-object v6, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/f;->s:Ljava/lang/String;

    iget-object v7, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/f;->v:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Lorg/schabi/newpipe/extractor/utils/Pair;-><init>(Ljava/io/Serializable;Ljava/io/Serializable;)V

    invoke-direct {v3, v4, v5}, Lorg/schabi/newpipe/extractor/utils/Pair;-><init>(Ljava/io/Serializable;Ljava/io/Serializable;)V

    new-instance v4, Lorg/schabi/newpipe/extractor/utils/Pair;

    iget-object v5, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/f;->i:Lcom/grack/nanojson/JsonObject;

    new-instance v6, Lorg/schabi/newpipe/extractor/utils/Pair;

    iget-object v7, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/f;->r:Ljava/lang/String;

    iget-object v8, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/f;->w:Ljava/lang/String;

    invoke-direct {v6, v7, v8}, Lorg/schabi/newpipe/extractor/utils/Pair;-><init>(Ljava/io/Serializable;Ljava/io/Serializable;)V

    invoke-direct {v4, v5, v6}, Lorg/schabi/newpipe/extractor/utils/Pair;-><init>(Ljava/io/Serializable;Ljava/io/Serializable;)V

    filled-new-array {v2, v3, v4}, [Lorg/schabi/newpipe/extractor/utils/Pair;

    move-result-object v2

    invoke-static {v2}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lhyc;

    invoke-direct {v3, p0, v0, p1, p2}, Lhyc;-><init>(Lorg/schabi/newpipe/extractor/services/youtube/extractors/f;Ljava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0, p3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Liyc;

    invoke-direct {p1, v1}, Liyc;-><init>(Ljava/util/List;)V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->forEachOrdered(Ljava/util/function/Consumer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    new-instance p1, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Could not get "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " streams"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public G()Lorg/schabi/newpipe/extractor/stream/StreamExtractor$Privacy;
    .locals 1

    iget-object p0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/f;->n:Lcom/grack/nanojson/JsonObject;

    const-string v0, "isUnlisted"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lorg/schabi/newpipe/extractor/stream/StreamExtractor$Privacy;->UNLISTED:Lorg/schabi/newpipe/extractor/stream/StreamExtractor$Privacy;

    goto :goto_0

    :cond_0
    sget-object p0, Lorg/schabi/newpipe/extractor/stream/StreamExtractor$Privacy;->PUBLIC:Lorg/schabi/newpipe/extractor/stream/StreamExtractor$Privacy;

    :goto_0
    return-object p0
.end method

.method public bridge synthetic H()Lyz4;
    .locals 0

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/f;->H0()Lls6;

    move-result-object p0

    return-object p0
.end method

.method public H0()Lls6;
    .locals 5

    const-class v0, Lcom/grack/nanojson/JsonObject;

    const-string v1, "secondaryResults"

    invoke-virtual {p0}, Lmk3;->a()V

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/f;->r()I

    move-result v2

    if-eqz v2, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    :try_start_0
    new-instance v2, Lls6;

    invoke-virtual {p0}, Lmk3;->n()I

    move-result v3

    invoke-direct {v2, v3}, Lls6;-><init>(I)V

    iget-object v3, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/f;->h:Lcom/grack/nanojson/JsonObject;

    const-string v4, "contents"

    invoke-virtual {v3, v4}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v3

    const-string v4, "twoColumnWatchNextResults"

    invoke-virtual {v3, v4}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v1

    const-string v3, "results"

    invoke-virtual {v1, v3}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v1

    invoke-virtual {p0}, Lmk3;->o()Lona;

    move-result-object p0

    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v3, Lw50;

    invoke-direct {v3, v0}, Lw50;-><init>(Ljava/lang/Class;)V

    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v3, Lx50;

    invoke-direct {v3, v0}, Lx50;-><init>(Ljava/lang/Class;)V

    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Leyc;

    invoke-direct {v1, p0}, Leyc;-><init>(Lona;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lfyc;

    invoke-direct {v0}, Lfyc;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lgyc;

    invoke-direct {v0, v2}, Lgyc;-><init>(Lls6;)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception p0

    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v1, "Could not get related videos"

    invoke-direct {v0, v1, p0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public I()Ljava/util/List;
    .locals 9

    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/f;->h:Lcom/grack/nanojson/JsonObject;

    const-string v1, "engagementPanels"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/f;->h:Lcom/grack/nanojson/JsonObject;

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

    new-instance v1, Lmyc;

    invoke-direct {v1}, Lmyc;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lnyc;

    invoke-direct {v1}, Lnyc;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grack/nanojson/JsonArray;

    if-nez v0, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/f;->C()J

    move-result-wide v3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v5, Lw50;

    invoke-direct {v5, v2}, Lw50;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, v5}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v5, Lx50;

    invoke-direct {v5, v2}, Lx50;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, v5}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Loyc;

    invoke-direct {v2}, Loyc;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/grack/nanojson/JsonObject;

    const-string v5, "onTap"

    invoke-virtual {v2, v5}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v5

    const-string v6, "watchEndpoint"

    invoke-virtual {v5, v6}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v5

    const-string v6, "startTimeSeconds"

    const/4 v7, -0x1

    invoke-virtual {v5, v6, v7}, Lcom/grack/nanojson/JsonObject;->getInt(Ljava/lang/String;I)I

    move-result v5

    if-eq v5, v7, :cond_5

    int-to-long v6, v5

    cmp-long v6, v6, v3

    if-lez v6, :cond_2

    goto :goto_1

    :cond_2
    const-string v6, "title"

    invoke-virtual {v2, v6}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v6

    invoke-static {v6}, Lcxc;->L(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/schabi/newpipe/extractor/utils/a;->m(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    new-instance v7, Lorg/schabi/newpipe/extractor/stream/StreamSegment;

    invoke-direct {v7, v6, v5}, Lorg/schabi/newpipe/extractor/stream/StreamSegment;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lmk3;->p()Ljava/lang/String;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "?t="

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Lorg/schabi/newpipe/extractor/stream/StreamSegment;->setUrl(Ljava/lang/String;)V

    const-string v5, "thumbnail"

    invoke-virtual {v2, v5}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v2, v5}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v2

    const-string v5, "thumbnails"

    invoke-virtual {v2, v5}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v2, v5}, Lcom/grack/nanojson/JsonArray;->getObject(I)Lcom/grack/nanojson/JsonObject;

    move-result-object v2

    const-string v5, "url"

    invoke-virtual {v2, v5}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcxc;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Lorg/schabi/newpipe/extractor/stream/StreamSegment;->setPreviewUrl(Ljava/lang/String;)V

    :cond_3
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_4
    new-instance p0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v0, "Could not get stream segment title."

    invoke-direct {p0, v0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v0, "Could not get stream segment start time."

    invoke-direct {p0, v0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    :goto_1
    return-object v1
.end method

.method public final I0(Ljava/lang/String;Lcom/grack/nanojson/JsonObject;Ljava/lang/String;Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Ljava/lang/String;Ljava/lang/String;)Ljava/util/stream/Stream;
    .locals 6

    if-eqz p2, :cond_1

    invoke-virtual {p2, p3}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2, p3}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance p3, Lw50;

    const-class v0, Lcom/grack/nanojson/JsonObject;

    invoke-direct {p3, v0}, Lw50;-><init>(Ljava/lang/Class;)V

    invoke-interface {p2, p3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance p3, Lx50;

    invoke-direct {p3, v0}, Lx50;-><init>(Ljava/lang/Class;)V

    invoke-interface {p2, p3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance p3, Lkyc;

    move-object v0, p3

    move-object v1, p0

    move-object v2, p4

    move-object v3, p1

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lkyc;-><init>(Lorg/schabi/newpipe/extractor/services/youtube/extractors/f;Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, p3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lorg/schabi/newpipe/extractor/services/youtube/extractors/d;

    invoke-direct {p1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/d;-><init>()V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    invoke-static {}, Ljava/util/stream/Stream;->empty()Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public J()Lorg/schabi/newpipe/extractor/stream/StreamType;
    .locals 0

    invoke-virtual {p0}, Lmk3;->a()V

    iget-object p0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/f;->q:Lorg/schabi/newpipe/extractor/stream/StreamType;

    return-object p0
.end method

.method public J0(Lorg/schabi/newpipe/extractor/MediaFormat;)Ljava/util/List;
    .locals 8

    invoke-virtual {p0}, Lmk3;->a()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/f;->o:Lcom/grack/nanojson/JsonObject;

    const-string v1, "captionTracks"

    invoke-virtual {p0, v1}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Lcom/grack/nanojson/JsonArray;->getObject(I)Lcom/grack/nanojson/JsonObject;

    move-result-object v2

    const-string v3, "languageCode"

    invoke-virtual {v2, v3}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1}, Lcom/grack/nanojson/JsonArray;->getObject(I)Lcom/grack/nanojson/JsonObject;

    move-result-object v3

    const-string v4, "baseUrl"

    invoke-virtual {v3, v4}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1}, Lcom/grack/nanojson/JsonArray;->getObject(I)Lcom/grack/nanojson/JsonObject;

    move-result-object v4

    const-string v5, "vssId"

    invoke-virtual {v4, v5}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    if-eqz v4, :cond_0

    const-string v5, "a."

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    const-string v5, "&fmt=[^&]*"

    const-string v6, ""

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "&tlang=[^&]*"

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lorg/schabi/newpipe/extractor/stream/SubtitlesStream$a;

    invoke-direct {v5}, Lorg/schabi/newpipe/extractor/stream/SubtitlesStream$a;-><init>()V

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/MediaFormat;->getSuffix()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "&fmt="

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x1

    invoke-virtual {v5, v3, v6}, Lorg/schabi/newpipe/extractor/stream/SubtitlesStream$a;->c(Ljava/lang/String;Z)Lorg/schabi/newpipe/extractor/stream/SubtitlesStream$a;

    move-result-object v3

    invoke-virtual {v3, p1}, Lorg/schabi/newpipe/extractor/stream/SubtitlesStream$a;->e(Lorg/schabi/newpipe/extractor/MediaFormat;)Lorg/schabi/newpipe/extractor/stream/SubtitlesStream$a;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/schabi/newpipe/extractor/stream/SubtitlesStream$a;->d(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/stream/SubtitlesStream$a;

    move-result-object v2

    invoke-virtual {v2, v4}, Lorg/schabi/newpipe/extractor/stream/SubtitlesStream$a;->b(Z)Lorg/schabi/newpipe/extractor/stream/SubtitlesStream$a;

    move-result-object v2

    invoke-virtual {v2}, Lorg/schabi/newpipe/extractor/stream/SubtitlesStream$a;->a()Lorg/schabi/newpipe/extractor/stream/SubtitlesStream;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final K0(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;
    .locals 2

    iget-object p0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/f;->h:Lcom/grack/nanojson/JsonObject;

    const-string v0, "contents"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v1, "twoColumnWatchNextResults"

    invoke-virtual {p0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v1, "results"

    invoke-virtual {p0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

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

    new-instance v0, Lzxc;

    invoke-direct {v0, p1}, Lzxc;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Ljyc;

    invoke-direct {v0, p1}, Ljyc;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    new-instance p1, Lcom/grack/nanojson/JsonObject;

    invoke-direct {p1}, Lcom/grack/nanojson/JsonObject;-><init>()V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/grack/nanojson/JsonObject;

    return-object p0
.end method

.method public final L0()Lcom/grack/nanojson/JsonObject;
    .locals 1

    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/f;->l:Lcom/grack/nanojson/JsonObject;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "videoPrimaryInfoRenderer"

    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/f;->K0(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    iput-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/f;->l:Lcom/grack/nanojson/JsonObject;

    return-object v0
.end method

.method public final M0()Lcom/grack/nanojson/JsonObject;
    .locals 1

    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/f;->m:Lcom/grack/nanojson/JsonObject;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "videoSecondaryInfoRenderer"

    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/f;->K0(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    iput-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/f;->m:Lcom/grack/nanojson/JsonObject;

    return-object v0
.end method

.method public N()Ljava/util/List;
    .locals 1

    sget-object v0, Lorg/schabi/newpipe/extractor/MediaFormat;->TTML:Lorg/schabi/newpipe/extractor/MediaFormat;

    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/f;->J0(Lorg/schabi/newpipe/extractor/MediaFormat;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final N0(Z)Ljava/util/function/Function;
    .locals 1

    new-instance v0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/c;

    invoke-direct {v0, p0, p1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/c;-><init>(Lorg/schabi/newpipe/extractor/services/youtube/extractors/f;Z)V

    return-object v0
.end method

.method public P()Ljava/util/List;
    .locals 1

    iget-object p0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/f;->g:Lcom/grack/nanojson/JsonObject;

    const-string v0, "videoDetails"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v0, "keywords"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object p0

    invoke-static {p0}, Loc5;->i(Lcom/grack/nanojson/JsonArray;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public Q()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/f;->n:Lcom/grack/nanojson/JsonObject;

    const-string v1, "uploadDate"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/f;->n:Lcom/grack/nanojson/JsonObject;

    invoke-virtual {p0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/f;->n:Lcom/grack/nanojson/JsonObject;

    const-string v1, "publishDate"

    invoke-virtual {v0, v1, v2}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/f;->n:Lcom/grack/nanojson/JsonObject;

    invoke-virtual {p0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/f;->n:Lcom/grack/nanojson/JsonObject;

    const-string v1, "liveBroadcastDetails"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "endTimestamp"

    invoke-virtual {v0, v1, v2}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const-string v1, "startTimestamp"

    invoke-virtual {v0, v1, v2}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/f;->J()Lorg/schabi/newpipe/extractor/stream/StreamType;

    move-result-object v0

    sget-object v1, Lorg/schabi/newpipe/extractor/stream/StreamType;->LIVE_STREAM:Lorg/schabi/newpipe/extractor/stream/StreamType;

    if-ne v0, v1, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/f;->L0()Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v0, "dateText"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    invoke-static {p0}, Lcxc;->L(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Could not get upload date"

    if-eqz p0, :cond_6

    const-string v1, "Premiered"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "dd MMM yyyy"

    if-eqz v1, :cond_5

    const/16 v1, 0xd

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :try_start_0
    new-instance v3, Lorg/schabi/newpipe/extractor/localization/Localization;

    const-string v4, "en"

    invoke-direct {v3, v4}, Lorg/schabi/newpipe/extractor/localization/Localization;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lpna;->b(Lorg/schabi/newpipe/extractor/localization/Localization;)Lona;

    move-result-object v3

    invoke-virtual {v3, v1}, Lona;->a(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/localization/DateWrapper;

    move-result-object v3

    invoke-virtual {v3}, Lorg/schabi/newpipe/extractor/localization/DateWrapper;->offsetDateTime()Ljava/time/OffsetDateTime;

    move-result-object v3

    sget-object v4, Ljava/time/format/DateTimeFormatter;->ISO_LOCAL_DATE:Ljava/time/format/DateTimeFormatter;

    invoke-virtual {v4, v3}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :try_start_1
    const-string v3, "MMM dd, yyyy"

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v3, v4}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;Ljava/util/Locale;)Ljava/time/format/DateTimeFormatter;

    move-result-object v3

    invoke-static {v1, v3}, Ljava/time/LocalDate;->parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDate;

    move-result-object v3

    sget-object v4, Ljava/time/format/DateTimeFormatter;->ISO_LOCAL_DATE:Ljava/time/format/DateTimeFormatter;

    invoke-virtual {v4, v3}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_1
    :try_start_2
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v2, v3}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;Ljava/util/Locale;)Ljava/time/format/DateTimeFormatter;

    move-result-object v3

    invoke-static {v1, v3}, Ljava/time/LocalDate;->parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDate;

    move-result-object v1

    sget-object v3, Ljava/time/format/DateTimeFormatter;->ISO_LOCAL_DATE:Ljava/time/format/DateTimeFormatter;

    invoke-virtual {v3, v1}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    return-object p0

    :catch_2
    :cond_5
    :try_start_3
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v2, v1}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;Ljava/util/Locale;)Ljava/time/format/DateTimeFormatter;

    move-result-object v1

    invoke-static {p0, v1}, Ljava/time/LocalDate;->parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDate;

    move-result-object p0

    sget-object v1, Ljava/time/format/DateTimeFormatter;->ISO_LOCAL_DATE:Ljava/time/format/DateTimeFormatter;

    invoke-virtual {v1, p0}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object p0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    return-object p0

    :catch_3
    move-exception p0

    new-instance v1, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    invoke-direct {v1, v0, p0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_6
    new-instance p0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    invoke-direct {p0, v0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public R()Ljava/util/List;
    .locals 1

    invoke-virtual {p0}, Lmk3;->a()V

    :try_start_0
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/f;->g:Lcom/grack/nanojson/JsonObject;

    const-string v0, "videoDetails"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

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
    new-instance p0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v0, "Could not get thumbnails"

    invoke-direct {p0, v0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public S()J
    .locals 4

    const-string v0, "((#|&|\\?)t=\\d*h?\\d*m?\\d+s?)"

    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/stream/StreamExtractor;->T(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, -0x2

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :cond_0
    return-wide v0
.end method

.method public U()Lorg/schabi/newpipe/extractor/localization/DateWrapper;
    .locals 2

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/f;->Q()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/schabi/newpipe/extractor/utils/a;->m(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lorg/schabi/newpipe/extractor/localization/DateWrapper;

    invoke-static {p0}, Lcxc;->w0(Ljava/lang/String;)Ljava/time/OffsetDateTime;

    move-result-object p0

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lorg/schabi/newpipe/extractor/localization/DateWrapper;-><init>(Ljava/time/OffsetDateTime;Z)V

    return-object v0
.end method

.method public final synthetic U0(Lorg/schabi/newpipe/extractor/services/youtube/extractors/ItagInfo;)Lorg/schabi/newpipe/extractor/stream/AudioStream;
    .locals 4

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/ItagInfo;->getItagItem()Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/extractor/stream/AudioStream$a;

    invoke-direct {v1}, Lorg/schabi/newpipe/extractor/stream/AudioStream$a;-><init>()V

    iget v2, v0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->id:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/schabi/newpipe/extractor/stream/AudioStream$a;->i(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/stream/AudioStream$a;

    move-result-object v1

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/ItagInfo;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/ItagInfo;->getIsUrl()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/schabi/newpipe/extractor/stream/AudioStream$a;->g(Ljava/lang/String;Z)Lorg/schabi/newpipe/extractor/stream/AudioStream$a;

    move-result-object v1

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->getMediaFormat()Lorg/schabi/newpipe/extractor/MediaFormat;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/schabi/newpipe/extractor/stream/AudioStream$a;->l(Lorg/schabi/newpipe/extractor/MediaFormat;)Lorg/schabi/newpipe/extractor/stream/AudioStream$a;

    move-result-object v1

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->getAverageBitrate()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/schabi/newpipe/extractor/stream/AudioStream$a;->f(I)Lorg/schabi/newpipe/extractor/stream/AudioStream$a;

    move-result-object v1

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->getAudioTrackId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/schabi/newpipe/extractor/stream/AudioStream$a;->c(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/stream/AudioStream$a;

    move-result-object v1

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->getAudioTrackName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/schabi/newpipe/extractor/stream/AudioStream$a;->d(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/stream/AudioStream$a;

    move-result-object v1

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->getAudioLocale()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/schabi/newpipe/extractor/stream/AudioStream$a;->b(Ljava/util/Locale;)Lorg/schabi/newpipe/extractor/stream/AudioStream$a;

    move-result-object v1

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->getAudioTrackType()Lorg/schabi/newpipe/extractor/stream/AudioTrackType;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/schabi/newpipe/extractor/stream/AudioStream$a;->e(Lorg/schabi/newpipe/extractor/stream/AudioTrackType;)Lorg/schabi/newpipe/extractor/stream/AudioStream$a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/schabi/newpipe/extractor/stream/AudioStream$a;->j(Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;)Lorg/schabi/newpipe/extractor/stream/AudioStream$a;

    move-result-object v0

    iget-object p0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/f;->q:Lorg/schabi/newpipe/extractor/stream/StreamType;

    sget-object v1, Lorg/schabi/newpipe/extractor/stream/StreamType;->LIVE_STREAM:Lorg/schabi/newpipe/extractor/stream/StreamType;

    if-eq p0, v1, :cond_0

    sget-object v1, Lorg/schabi/newpipe/extractor/stream/StreamType;->POST_LIVE_STREAM:Lorg/schabi/newpipe/extractor/stream/StreamType;

    if-eq p0, v1, :cond_0

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/ItagInfo;->getIsUrl()Z

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    sget-object p0, Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;->DASH:Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;

    invoke-virtual {v0, p0}, Lorg/schabi/newpipe/extractor/stream/AudioStream$a;->h(Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;)Lorg/schabi/newpipe/extractor/stream/AudioStream$a;

    :cond_1
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/stream/AudioStream$a;->a()Lorg/schabi/newpipe/extractor/stream/AudioStream;

    move-result-object p0

    return-object p0
.end method

.method public V()Ljava/util/List;
    .locals 2

    invoke-virtual {p0}, Lmk3;->a()V

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/f;->M0()Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "owner"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "videoOwnerRenderer"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "thumbnail"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "thumbnails"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v0

    invoke-static {v0}, Lcxc;->F(Lcom/grack/nanojson/JsonArray;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    iget p0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/f;->p:I

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v0, "Could not get uploader avatars"

    invoke-direct {p0, v0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public final synthetic V0(Ljava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/utils/Pair;)Ljava/util/stream/Stream;
    .locals 8

    invoke-virtual {p4}, Lorg/schabi/newpipe/extractor/utils/Pair;->getFirst()Ljava/io/Serializable;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/grack/nanojson/JsonObject;

    invoke-virtual {p4}, Lorg/schabi/newpipe/extractor/utils/Pair;->getSecond()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lorg/schabi/newpipe/extractor/utils/Pair;

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/utils/Pair;->getFirst()Ljava/io/Serializable;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/lang/String;

    invoke-virtual {p4}, Lorg/schabi/newpipe/extractor/utils/Pair;->getSecond()Ljava/io/Serializable;

    move-result-object p4

    check-cast p4, Lorg/schabi/newpipe/extractor/utils/Pair;

    invoke-virtual {p4}, Lorg/schabi/newpipe/extractor/utils/Pair;->getSecond()Ljava/io/Serializable;

    move-result-object p4

    move-object v7, p4

    check-cast v7, Ljava/lang/String;

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v1 .. v7}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/f;->I0(Ljava/lang/String;Lcom/grack/nanojson/JsonObject;Ljava/lang/String;Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Ljava/lang/String;Ljava/lang/String;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public W()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lmk3;->a()V

    iget-object p0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/f;->g:Lcom/grack/nanojson/JsonObject;

    const-string v0, "videoDetails"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v0, "author"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/schabi/newpipe/extractor/utils/a;->m(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v0, "Could not get uploader name"

    invoke-direct {p0, v0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public X()J
    .locals 2

    iget-object p0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/f;->m:Lcom/grack/nanojson/JsonObject;

    const-string v0, "owner.videoOwnerRenderer"

    invoke-static {p0, v0}, Loc5;->f(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v0, "subscriberCountText"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    :cond_0
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

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

    const-string v1, "Could not get uploader subscriber count"

    invoke-direct {v0, v1, p0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public Y()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lmk3;->a()V

    iget-object p0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/f;->g:Lcom/grack/nanojson/JsonObject;

    const-string v0, "videoDetails"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v0, "channelId"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/schabi/newpipe/extractor/utils/a;->m(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lrtc;->r()Lrtc;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "channel/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lem5;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v0, "Could not get uploader url"

    invoke-direct {p0, v0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public Z()Ljava/util/List;
    .locals 4

    invoke-virtual {p0}, Lmk3;->a()V

    sget-object v0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;->VIDEO_ONLY:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/f;->N0(Z)Ljava/util/function/Function;

    move-result-object v1

    const-string v2, "video-only"

    const-string v3, "adaptiveFormats"

    invoke-virtual {p0, v3, v0, v1, v2}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/f;->F0(Ljava/lang/String;Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Ljava/util/function/Function;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public a0()Ljava/util/List;
    .locals 4

    invoke-virtual {p0}, Lmk3;->a()V

    sget-object v0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;->VIDEO:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/f;->N0(Z)Ljava/util/function/Function;

    move-result-object v1

    const-string v2, "video"

    const-string v3, "formats"

    invoke-virtual {p0, v3, v0, v1, v2}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/f;->F0(Ljava/lang/String;Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Ljava/util/function/Function;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public b0()J
    .locals 3

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/f;->L0()Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "viewCount"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v2, "videoViewCountRenderer"

    invoke-virtual {v0, v2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    invoke-static {v0}, Lcxc;->L(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/schabi/newpipe/extractor/utils/a;->m(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object p0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/f;->g:Lcom/grack/nanojson/JsonObject;

    const-string v0, "videoDetails"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/schabi/newpipe/extractor/utils/a;->m(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v0, "Could not get view count"

    invoke-direct {p0, v0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string v1, "no views"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_2
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/utils/a;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final synthetic b1(Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/grack/nanojson/JsonObject;)Lorg/schabi/newpipe/extractor/services/youtube/extractors/ItagInfo;
    .locals 8

    :try_start_0
    const-string v0, "itag"

    invoke-virtual {p5, v0}, Lcom/grack/nanojson/JsonObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->getItag(I)Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    move-result-object v4

    iget-object v5, v4, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->itagType:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    if-ne v5, p1, :cond_0

    move-object v1, p0

    move-object v2, p2

    move-object v3, p5

    move-object v6, p3

    move-object v7, p4

    invoke-virtual/range {v1 .. v7}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/f;->x0(Ljava/lang/String;Lcom/grack/nanojson/JsonObject;Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Ljava/lang/String;Ljava/lang/String;)Lorg/schabi/newpipe/extractor/services/youtube/extractors/ItagInfo;

    move-result-object p0
    :try_end_0
    .catch Lorg/schabi/newpipe/extractor/exceptions/ExtractionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public d0()Z
    .locals 1

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/f;->M0()Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v0, "owner"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v0, "videoOwnerRenderer"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v0, "badges"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object p0

    invoke-static {p0}, Lcxc;->d0(Lcom/grack/nanojson/JsonArray;)Z

    move-result p0

    return p0
.end method

.method public final synthetic e1(ZLorg/schabi/newpipe/extractor/services/youtube/extractors/ItagInfo;)Lorg/schabi/newpipe/extractor/stream/VideoStream;
    .locals 4

    invoke-virtual {p2}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/ItagInfo;->getItagItem()Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/extractor/stream/VideoStream$a;

    invoke-direct {v1}, Lorg/schabi/newpipe/extractor/stream/VideoStream$a;-><init>()V

    iget v2, v0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->id:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/schabi/newpipe/extractor/stream/VideoStream$a;->d(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/stream/VideoStream$a;

    move-result-object v1

    invoke-virtual {p2}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/ItagInfo;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/ItagInfo;->getIsUrl()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/schabi/newpipe/extractor/stream/VideoStream$a;->b(Ljava/lang/String;Z)Lorg/schabi/newpipe/extractor/stream/VideoStream$a;

    move-result-object v1

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->getMediaFormat()Lorg/schabi/newpipe/extractor/MediaFormat;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/schabi/newpipe/extractor/stream/VideoStream$a;->h(Lorg/schabi/newpipe/extractor/MediaFormat;)Lorg/schabi/newpipe/extractor/stream/VideoStream$a;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/schabi/newpipe/extractor/stream/VideoStream$a;->e(Z)Lorg/schabi/newpipe/extractor/stream/VideoStream$a;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/schabi/newpipe/extractor/stream/VideoStream$a;->f(Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;)Lorg/schabi/newpipe/extractor/stream/VideoStream$a;

    move-result-object p1

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->getResolutionString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    invoke-virtual {p1, v0}, Lorg/schabi/newpipe/extractor/stream/VideoStream$a;->i(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/stream/VideoStream$a;

    iget-object p0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/f;->q:Lorg/schabi/newpipe/extractor/stream/StreamType;

    sget-object v0, Lorg/schabi/newpipe/extractor/stream/StreamType;->VIDEO_STREAM:Lorg/schabi/newpipe/extractor/stream/StreamType;

    if-ne p0, v0, :cond_1

    invoke-virtual {p2}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/ItagInfo;->getIsUrl()Z

    move-result p0

    if-nez p0, :cond_2

    :cond_1
    sget-object p0, Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;->DASH:Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;

    invoke-virtual {p1, p0}, Lorg/schabi/newpipe/extractor/stream/VideoStream$a;->c(Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;)Lorg/schabi/newpipe/extractor/stream/VideoStream$a;

    :cond_2
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/VideoStream$a;->a()Lorg/schabi/newpipe/extractor/stream/VideoStream;

    move-result-object p0

    return-object p0
.end method

.method public k()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lmk3;->a()V

    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/f;->g:Lcom/grack/nanojson/JsonObject;

    const-string v1, "videoDetails"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "title"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/schabi/newpipe/extractor/utils/a;->m(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/f;->L0()Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    invoke-static {p0}, Lcxc;->L(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/schabi/newpipe/extractor/utils/a;->m(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v0, "Could not get name"

    invoke-direct {p0, v0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public final l1()V
    .locals 3

    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/f;->g:Lcom/grack/nanojson/JsonObject;

    const-string v1, "playabilityStatus"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "liveStreamability"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/schabi/newpipe/extractor/stream/StreamType;->LIVE_STREAM:Lorg/schabi/newpipe/extractor/stream/StreamType;

    iput-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/f;->q:Lorg/schabi/newpipe/extractor/stream/StreamType;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/f;->g:Lcom/grack/nanojson/JsonObject;

    const-string v1, "videoDetails"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v2, "isPostLiveDvr"

    invoke-virtual {v0, v2, v1}, Lcom/grack/nanojson/JsonObject;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lorg/schabi/newpipe/extractor/stream/StreamType;->POST_LIVE_STREAM:Lorg/schabi/newpipe/extractor/stream/StreamType;

    iput-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/f;->q:Lorg/schabi/newpipe/extractor/stream/StreamType;

    goto :goto_0

    :cond_1
    sget-object v0, Lorg/schabi/newpipe/extractor/stream/StreamType;->VIDEO_STREAM:Lorg/schabi/newpipe/extractor/stream/StreamType;

    iput-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/f;->q:Lorg/schabi/newpipe/extractor/stream/StreamType;

    :goto_0
    return-void
.end method

.method public q(Lc23;)V
    .locals 8

    invoke-virtual {p0}, Lmk3;->i()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lmk3;->h()Lorg/schabi/newpipe/extractor/localization/Localization;

    move-result-object v6

    invoke-virtual {p0}, Lmk3;->g()Lorg/schabi/newpipe/extractor/localization/ContentCountry;

    move-result-object v7

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, v6

    move-object v2, v7

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/f;->A0(Lorg/schabi/newpipe/extractor/localization/Localization;Lorg/schabi/newpipe/extractor/localization/ContentCountry;Ljava/lang/String;Lec8;Z)V

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/f;->l1()V

    const/4 v0, 0x0

    invoke-virtual {p0, v6, v7, p1, v0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/f;->z0(Lorg/schabi/newpipe/extractor/localization/Localization;Lorg/schabi/newpipe/extractor/localization/ContentCountry;Ljava/lang/String;Lfc8;)V

    sget-boolean v1, Lorg/schabi/newpipe/extractor/services/youtube/extractors/f;->x:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0, v6, v7, p1, v0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/f;->C0(Lorg/schabi/newpipe/extractor/localization/Localization;Lorg/schabi/newpipe/extractor/localization/ContentCountry;Ljava/lang/String;Lfc8;)V

    :cond_0
    invoke-static {v6, v7}, Lcxc;->y0(Lorg/schabi/newpipe/extractor/localization/Localization;Lorg/schabi/newpipe/extractor/localization/ContentCountry;)Laa5;

    move-result-object v0

    const-string v1, "videoId"

    invoke-virtual {v0, v1, p1}, Laa5;->h(Ljava/lang/String;Ljava/lang/String;)Laa5;

    move-result-object p1

    const-string v0, "contentCheckOk"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Laa5;->i(Ljava/lang/String;Z)Laa5;

    move-result-object p1

    const-string v0, "racyCheckOk"

    invoke-virtual {p1, v0, v1}, Laa5;->i(Ljava/lang/String;Z)Laa5;

    move-result-object p1

    invoke-virtual {p1}, Laa5;->b()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ltc5;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const-string v0, "next"

    invoke-static {v0, p1, v6}, Lcxc;->I(Ljava/lang/String;[BLorg/schabi/newpipe/extractor/localization/Localization;)Lcom/grack/nanojson/JsonObject;

    move-result-object p1

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/f;->h:Lcom/grack/nanojson/JsonObject;

    return-void
.end method

.method public r()I
    .locals 3

    iget v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/f;->p:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/f;->M0()Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "metadataRowContainer"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "metadataRowContainerRenderer"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "rows"

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

    new-instance v1, Lpyc;

    invoke-direct {v1}, Lpyc;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lqyc;

    invoke-direct {v1}, Lqyc;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lryc;

    invoke-direct {v1}, Lryc;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lsyc;

    invoke-direct {v1}, Lsyc;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x12

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/f;->p:I

    return v0
.end method

.method public s()Ljava/util/List;
    .locals 4

    invoke-virtual {p0}, Lmk3;->a()V

    sget-object v0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;->AUDIO:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/f;->D0()Ljava/util/function/Function;

    move-result-object v1

    const-string v2, "audio"

    const-string v3, "adaptiveFormats"

    invoke-virtual {p0, v3, v0, v1, v2}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/f;->F0(Ljava/lang/String;Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Ljava/util/function/Function;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public t()Ljava/lang/String;
    .locals 2

    iget-object p0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/f;->n:Lcom/grack/nanojson/JsonObject;

    const-string v0, "category"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public u()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lmk3;->a()V

    new-instance v0, Lorg/schabi/newpipe/extractor/utils/Pair;

    iget-object v1, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/f;->j:Lcom/grack/nanojson/JsonObject;

    iget-object v2, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/f;->v:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lorg/schabi/newpipe/extractor/utils/Pair;-><init>(Ljava/io/Serializable;Ljava/io/Serializable;)V

    new-instance v1, Lorg/schabi/newpipe/extractor/utils/Pair;

    iget-object v2, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/f;->k:Lcom/grack/nanojson/JsonObject;

    iget-object p0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/f;->u:Ljava/lang/String;

    invoke-direct {v1, v2, p0}, Lorg/schabi/newpipe/extractor/utils/Pair;-><init>(Ljava/io/Serializable;Ljava/io/Serializable;)V

    filled-new-array {v0, v1}, [Lorg/schabi/newpipe/extractor/utils/Pair;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    const-string v0, "mpd_version=7"

    const-string v1, "dash"

    invoke-static {v1, p0, v0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/f;->G0(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public v()Lorg/schabi/newpipe/extractor/stream/Description;
    .locals 4

    invoke-virtual {p0}, Lmk3;->a()V

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/f;->M0()Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "description"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcxc;->M(Lcom/grack/nanojson/JsonObject;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/schabi/newpipe/extractor/utils/a;->m(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance p0, Lorg/schabi/newpipe/extractor/stream/Description;

    invoke-direct {p0, v0, v2}, Lorg/schabi/newpipe/extractor/stream/Description;-><init>(Ljava/lang/String;I)V

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/f;->M0()Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v3, "attributedDescription"

    invoke-virtual {v0, v3}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    invoke-static {v0}, Lbvc;->i(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/schabi/newpipe/extractor/utils/a;->m(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    new-instance p0, Lorg/schabi/newpipe/extractor/stream/Description;

    invoke-direct {p0, v0, v2}, Lorg/schabi/newpipe/extractor/stream/Description;-><init>(Ljava/lang/String;I)V

    return-object p0

    :cond_1
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/f;->g:Lcom/grack/nanojson/JsonObject;

    const-string v2, "videoDetails"

    invoke-virtual {v0, v2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v2, "shortDescription"

    invoke-virtual {v0, v2}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object p0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/f;->n:Lcom/grack/nanojson/JsonObject;

    invoke-virtual {p0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    invoke-static {p0}, Lcxc;->L(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    new-instance p0, Lorg/schabi/newpipe/extractor/stream/Description;

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lorg/schabi/newpipe/extractor/stream/Description;-><init>(Ljava/lang/String;I)V

    return-object p0
.end method

.method public x()Ljava/lang/String;
    .locals 1

    :try_start_0
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/f;->g:Lcom/grack/nanojson/JsonObject;

    const-string v0, "playabilityStatus"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v0, "errorScreen"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v0, "playerErrorMessageRenderer"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v0, "reason"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    invoke-static {p0}, Lcxc;->L(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final x0(Ljava/lang/String;Lcom/grack/nanojson/JsonObject;Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Ljava/lang/String;Ljava/lang/String;)Lorg/schabi/newpipe/extractor/services/youtube/extractors/ItagInfo;
    .locals 6

    const-string v0, "url"

    invoke-virtual {p2, v0}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_0

    invoke-virtual {p2, v0}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v1, "signatureCipher"

    invoke-virtual {p2, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "cipher"

    invoke-virtual {p2, v3, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/schabi/newpipe/extractor/utils/Parser;->f(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    const-string v3, "s"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {p1, v3}, Lhvc;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v4, "sp"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {p1, v0}, Lhvc;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&cpn="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p6, :cond_1

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&pot="

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    const-string p5, "initRange"

    invoke-virtual {p2, p5}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p5

    const-string p6, "indexRange"

    invoke-virtual {p2, p6}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p6

    const-string v0, "mimeType"

    invoke-virtual {p2, v0, v2}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "codecs"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v3

    goto :goto_1

    :cond_2
    move-object v0, v2

    :goto_1
    const-string v1, "bitrate"

    invoke-virtual {p2, v1}, Lcom/grack/nanojson/JsonObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p3, v1}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->setBitrate(I)V

    const-string v1, "width"

    invoke-virtual {p2, v1}, Lcom/grack/nanojson/JsonObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p3, v1}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->setWidth(I)V

    const-string v1, "height"

    invoke-virtual {p2, v1}, Lcom/grack/nanojson/JsonObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p3, v1}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->setHeight(I)V

    const-string v1, "start"

    const-string v4, "-1"

    invoke-virtual {p5, v1, v4}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p3, v5}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->setInitStart(I)V

    const-string v5, "end"

    invoke-virtual {p5, v5, v4}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    invoke-static {p5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p5

    invoke-virtual {p3, p5}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->setInitEnd(I)V

    invoke-virtual {p6, v1, v4}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    invoke-static {p5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p5

    invoke-virtual {p3, p5}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->setIndexStart(I)V

    invoke-virtual {p6, v5, v4}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    invoke-static {p5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p5

    invoke-virtual {p3, p5}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->setIndexEnd(I)V

    const-string p5, "quality"

    invoke-virtual {p2, p5}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p3, p5}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->setQuality(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->setCodec(Ljava/lang/String;)V

    iget-object p5, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/f;->q:Lorg/schabi/newpipe/extractor/stream/StreamType;

    sget-object p6, Lorg/schabi/newpipe/extractor/stream/StreamType;->LIVE_STREAM:Lorg/schabi/newpipe/extractor/stream/StreamType;

    if-eq p5, p6, :cond_3

    sget-object p6, Lorg/schabi/newpipe/extractor/stream/StreamType;->POST_LIVE_STREAM:Lorg/schabi/newpipe/extractor/stream/StreamType;

    if-ne p5, p6, :cond_4

    :cond_3
    const-string p5, "targetDurationSec"

    invoke-virtual {p2, p5}, Lcom/grack/nanojson/JsonObject;->getInt(Ljava/lang/String;)I

    move-result p5

    invoke-virtual {p3, p5}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->setTargetDurationSec(I)V

    :cond_4
    sget-object p5, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;->VIDEO:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    const/4 p6, 0x0

    if-eq p4, p5, :cond_8

    sget-object p5, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;->VIDEO_ONLY:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    if-ne p4, p5, :cond_5

    goto :goto_2

    :cond_5
    sget-object p5, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;->AUDIO:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    if-ne p4, p5, :cond_9

    const-string p4, "audioSampleRate"

    invoke-virtual {p2, p4}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p4

    invoke-virtual {p3, p4}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->setSampleRate(I)V

    const-string p4, "audioChannels"

    const/4 p5, 0x2

    invoke-virtual {p2, p4, p5}, Lcom/grack/nanojson/JsonObject;->getInt(Ljava/lang/String;I)I

    move-result p4

    invoke-virtual {p3, p4}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->setAudioChannels(I)V

    const-string p4, "audioTrack"

    invoke-virtual {p2, p4}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p5

    const-string v0, "id"

    invoke-virtual {p5, v0}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    invoke-static {p5}, Lorg/schabi/newpipe/extractor/utils/a;->m(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p3, p5}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->setAudioTrackId(Ljava/lang/String;)V

    const-string v0, "."

    invoke-virtual {p5, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    invoke-virtual {p5, p6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p5

    invoke-static {p5}, Lun5;->a(Ljava/lang/String;)Ljava/util/Optional;

    move-result-object p5

    new-instance v0, Llyc;

    invoke-direct {v0, p3}, Llyc;-><init>(Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;)V

    invoke-virtual {p5, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_6
    invoke-static {p1}, Lcxc;->m(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/stream/AudioTrackType;

    move-result-object p5

    invoke-virtual {p3, p5}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->setAudioTrackType(Lorg/schabi/newpipe/extractor/stream/AudioTrackType;)V

    :cond_7
    invoke-virtual {p2, p4}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p4

    const-string p5, "displayName"

    invoke-virtual {p4, p5}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->setAudioTrackName(Ljava/lang/String;)V

    goto :goto_3

    :cond_8
    :goto_2
    const-string p4, "fps"

    invoke-virtual {p2, p4}, Lcom/grack/nanojson/JsonObject;->getInt(Ljava/lang/String;)I

    move-result p4

    invoke-virtual {p3, p4}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->setFps(I)V

    :cond_9
    :goto_3
    const-string p4, "contentLength"

    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p2, p4, p5}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p4

    invoke-virtual {p3, p4, p5}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->setContentLength(J)V

    const-string p4, "approxDurationMs"

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p2, p4, p5}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p4

    invoke-virtual {p3, p4, p5}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->setApproxDurationMs(J)V

    new-instance p4, Lorg/schabi/newpipe/extractor/services/youtube/extractors/ItagInfo;

    invoke-direct {p4, p1, p3}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/ItagInfo;-><init>(Ljava/lang/String;Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;)V

    iget-object p0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/f;->q:Lorg/schabi/newpipe/extractor/stream/StreamType;

    sget-object p1, Lorg/schabi/newpipe/extractor/stream/StreamType;->VIDEO_STREAM:Lorg/schabi/newpipe/extractor/stream/StreamType;

    if-ne p0, p1, :cond_a

    const-string p0, "type"

    invoke-virtual {p2, p0, v2}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "FORMAT_STREAM_TYPE_OTF"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    xor-int/2addr p0, v3

    invoke-virtual {p4, p0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/ItagInfo;->setIsUrl(Z)V

    goto :goto_5

    :cond_a
    sget-object p1, Lorg/schabi/newpipe/extractor/stream/StreamType;->POST_LIVE_STREAM:Lorg/schabi/newpipe/extractor/stream/StreamType;

    if-eq p0, p1, :cond_b

    goto :goto_4

    :cond_b
    move v3, p6

    :goto_4
    invoke-virtual {p4, v3}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/ItagInfo;->setIsUrl(Z)V

    :goto_5
    return-object p4
.end method

.method public y()Ljava/util/List;
    .locals 18

    const-string v0, "$M"

    const-string v1, "playerLiveStoryboardSpecRenderer"

    move-object/from16 v2, p0

    :try_start_0
    iget-object v2, v2, Lorg/schabi/newpipe/extractor/services/youtube/extractors/f;->g:Lcom/grack/nanojson/JsonObject;

    const-string v3, "storyboards"

    invoke-virtual {v2, v3}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "playerStoryboardSpecRenderer"

    :goto_0
    invoke-virtual {v2, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    goto/16 :goto_4

    :cond_1
    const-string v2, "spec"

    invoke-virtual {v1, v2}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_2
    const-string v2, "\\|"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v3, v1, v2

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, v1

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    move v5, v6

    :goto_1
    array-length v7, v1

    if-ge v5, v7, :cond_7

    aget-object v7, v1, v5

    const-string v8, "#"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    array-length v8, v7

    const/16 v9, 0x8

    if-ne v8, v9, :cond_6

    const/4 v8, 0x5

    aget-object v9, v7, v8

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_3

    goto/16 :goto_3

    :cond_3
    const/4 v9, 0x2

    aget-object v9, v7, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    const/4 v9, 0x3

    aget-object v9, v7, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    const/4 v9, 0x4

    aget-object v9, v7, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    const-string v9, "$L"

    add-int/lit8 v10, v5, -0x1

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "$N"

    const/4 v11, 0x6

    aget-object v11, v7, v11

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x7

    aget-object v10, v7, v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "&sigh="

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_4

    int-to-double v10, v14

    mul-int v12, v16, v17

    int-to-double v12, v12

    div-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v10, v10

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11, v10}, Ljava/util/ArrayList;-><init>(I)V

    move v12, v2

    :goto_2
    if-ge v12, v10, :cond_5

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v0, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v11, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_4
    invoke-static {v9}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    move-object v11, v9

    :cond_5
    new-instance v9, Lorg/schabi/newpipe/extractor/stream/Frameset;

    aget-object v10, v7, v2

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    aget-object v10, v7, v6

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    aget-object v7, v7, v8

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    move-object v10, v9

    invoke-direct/range {v10 .. v17}, Lorg/schabi/newpipe/extractor/stream/Frameset;-><init>(Ljava/util/List;IIIIII)V

    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    :cond_7
    return-object v4

    :goto_4
    new-instance v1, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;

    const-string v2, "Could not get frames"

    invoke-direct {v1, v2, v0}, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public z()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lmk3;->a()V

    new-instance v0, Lorg/schabi/newpipe/extractor/utils/Pair;

    iget-object v1, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/f;->i:Lcom/grack/nanojson/JsonObject;

    iget-object v2, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/f;->w:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lorg/schabi/newpipe/extractor/utils/Pair;-><init>(Ljava/io/Serializable;Ljava/io/Serializable;)V

    new-instance v1, Lorg/schabi/newpipe/extractor/utils/Pair;

    iget-object v2, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/f;->j:Lcom/grack/nanojson/JsonObject;

    iget-object v3, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/f;->v:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/schabi/newpipe/extractor/utils/Pair;-><init>(Ljava/io/Serializable;Ljava/io/Serializable;)V

    new-instance v2, Lorg/schabi/newpipe/extractor/utils/Pair;

    iget-object v3, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/f;->k:Lcom/grack/nanojson/JsonObject;

    iget-object p0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/f;->u:Ljava/lang/String;

    invoke-direct {v2, v3, p0}, Lorg/schabi/newpipe/extractor/utils/Pair;-><init>(Ljava/io/Serializable;Ljava/io/Serializable;)V

    filled-new-array {v0, v1, v2}, [Lorg/schabi/newpipe/extractor/utils/Pair;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    const-string v0, ""

    const-string v1, "hls"

    invoke-static {v1, p0, v0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/f;->G0(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final z0(Lorg/schabi/newpipe/extractor/localization/Localization;Lorg/schabi/newpipe/extractor/localization/ContentCountry;Ljava/lang/String;Lfc8;)V
    .locals 0

    :try_start_0
    invoke-static {}, Lcxc;->w()Ljava/lang/String;

    move-result-object p4

    iput-object p4, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/f;->s:Ljava/lang/String;

    invoke-static {p2, p1, p3, p4}, Lxyc;->c(Lorg/schabi/newpipe/extractor/localization/ContentCountry;Lorg/schabi/newpipe/extractor/localization/Localization;Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p1

    invoke-static {p1, p3}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/f;->O0(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "streamingData"

    invoke-virtual {p1, p2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p2

    iput-object p2, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/f;->j:Lcom/grack/nanojson/JsonObject;

    iget-object p2, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/f;->o:Lcom/grack/nanojson/JsonObject;

    invoke-static {p2}, Lorg/schabi/newpipe/extractor/utils/a;->o(Ljava/util/Map;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "captions"

    invoke-virtual {p1, p2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p1

    const-string p2, "playerCaptionsTracklistRenderer"

    invoke-virtual {p1, p2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p1

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/f;->o:Lcom/grack/nanojson/JsonObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

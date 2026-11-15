.class public Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor;
.super Lfu0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor$h;,
        Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor$VerifiedStatus;,
        Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor$g;
    }
.end annotation


# instance fields
.field public g:Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader;

.field public h:Lcom/grack/nanojson/JsonObject;

.field public i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lfu0;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)V

    return-void
.end method

.method public static synthetic A(Lcom/grack/nanojson/JsonObject;)Z
    .locals 0

    invoke-static {p0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor;->X(Lcom/grack/nanojson/JsonObject;)Z

    move-result p0

    return p0
.end method

.method public static synthetic B(Ljava/util/Optional;)Ljava/util/Optional;
    .locals 0

    invoke-static {p0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor;->Q(Ljava/util/Optional;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic C(Lcom/grack/nanojson/JsonObject;)Z
    .locals 0

    invoke-static {p0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor;->S(Lcom/grack/nanojson/JsonObject;)Z

    move-result p0

    return p0
.end method

.method public static I(Lls6;Lcom/grack/nanojson/JsonObject;Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor$VerifiedStatus;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor$a;

    invoke-direct {v0, p1, p3, p4, p2}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor$a;-><init>(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor$VerifiedStatus;)V

    invoke-virtual {p0, v0}, Lyz4;->d(Lxz4;)V

    return-void
.end method

.method public static J(Lls6;Lcom/grack/nanojson/JsonObject;Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor$VerifiedStatus;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor$b;

    invoke-direct {v0, p1, p3, p4, p2}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor$b;-><init>(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor$VerifiedStatus;)V

    invoke-virtual {p0, v0}, Lyz4;->d(Lxz4;)V

    return-void
.end method

.method public static synthetic Q(Ljava/util/Optional;)Ljava/util/Optional;
    .locals 0

    return-object p0
.end method

.method public static synthetic R(Ljava/util/Optional;Ljava/util/Optional;)Ljava/util/Optional;
    .locals 1

    new-instance v0, Lutc;

    invoke-direct {v0, p1}, Lutc;-><init>(Ljava/util/Optional;)V

    invoke-static {p0, v0}, Lbtc;->a(Ljava/util/Optional;Ljava/util/function/Supplier;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic S(Lcom/grack/nanojson/JsonObject;)Z
    .locals 1

    const-string v0, "appendContinuationItemsAction"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic T(Lcom/grack/nanojson/JsonObject;)Lcom/grack/nanojson/JsonObject;
    .locals 1

    const-string v0, "appendContinuationItemsAction"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic U(Lcom/grack/nanojson/JsonObject;)Z
    .locals 1

    const-string v0, "tabRenderer"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic V(Lcom/grack/nanojson/JsonObject;)Lcom/grack/nanojson/JsonObject;
    .locals 1

    const-string v0, "tabRenderer"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic W(Ljava/lang/String;Lcom/grack/nanojson/JsonObject;)Z
    .locals 2

    const-string v0, "endpoint"

    invoke-virtual {p1, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p1

    const-string v0, "commandMetadata"

    invoke-virtual {p1, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p1

    const-string v0, "webCommandMetadata"

    invoke-virtual {p1, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p1

    const-string v0, "url"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic X(Lcom/grack/nanojson/JsonObject;)Z
    .locals 3

    const-string v0, "content"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v0, "sectionListRenderer"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v0, "contents"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/grack/nanojson/JsonArray;->getObject(I)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v2, "itemSectionRenderer"

    invoke-virtual {p0, v2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/grack/nanojson/JsonArray;->getObject(I)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v0, "messageRenderer"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    move v1, v2

    :cond_1
    return v1
.end method

.method public static synthetic u(Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor;Lls6;Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor$VerifiedStatus;Ljava/lang/String;Ljava/lang/String;Lcom/grack/nanojson/JsonObject;)Ljava/util/Optional;
    .locals 0

    invoke-virtual/range {p0 .. p5}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor;->P(Lls6;Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor$VerifiedStatus;Ljava/lang/String;Ljava/lang/String;Lcom/grack/nanojson/JsonObject;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic v(Lcom/grack/nanojson/JsonObject;)Lcom/grack/nanojson/JsonObject;
    .locals 0

    invoke-static {p0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor;->T(Lcom/grack/nanojson/JsonObject;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic w(Lcom/grack/nanojson/JsonObject;)Z
    .locals 0

    invoke-static {p0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor;->U(Lcom/grack/nanojson/JsonObject;)Z

    move-result p0

    return p0
.end method

.method public static synthetic x(Lcom/grack/nanojson/JsonObject;)Lcom/grack/nanojson/JsonObject;
    .locals 0

    invoke-static {p0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor;->V(Lcom/grack/nanojson/JsonObject;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic y(Ljava/util/Optional;Ljava/util/Optional;)Ljava/util/Optional;
    .locals 0

    invoke-static {p0, p1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor;->R(Ljava/util/Optional;Ljava/util/Optional;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic z(Ljava/lang/String;Lcom/grack/nanojson/JsonObject;)Z
    .locals 0

    invoke-static {p0, p1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor;->W(Ljava/lang/String;Lcom/grack/nanojson/JsonObject;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final D(Lls6;Lcom/grack/nanojson/JsonObject;Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor$VerifiedStatus;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Optional;
    .locals 10

    invoke-virtual {p0}, Lmk3;->o()Lona;

    move-result-object v2

    const-string v0, "richItemRenderer"

    invoke-virtual {p2, v0}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    const-string v3, "content"

    if-eqz v1, :cond_3

    invoke-virtual {p2, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p2

    invoke-virtual {p2, v3}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p2

    const-string v0, "videoRenderer"

    invoke-virtual {p2, v0}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor;->K(Lls6;Lona;Lcom/grack/nanojson/JsonObject;Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor$VerifiedStatus;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_0
    const-string v0, "reelItemRenderer"

    invoke-virtual {p2, v0}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p2, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    invoke-static {p1, p0, p3, p4, p5}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor;->I(Lls6;Lcom/grack/nanojson/JsonObject;Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor$VerifiedStatus;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    const-string v0, "shortsLockupViewModel"

    invoke-virtual {p2, v0}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p2, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    invoke-static {p1, p0, p3, p4, p5}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor;->J(Lls6;Lcom/grack/nanojson/JsonObject;Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor$VerifiedStatus;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    const-string v0, "playlistRenderer"

    invoke-virtual {p2, v0}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-virtual {p2, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v4

    move-object v2, p0

    move-object v3, p1

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v2 .. v7}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor;->G(Lls6;Lcom/grack/nanojson/JsonObject;Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor$VerifiedStatus;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    const-string v0, "gridVideoRenderer"

    invoke-virtual {p2, v0}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p2, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor;->K(Lls6;Lona;Lcom/grack/nanojson/JsonObject;Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor$VerifiedStatus;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    const-string v0, "gridPlaylistRenderer"

    invoke-virtual {p2, v0}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p2, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v6

    move-object v4, p0

    move-object v5, p1

    move-object v7, p3

    move-object v8, p4

    move-object v9, p5

    invoke-virtual/range {v4 .. v9}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor;->G(Lls6;Lcom/grack/nanojson/JsonObject;Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor$VerifiedStatus;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    const-string v0, "gridShowRenderer"

    invoke-virtual {p2, v0}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    new-instance p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor$h;

    invoke-virtual {p2, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v5

    const/4 v9, 0x0

    move-object v4, p0

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v4 .. v9}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor$h;-><init>(Lcom/grack/nanojson/JsonObject;Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor$VerifiedStatus;Ljava/lang/String;Ljava/lang/String;Lcuc;)V

    invoke-virtual {p1, p0}, Lyz4;->d(Lxz4;)V

    goto/16 :goto_0

    :cond_6
    const-string v0, "shelfRenderer"

    invoke-virtual {p2, v0}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p2, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p2

    invoke-virtual {p2, v3}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v6

    move-object v4, p0

    move-object v5, p1

    move-object v7, p3

    move-object v8, p4

    move-object v9, p5

    invoke-virtual/range {v4 .. v9}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor;->D(Lls6;Lcom/grack/nanojson/JsonObject;Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor$VerifiedStatus;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Optional;

    move-result-object p0

    return-object p0

    :cond_7
    const-string v0, "itemSectionRenderer"

    invoke-virtual {p2, v0}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p2, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p2

    const-string v0, "contents"

    invoke-virtual {p2, v0}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v3

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor;->F(Lls6;Lcom/grack/nanojson/JsonArray;Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor$VerifiedStatus;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Optional;

    move-result-object p0

    return-object p0

    :cond_8
    const-string v0, "horizontalListRenderer"

    invoke-virtual {p2, v0}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "items"

    if-eqz v1, :cond_9

    invoke-virtual {p2, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p2

    invoke-virtual {p2, v2}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v5

    move-object v3, p0

    move-object v4, p1

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-virtual/range {v3 .. v8}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor;->F(Lls6;Lcom/grack/nanojson/JsonArray;Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor$VerifiedStatus;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Optional;

    move-result-object p0

    return-object p0

    :cond_9
    const-string v0, "expandedShelfContentsRenderer"

    invoke-virtual {p2, v0}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {p2, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p2

    invoke-virtual {p2, v2}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v5

    move-object v3, p0

    move-object v4, p1

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-virtual/range {v3 .. v8}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor;->F(Lls6;Lcom/grack/nanojson/JsonArray;Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor$VerifiedStatus;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Optional;

    move-result-object p0

    return-object p0

    :cond_a
    const-string v0, "lockupViewModel"

    invoke-virtual {p2, v0}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {p2, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v4

    const-string p2, "contentType"

    invoke-virtual {v4, p2}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "LOCKUP_CONTENT_TYPE_PLAYLIST"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_c

    move-object v2, p0

    move-object v3, p1

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v2 .. v7}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor;->H(Lls6;Lcom/grack/nanojson/JsonObject;Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor$VerifiedStatus;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_b
    const-string p0, "continuationItemRenderer"

    invoke-virtual {p2, p0}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_c

    invoke-virtual {p2, p0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0

    :cond_c
    :goto_0
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public final E(Lls6;Lcom/grack/nanojson/JsonArray;Ljava/util/List;)Ljava/util/Optional;
    .locals 7

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x1

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x2

    :try_start_0
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-static {p3}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor$VerifiedStatus;->valueOf(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor$VerifiedStatus;

    move-result-object p3
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object v4, p3

    move-object v5, v0

    move-object v6, v1

    goto :goto_1

    :catch_0
    sget-object p3, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor$VerifiedStatus;->UNKNOWN:Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor$VerifiedStatus;

    goto :goto_0

    :cond_0
    sget-object p3, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor$VerifiedStatus;->UNKNOWN:Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor$VerifiedStatus;

    const/4 v0, 0x0

    move-object v4, p3

    move-object v5, v0

    move-object v6, v5

    :goto_1
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v6}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor;->F(Lls6;Lcom/grack/nanojson/JsonArray;Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor$VerifiedStatus;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public final F(Lls6;Lcom/grack/nanojson/JsonArray;Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor$VerifiedStatus;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Optional;
    .locals 7

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

    new-instance v6, Lorg/schabi/newpipe/extractor/services/youtube/extractors/b;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/b;-><init>(Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor;Lls6;Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor$VerifiedStatus;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v6}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p1

    new-instance p2, Lbuc;

    invoke-direct {p2}, Lbuc;-><init>()V

    invoke-interface {p0, p1, p2}, Ljava/util/stream/Stream;->reduce(Ljava/lang/Object;Ljava/util/function/BinaryOperator;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Optional;

    return-object p0
.end method

.method public final G(Lls6;Lcom/grack/nanojson/JsonObject;Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor$VerifiedStatus;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    new-instance v6, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor$e;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p2

    move-object v3, p4

    move-object v4, p5

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor$e;-><init>(Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor;Lcom/grack/nanojson/JsonObject;Ljava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor$VerifiedStatus;)V

    invoke-virtual {p1, v6}, Lyz4;->d(Lxz4;)V

    return-void
.end method

.method public final H(Lls6;Lcom/grack/nanojson/JsonObject;Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor$VerifiedStatus;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    new-instance v6, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor$c;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p2

    move-object v3, p4

    move-object v4, p5

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor$c;-><init>(Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor;Lcom/grack/nanojson/JsonObject;Ljava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor$VerifiedStatus;)V

    invoke-virtual {p1, v6}, Lyz4;->d(Lxz4;)V

    return-void
.end method

.method public final K(Lls6;Lona;Lcom/grack/nanojson/JsonObject;Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor$VerifiedStatus;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    new-instance v7, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor$d;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p3

    move-object v3, p2

    move-object v4, p5

    move-object v5, p6

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor$d;-><init>(Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor;Lcom/grack/nanojson/JsonObject;Lona;Ljava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor$VerifiedStatus;)V

    invoke-virtual {p1, v7}, Lyz4;->d(Lxz4;)V

    return-void
.end method

.method public L()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor;->g:Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader;

    iget-object v1, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor;->h:Lcom/grack/nanojson/JsonObject;

    invoke-static {v1}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper;->o(Lcom/grack/nanojson/JsonObject;)Lcom/grack/nanojson/JsonObject;

    move-result-object v1

    iget-object p0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor;->h:Lcom/grack/nanojson/JsonObject;

    invoke-static {v0, v1, p0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper;->r(Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader;Lcom/grack/nanojson/JsonObject;Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final M()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lfu0;->k()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "livestreams"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    goto :goto_0

    :sswitch_1
    const-string v1, "videos"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_2
    const-string v1, "shorts"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string v1, "albums"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_4
    const-string v1, "playlists"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported channel tab: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const-string p0, "EgdzdHJlYW1z8gYECgJ6AA%3D%3D"

    return-object p0

    :pswitch_1
    const-string p0, "EgZ2aWRlb3PyBgQKAjoA"

    return-object p0

    :pswitch_2
    const-string p0, "EgZzaG9ydHPyBgUKA5oBAA%3D%3D"

    return-object p0

    :pswitch_3
    const-string p0, "EghyZWxlYXNlc_IGBQoDsgEA"

    return-object p0

    :pswitch_4
    const-string p0, "EglwbGF5bGlzdHPyBgQKAkIA"

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6f36471f -> :sswitch_4
        -0x5459b01c -> :sswitch_3
        -0x35d4f489 -> :sswitch_2
        -0x30ad84a8 -> :sswitch_1
        -0x1a2eb179 -> :sswitch_0
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

.method public final N(Lcom/grack/nanojson/JsonObject;Ljava/util/List;)Lorg/schabi/newpipe/extractor/Page;
    .locals 6

    invoke-static {p1}, Lorg/schabi/newpipe/extractor/utils/a;->o(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
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

    move-result-object v5

    new-instance p0, Lorg/schabi/newpipe/extractor/Page;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const-string v1, "https://www.youtube.com/youtubei/v1/browse?prettyPrint=false"

    move-object v0, p0

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lorg/schabi/newpipe/extractor/Page;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;[B)V

    return-object p0
.end method

.method public O()Ljava/util/Optional;
    .locals 3

    invoke-virtual {p0}, Lfu0;->k()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lduc;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor;->h:Lcom/grack/nanojson/JsonObject;

    const-string v1, "contents"

    invoke-virtual {p0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v1, "twoColumnBrowseResultsRenderer"

    invoke-virtual {p0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v1, "tabs"

    invoke-virtual {p0, v1}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, Lw50;

    const-class v2, Lcom/grack/nanojson/JsonObject;

    invoke-direct {v1, v2}, Lw50;-><init>(Ljava/lang/Class;)V

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, Lx50;

    invoke-direct {v1, v2}, Lx50;-><init>(Ljava/lang/Class;)V

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, Lxtc;

    invoke-direct {v1}, Lxtc;-><init>()V

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, Lytc;

    invoke-direct {v1}, Lytc;-><init>()V

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, Lztc;

    invoke-direct {v1, v0}, Lztc;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lauc;

    invoke-direct {v0}, Lauc;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->filter(Ljava/util/function/Predicate;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic P(Lls6;Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor$VerifiedStatus;Ljava/lang/String;Ljava/lang/String;Lcom/grack/nanojson/JsonObject;)Ljava/util/Optional;
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p5

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor;->D(Lls6;Lcom/grack/nanojson/JsonObject;Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor$VerifiedStatus;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public i()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor;->g:Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader;

    iget-object v1, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor;->h:Lcom/grack/nanojson/JsonObject;

    iget-object p0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor;->i:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper;->q(Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader;Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public p()Ljava/lang/String;
    .locals 4

    :try_start_0
    invoke-static {}, Lduc;->r()Lduc;

    move-result-object v0

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor;->i()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "channel/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lfu0;->k()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lttc;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v0, v1, v2, v3}, Lduc;->p(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

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

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor;->M()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lmk3;->h()Lorg/schabi/newpipe/extractor/localization/Localization;

    move-result-object v1

    invoke-virtual {p0}, Lmk3;->g()Lorg/schabi/newpipe/extractor/localization/ContentCountry;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper;->s(Ljava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/extractor/localization/Localization;Lorg/schabi/newpipe/extractor/localization/ContentCountry;)Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$b;

    move-result-object p1

    iget-object v0, p1, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$b;->a:Lcom/grack/nanojson/JsonObject;

    iput-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor;->h:Lcom/grack/nanojson/JsonObject;

    invoke-static {v0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper;->p(Lcom/grack/nanojson/JsonObject;)Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader;

    move-result-object v0

    iput-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor;->g:Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader;

    iget-object p1, p1, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$b;->b:Ljava/lang/String;

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor;->i:Ljava/lang/String;

    return-void
.end method

.method public r()Ltl5$a;
    .locals 10

    new-instance v6, Lls6;

    invoke-virtual {p0}, Lmk3;->n()I

    move-result v0

    invoke-direct {v6, v0}, Lls6;-><init>(I)V

    new-instance v0, Lcom/grack/nanojson/JsonArray;

    invoke-direct {v0}, Lcom/grack/nanojson/JsonArray;-><init>()V

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor;->O()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grack/nanojson/JsonObject;

    const-string v1, "content"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "sectionListRenderer"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v2

    const-string v3, "contents"

    invoke-virtual {v2, v3}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/grack/nanojson/JsonArray;->getObject(I)Lcom/grack/nanojson/JsonObject;

    move-result-object v2

    const-string v5, "itemSectionRenderer"

    invoke-virtual {v2, v5}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/grack/nanojson/JsonArray;->getObject(I)Lcom/grack/nanojson/JsonObject;

    move-result-object v2

    const-string v4, "gridRenderer"

    invoke-virtual {v2, v4}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v2

    const-string v4, "items"

    invoke-virtual {v2, v4}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v2, "richGridRenderer"

    invoke-virtual {v0, v2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v0

    :cond_0
    move-object v2, v0

    :cond_1
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor;->g:Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader;

    if-nez v0, :cond_2

    sget-object v0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor$VerifiedStatus;->UNKNOWN:Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor$VerifiedStatus;

    :goto_0
    move-object v7, v0

    goto :goto_1

    :cond_2
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper;->t(Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor$VerifiedStatus;->VERIFIED:Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor$VerifiedStatus;

    goto :goto_0

    :cond_3
    sget-object v0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor$VerifiedStatus;->UNVERIFIED:Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor$VerifiedStatus;

    goto :goto_0

    :goto_1
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor;->L()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor;->p()Ljava/lang/String;

    move-result-object v9

    move-object v0, p0

    move-object v1, v6

    move-object v3, v7

    move-object v4, v8

    move-object v5, v9

    invoke-virtual/range {v0 .. v5}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor;->F(Lls6;Lcom/grack/nanojson/JsonArray;Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor$VerifiedStatus;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grack/nanojson/JsonObject;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v9, v1}, Lstc;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor;->N(Lcom/grack/nanojson/JsonObject;Ljava/util/List;)Lorg/schabi/newpipe/extractor/Page;

    move-result-object p0

    new-instance v0, Ltl5$a;

    invoke-direct {v0, v6, p0}, Ltl5$a;-><init>(Lyz4;Lorg/schabi/newpipe/extractor/Page;)V

    return-object v0
.end method

.method public t(Lorg/schabi/newpipe/extractor/Page;)Ltl5$a;
    .locals 4

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Page;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/schabi/newpipe/extractor/utils/a;->m(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Page;->getIds()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lls6;

    invoke-virtual {p0}, Lmk3;->n()I

    move-result v2

    invoke-direct {v1, v2}, Lls6;-><init>(I)V

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Page;->getBody()[B

    move-result-object p1

    invoke-virtual {p0}, Lmk3;->h()Lorg/schabi/newpipe/extractor/localization/Localization;

    move-result-object v2

    const-string v3, "browse"

    invoke-static {v3, p1, v2}, Lcxc;->I(Ljava/lang/String;[BLorg/schabi/newpipe/extractor/localization/Localization;)Lcom/grack/nanojson/JsonObject;

    move-result-object p1

    const-string v2, "onResponseReceivedActions"

    invoke-virtual {p1, v2}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v2, Lw50;

    const-class v3, Lcom/grack/nanojson/JsonObject;

    invoke-direct {v2, v3}, Lw50;-><init>(Ljava/lang/Class;)V

    invoke-interface {p1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v2, Lx50;

    invoke-direct {v2, v3}, Lx50;-><init>(Ljava/lang/Class;)V

    invoke-interface {p1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v2, Lvtc;

    invoke-direct {v2}, Lvtc;-><init>()V

    invoke-interface {p1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v2, Lwtc;

    invoke-direct {v2}, Lwtc;-><init>()V

    invoke-interface {p1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p1

    new-instance v2, Lcom/grack/nanojson/JsonObject;

    invoke-direct {v2}, Lcom/grack/nanojson/JsonObject;-><init>()V

    invoke-virtual {p1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/grack/nanojson/JsonObject;

    const-string v2, "continuationItems"

    invoke-virtual {p1, v2}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object p1

    invoke-virtual {p0, v1, p1, v0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor;->E(Lls6;Lcom/grack/nanojson/JsonArray;Ljava/util/List;)Ljava/util/Optional;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/grack/nanojson/JsonObject;

    new-instance v2, Ltl5$a;

    invoke-virtual {p0, p1, v0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor;->N(Lcom/grack/nanojson/JsonObject;Ljava/util/List;)Lorg/schabi/newpipe/extractor/Page;

    move-result-object p0

    invoke-direct {v2, v1, p0}, Ltl5$a;-><init>(Lyz4;Lorg/schabi/newpipe/extractor/Page;)V

    return-object v2

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Page doesn\'t contain an URL"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

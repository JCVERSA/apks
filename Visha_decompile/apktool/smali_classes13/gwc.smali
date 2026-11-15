.class public Lgwc;
.super Lorg/schabi/newpipe/extractor/search/SearchExtractor;
.source "SourceFile"


# instance fields
.field public g:Lcom/grack/nanojson/JsonObject;


# direct methods
.method public constructor <init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/SearchQueryHandler;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/extractor/search/SearchExtractor;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/SearchQueryHandler;)V

    return-void
.end method

.method public static synthetic A(Lcom/grack/nanojson/JsonObject;)Z
    .locals 0

    invoke-static {p0}, Lgwc;->L(Lcom/grack/nanojson/JsonObject;)Z

    move-result p0

    return p0
.end method

.method public static synthetic B(Lcom/grack/nanojson/JsonObject;)Lcom/grack/nanojson/JsonObject;
    .locals 0

    invoke-static {p0}, Lgwc;->K(Lcom/grack/nanojson/JsonObject;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic C(Lcom/grack/nanojson/JsonObject;)Lcom/grack/nanojson/JsonObject;
    .locals 0

    invoke-static {p0}, Lgwc;->I(Lcom/grack/nanojson/JsonObject;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic D(Lcom/grack/nanojson/JsonObject;)Z
    .locals 0

    invoke-static {p0}, Lgwc;->N(Lcom/grack/nanojson/JsonObject;)Z

    move-result p0

    return p0
.end method

.method public static synthetic E(Ljava/lang/String;Lls6;Lcom/grack/nanojson/JsonObject;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lgwc;->J(Ljava/lang/String;Lls6;Lcom/grack/nanojson/JsonObject;)V

    return-void
.end method

.method private H(Lcom/grack/nanojson/JsonArray;)Lorg/schabi/newpipe/extractor/Page;
    .locals 2

    invoke-static {p1}, Lorg/schabi/newpipe/extractor/utils/a;->n(Ljava/util/Collection;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Lcom/grack/nanojson/JsonArray;->getObject(I)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string p1, "nextContinuationData"

    invoke-virtual {p0, p1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string p1, "continuation"

    invoke-virtual {p0, p1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lorg/schabi/newpipe/extractor/Page;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://music.youtube.com/youtubei/v1/search?ctoken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&continuation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "&prettyPrint=false"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/schabi/newpipe/extractor/Page;-><init>(Ljava/lang/String;)V

    return-object p1
.end method

.method public static synthetic I(Lcom/grack/nanojson/JsonObject;)Lcom/grack/nanojson/JsonObject;
    .locals 2

    const-string v0, "musicResponsiveListItemRenderer"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;Lcom/grack/nanojson/JsonObject;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic J(Ljava/lang/String;Lls6;Lcom/grack/nanojson/JsonObject;)V
    .locals 4

    const/4 v0, 0x1

    const-string v1, "musicItemRendererDisplayPolicy"

    const-string v2, ""

    invoke-virtual {p2, v1, v2}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "MUSIC_ITEM_RENDERER_DISPLAY_POLICY_GREY_OUT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const-string v1, "flexColumns"

    invoke-virtual {p2, v1}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/grack/nanojson/JsonArray;->getObject(I)Lcom/grack/nanojson/JsonObject;

    move-result-object v1

    const-string v2, "musicResponsiveListItemFlexColumnRenderer"

    invoke-virtual {v1, v2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v1

    const-string v2, "text"

    invoke-virtual {v1, v2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v1

    const-string v2, "runs"

    invoke-virtual {v1, v2}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    const/4 v2, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :goto_0
    move v0, v2

    goto :goto_1

    :sswitch_0
    const-string v0, "music_videos"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    goto :goto_1

    :sswitch_1
    const-string v0, "music_songs"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    goto :goto_1

    :sswitch_2
    const-string v0, "music_albums"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x2

    goto :goto_1

    :sswitch_3
    const-string v3, "music_artists"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_0

    :sswitch_4
    const-string v0, "music_playlists"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :cond_5
    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    new-instance v0, Lhwc;

    invoke-direct {v0, p2, v1, p0}, Lhwc;-><init>(Lcom/grack/nanojson/JsonObject;Lcom/grack/nanojson/JsonArray;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lyz4;->d(Lxz4;)V

    goto :goto_2

    :pswitch_1
    new-instance p0, Lzvc;

    invoke-direct {p0, p2}, Lzvc;-><init>(Lcom/grack/nanojson/JsonObject;)V

    invoke-virtual {p1, p0}, Lyz4;->d(Lxz4;)V

    goto :goto_2

    :pswitch_2
    new-instance v0, Lyvc;

    invoke-direct {v0, p2, v1, p0}, Lyvc;-><init>(Lcom/grack/nanojson/JsonObject;Lcom/grack/nanojson/JsonArray;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lyz4;->d(Lxz4;)V

    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x6a0208b9 -> :sswitch_4
        -0x21ca560e -> :sswitch_3
        0x59631b3e -> :sswitch_2
        0x5eb80f64 -> :sswitch_1
        0x7d0f46b2 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic K(Lcom/grack/nanojson/JsonObject;)Lcom/grack/nanojson/JsonObject;
    .locals 1

    const-string v0, "itemSectionRenderer"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic L(Lcom/grack/nanojson/JsonObject;)Z
    .locals 0

    invoke-virtual {p0}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static synthetic M(Lcom/grack/nanojson/JsonObject;)Lcom/grack/nanojson/JsonObject;
    .locals 1

    const-string v0, "contents"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonArray;->getObject(I)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic N(Lcom/grack/nanojson/JsonObject;)Z
    .locals 1

    const-string v0, "showingResultsForRenderer"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic z(Lcom/grack/nanojson/JsonObject;)Lcom/grack/nanojson/JsonObject;
    .locals 0

    invoke-static {p0}, Lgwc;->M(Lcom/grack/nanojson/JsonObject;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final F(Lls6;Lcom/grack/nanojson/JsonArray;)V
    .locals 2

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/search/SearchExtractor;->u()Lorg/schabi/newpipe/extractor/linkhandler/SearchQueryHandler;

    move-result-object p0

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;->getContentFilters()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

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

    new-instance v0, Lbwc;

    invoke-direct {v0}, Lbwc;-><init>()V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lguc;

    invoke-direct {v0}, Lguc;-><init>()V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lcwc;

    invoke-direct {v0, p0, p1}, Lcwc;-><init>(Ljava/lang/String;Lls6;)V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->forEachOrdered(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final G()Ljava/util/List;
    .locals 2

    iget-object p0, p0, Lgwc;->g:Lcom/grack/nanojson/JsonObject;

    const-string v0, "contents"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v1, "tabbedSearchResultsRenderer"

    invoke-virtual {p0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v1, "tabs"

    invoke-virtual {p0, v1}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/grack/nanojson/JsonArray;->getObject(I)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v1, "tabRenderer"

    invoke-virtual {p0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v1, "content"

    invoke-virtual {p0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v1, "sectionListRenderer"

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

    new-instance v0, Ldwc;

    invoke-direct {v0}, Ldwc;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lewc;

    invoke-direct {v0}, Lewc;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lfwc;

    invoke-direct {v0}, Lfwc;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public q(Lc23;)V
    .locals 5

    const/4 p1, 0x1

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/search/SearchExtractor;->u()Lorg/schabi/newpipe/extractor/linkhandler/SearchQueryHandler;

    move-result-object v0

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;->getContentFilters()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const/4 v2, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v3, "music_videos"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x4

    goto :goto_0

    :sswitch_1
    const-string v3, "music_songs"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_2
    const-string v3, "music_albums"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_3
    const-string v3, "music_artists"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    move v2, p1

    goto :goto_0

    :sswitch_4
    const-string v3, "music_playlists"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    move v2, v1

    :goto_0
    packed-switch v2, :pswitch_data_0

    const/4 v0, 0x0

    goto :goto_1

    :pswitch_0
    const-string v0, "Eg-KAQwIABABGAAgACgAMABqChAEEAUQAxAKEAk%3D"

    goto :goto_1

    :pswitch_1
    const-string v0, "Eg-KAQwIARAAGAAgACgAMABqChAEEAUQAxAKEAk%3D"

    goto :goto_1

    :pswitch_2
    const-string v0, "Eg-KAQwIABAAGAEgACgAMABqChAEEAUQAxAKEAk%3D"

    goto :goto_1

    :pswitch_3
    const-string v0, "Eg-KAQwIABAAGAAgASgAMABqChAEEAUQAxAKEAk%3D"

    goto :goto_1

    :pswitch_4
    const-string v0, "Eg-KAQwIABAAGAAgACgBMABqChAEEAUQAxAKEAk%3D"

    :goto_1
    invoke-static {}, Ltc5;->a()Lzb5;

    move-result-object v2

    invoke-virtual {v2}, Luc5;->n()Luc5;

    move-result-object v2

    check-cast v2, Lzb5;

    const-string v3, "context"

    invoke-virtual {v2, v3}, Luc5;->o(Ljava/lang/String;)Luc5;

    move-result-object v2

    check-cast v2, Lzb5;

    const-string v3, "client"

    invoke-virtual {v2, v3}, Luc5;->o(Ljava/lang/String;)Luc5;

    move-result-object v2

    check-cast v2, Lzb5;

    const-string v3, "clientName"

    const-string v4, "WEB_REMIX"

    invoke-virtual {v2, v3, v4}, Luc5;->E(Ljava/lang/String;Ljava/lang/String;)Luc5;

    move-result-object v2

    check-cast v2, Lzb5;

    const-string v3, "clientVersion"

    invoke-static {}, Lcxc;->U()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Luc5;->E(Ljava/lang/String;Ljava/lang/String;)Luc5;

    move-result-object v2

    check-cast v2, Lzb5;

    const-string v3, "hl"

    const-string v4, "en-GB"

    invoke-virtual {v2, v3, v4}, Luc5;->E(Ljava/lang/String;Ljava/lang/String;)Luc5;

    move-result-object v2

    check-cast v2, Lzb5;

    invoke-virtual {p0}, Lmk3;->g()Lorg/schabi/newpipe/extractor/localization/ContentCountry;

    move-result-object v3

    invoke-virtual {v3}, Lorg/schabi/newpipe/extractor/localization/ContentCountry;->getCountryCode()Ljava/lang/String;

    move-result-object v3

    const-string v4, "gl"

    invoke-virtual {v2, v4, v3}, Luc5;->E(Ljava/lang/String;Ljava/lang/String;)Luc5;

    move-result-object v2

    check-cast v2, Lzb5;

    const-string v3, "platform"

    const-string v4, "DESKTOP"

    invoke-virtual {v2, v3, v4}, Luc5;->E(Ljava/lang/String;Ljava/lang/String;)Luc5;

    move-result-object v2

    check-cast v2, Lzb5;

    const-string v3, "utcOffsetMinutes"

    invoke-virtual {v2, v3, v1}, Luc5;->B(Ljava/lang/String;I)Luc5;

    move-result-object v2

    check-cast v2, Lzb5;

    invoke-virtual {v2}, Luc5;->j()Luc5;

    move-result-object v2

    check-cast v2, Lzb5;

    const-string v3, "request"

    invoke-virtual {v2, v3}, Luc5;->o(Ljava/lang/String;)Luc5;

    move-result-object v2

    check-cast v2, Lzb5;

    const-string v3, "internalExperimentFlags"

    invoke-virtual {v2, v3}, Luc5;->d(Ljava/lang/String;)Luc5;

    move-result-object v2

    check-cast v2, Lzb5;

    invoke-virtual {v2}, Luc5;->j()Luc5;

    move-result-object v2

    check-cast v2, Lzb5;

    const-string v3, "useSsl"

    invoke-virtual {v2, v3, p1}, Luc5;->F(Ljava/lang/String;Z)Luc5;

    move-result-object p1

    check-cast p1, Lzb5;

    invoke-virtual {p1}, Luc5;->j()Luc5;

    move-result-object p1

    check-cast p1, Lzb5;

    const-string v2, "user"

    invoke-virtual {p1, v2}, Luc5;->o(Ljava/lang/String;)Luc5;

    move-result-object p1

    check-cast p1, Lzb5;

    const-string v2, "lockedSafetyMode"

    invoke-virtual {p1, v2, v1}, Luc5;->F(Ljava/lang/String;Z)Luc5;

    move-result-object p1

    check-cast p1, Lzb5;

    invoke-virtual {p1}, Luc5;->j()Luc5;

    move-result-object p1

    check-cast p1, Lzb5;

    invoke-virtual {p1}, Luc5;->j()Luc5;

    move-result-object p1

    check-cast p1, Lzb5;

    const-string v1, "query"

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/search/SearchExtractor;->w()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Luc5;->E(Ljava/lang/String;Ljava/lang/String;)Luc5;

    move-result-object p1

    check-cast p1, Lzb5;

    const-string v1, "params"

    invoke-virtual {p1, v1, v0}, Luc5;->E(Ljava/lang/String;Ljava/lang/String;)Luc5;

    move-result-object p1

    check-cast p1, Lzb5;

    invoke-virtual {p1}, Luc5;->j()Luc5;

    move-result-object p1

    check-cast p1, Lzb5;

    invoke-virtual {p1}, Lzb5;->H()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {p0}, Lmk3;->f()Lc23;

    move-result-object v0

    const-string v1, "https://music.youtube.com/youtubei/v1/search?prettyPrint=false"

    invoke-static {}, Lcxc;->V()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1}, Lc23;->j(Ljava/lang/String;Ljava/util/Map;[B)Lfu8;

    move-result-object p1

    invoke-static {p1}, Lcxc;->R(Lfu8;)Ljava/lang/String;

    move-result-object p1

    :try_start_0
    invoke-static {}, Lcom/grack/nanojson/a;->d()Lcom/grack/nanojson/a$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/grack/nanojson/a$a;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/grack/nanojson/JsonObject;

    iput-object p1, p0, Lgwc;->g:Lcom/grack/nanojson/JsonObject;
    :try_end_0
    .catch Lcom/grack/nanojson/JsonParserException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v0, "Could not parse JSON"

    invoke-direct {p1, v0, p0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6a0208b9 -> :sswitch_4
        -0x21ca560e -> :sswitch_3
        0x59631b3e -> :sswitch_2
        0x5eb80f64 -> :sswitch_1
        0x7d0f46b2 -> :sswitch_0
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

.method public r()Ltl5$a;
    .locals 6

    new-instance v0, Lls6;

    invoke-virtual {p0}, Lmk3;->n()I

    move-result v1

    invoke-direct {v0, v1}, Lls6;-><init>(I)V

    iget-object v1, p0, Lgwc;->g:Lcom/grack/nanojson/JsonObject;

    const-string v2, "contents.tabbedSearchResultsRenderer.tabs"

    invoke-static {v1, v2}, Loc5;->a(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/grack/nanojson/JsonArray;->getObject(I)Lcom/grack/nanojson/JsonObject;

    move-result-object v1

    const-string v2, "tabRenderer.content.sectionListRenderer.contents"

    invoke-static {v1, v2}, Loc5;->a(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/grack/nanojson/JsonObject;

    const-string v4, "musicShelfRenderer"

    invoke-virtual {v3, v4}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v3, v4}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v2

    const-string v3, "contents"

    invoke-virtual {v2, v3}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Lgwc;->F(Lls6;Lcom/grack/nanojson/JsonArray;)V

    const-string v3, "continuations"

    invoke-virtual {v2, v3}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v2

    invoke-direct {p0, v2}, Lgwc;->H(Lcom/grack/nanojson/JsonArray;)Lorg/schabi/newpipe/extractor/Page;

    move-result-object v2

    goto :goto_0

    :cond_1
    new-instance p0, Ltl5$a;

    invoke-direct {p0, v0, v2}, Ltl5$a;-><init>(Lyz4;Lorg/schabi/newpipe/extractor/Page;)V

    return-object p0
.end method

.method public t(Lorg/schabi/newpipe/extractor/Page;)Ltl5$a;
    .locals 5

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Page;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/schabi/newpipe/extractor/utils/a;->m(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lls6;

    invoke-virtual {p0}, Lmk3;->n()I

    move-result v1

    invoke-direct {v0, v1}, Lls6;-><init>(I)V

    invoke-static {}, Ltc5;->a()Lzb5;

    move-result-object v1

    invoke-virtual {v1}, Luc5;->n()Luc5;

    move-result-object v1

    check-cast v1, Lzb5;

    const-string v2, "context"

    invoke-virtual {v1, v2}, Luc5;->o(Ljava/lang/String;)Luc5;

    move-result-object v1

    check-cast v1, Lzb5;

    const-string v2, "client"

    invoke-virtual {v1, v2}, Luc5;->o(Ljava/lang/String;)Luc5;

    move-result-object v1

    check-cast v1, Lzb5;

    const-string v2, "clientName"

    const-string v3, "WEB_REMIX"

    invoke-virtual {v1, v2, v3}, Luc5;->E(Ljava/lang/String;Ljava/lang/String;)Luc5;

    move-result-object v1

    check-cast v1, Lzb5;

    const-string v2, "clientVersion"

    invoke-static {}, Lcxc;->U()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Luc5;->E(Ljava/lang/String;Ljava/lang/String;)Luc5;

    move-result-object v1

    check-cast v1, Lzb5;

    const-string v2, "hl"

    const-string v3, "en-GB"

    invoke-virtual {v1, v2, v3}, Luc5;->E(Ljava/lang/String;Ljava/lang/String;)Luc5;

    move-result-object v1

    check-cast v1, Lzb5;

    invoke-virtual {p0}, Lmk3;->g()Lorg/schabi/newpipe/extractor/localization/ContentCountry;

    move-result-object v2

    invoke-virtual {v2}, Lorg/schabi/newpipe/extractor/localization/ContentCountry;->getCountryCode()Ljava/lang/String;

    move-result-object v2

    const-string v3, "gl"

    invoke-virtual {v1, v3, v2}, Luc5;->E(Ljava/lang/String;Ljava/lang/String;)Luc5;

    move-result-object v1

    check-cast v1, Lzb5;

    const-string v2, "platform"

    const-string v3, "DESKTOP"

    invoke-virtual {v1, v2, v3}, Luc5;->E(Ljava/lang/String;Ljava/lang/String;)Luc5;

    move-result-object v1

    check-cast v1, Lzb5;

    const-string v2, "utcOffsetMinutes"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Luc5;->B(Ljava/lang/String;I)Luc5;

    move-result-object v1

    check-cast v1, Lzb5;

    invoke-virtual {v1}, Luc5;->j()Luc5;

    move-result-object v1

    check-cast v1, Lzb5;

    const-string v2, "request"

    invoke-virtual {v1, v2}, Luc5;->o(Ljava/lang/String;)Luc5;

    move-result-object v1

    check-cast v1, Lzb5;

    const-string v2, "internalExperimentFlags"

    invoke-virtual {v1, v2}, Luc5;->d(Ljava/lang/String;)Luc5;

    move-result-object v1

    check-cast v1, Lzb5;

    invoke-virtual {v1}, Luc5;->j()Luc5;

    move-result-object v1

    check-cast v1, Lzb5;

    const-string v2, "useSsl"

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v4}, Luc5;->F(Ljava/lang/String;Z)Luc5;

    move-result-object v1

    check-cast v1, Lzb5;

    invoke-virtual {v1}, Luc5;->j()Luc5;

    move-result-object v1

    check-cast v1, Lzb5;

    const-string v2, "user"

    invoke-virtual {v1, v2}, Luc5;->o(Ljava/lang/String;)Luc5;

    move-result-object v1

    check-cast v1, Lzb5;

    const-string v2, "lockedSafetyMode"

    invoke-virtual {v1, v2, v3}, Luc5;->F(Ljava/lang/String;Z)Luc5;

    move-result-object v1

    check-cast v1, Lzb5;

    invoke-virtual {v1}, Luc5;->j()Luc5;

    move-result-object v1

    check-cast v1, Lzb5;

    invoke-virtual {v1}, Luc5;->j()Luc5;

    move-result-object v1

    check-cast v1, Lzb5;

    invoke-virtual {v1}, Luc5;->j()Luc5;

    move-result-object v1

    check-cast v1, Lzb5;

    invoke-virtual {v1}, Lzb5;->H()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-virtual {p0}, Lmk3;->f()Lc23;

    move-result-object v2

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Page;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcxc;->V()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v2, p1, v3, v1}, Lc23;->j(Ljava/lang/String;Ljava/util/Map;[B)Lfu8;

    move-result-object p1

    invoke-static {p1}, Lcxc;->R(Lfu8;)Ljava/lang/String;

    move-result-object p1

    :try_start_0
    invoke-static {}, Lcom/grack/nanojson/a;->d()Lcom/grack/nanojson/a$a;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/grack/nanojson/a$a;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/grack/nanojson/JsonObject;
    :try_end_0
    .catch Lcom/grack/nanojson/JsonParserException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "continuationContents"

    invoke-virtual {p1, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p1

    const-string v1, "musicShelfContinuation"

    invoke-virtual {p1, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p1

    const-string v1, "contents"

    invoke-virtual {p1, v1}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lgwc;->F(Lls6;Lcom/grack/nanojson/JsonArray;)V

    const-string v1, "continuations"

    invoke-virtual {p1, v1}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object p1

    new-instance v1, Ltl5$a;

    invoke-direct {p0, p1}, Lgwc;->H(Lcom/grack/nanojson/JsonArray;)Lorg/schabi/newpipe/extractor/Page;

    move-result-object p0

    invoke-direct {v1, v0, p0}, Ltl5$a;-><init>(Lyz4;Lorg/schabi/newpipe/extractor/Page;)V

    return-object v1

    :catch_0
    move-exception p0

    new-instance p1, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v0, "Could not parse JSON"

    invoke-direct {p1, v0, p0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Page doesn\'t contain an URL"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public v()Ljava/util/List;
    .locals 0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public x()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lgwc;->G()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grack/nanojson/JsonObject;

    const-string v1, "didYouMeanRenderer"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v1

    const-string v2, "showingResultsForRenderer"

    invoke-virtual {v0, v2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    invoke-virtual {v1}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    const-string p0, "correctedQuery"

    invoke-virtual {v1, p0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    invoke-static {p0}, Lcxc;->L(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {v0}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const-string p0, "correctedQueryEndpoint.searchEndpoint.query"

    invoke-static {v0, p0}, Loc5;->h(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const-string p0, ""

    return-object p0
.end method

.method public y()Z
    .locals 1

    invoke-virtual {p0}, Lgwc;->G()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lawc;

    invoke-direct {v0}, Lawc;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.class public abstract Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader;,
        Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$b;
    }
.end annotation


# direct methods
.method public static synthetic A(Lcom/grack/nanojson/JsonObject;)Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader;
    .locals 2

    new-instance v0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader;

    sget-object v1, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader$HeaderType;->CAROUSEL:Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader$HeaderType;

    invoke-direct {v0, p0, v1}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader;-><init>(Lcom/grack/nanojson/JsonObject;Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader$HeaderType;)V

    return-object v0
.end method

.method public static synthetic B(Lcom/grack/nanojson/JsonObject;)Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader;
    .locals 2

    new-instance v0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader;

    sget-object v1, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader$HeaderType;->PAGE:Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader$HeaderType;

    invoke-direct {v0, p0, v1}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader;-><init>(Lcom/grack/nanojson/JsonObject;Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader$HeaderType;)V

    return-object v0
.end method

.method public static synthetic C(Lcom/grack/nanojson/JsonObject;)Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader;
    .locals 2

    new-instance v0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader;

    sget-object v1, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader$HeaderType;->INTERACTIVE_TABBED:Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader$HeaderType;

    invoke-direct {v0, p0, v1}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader;-><init>(Lcom/grack/nanojson/JsonObject;Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader$HeaderType;)V

    return-object v0
.end method

.method public static synthetic D(Lcom/grack/nanojson/JsonObject;)Z
    .locals 1

    const-string v0, "topicChannelDetailsRenderer"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic E(Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader;)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader;->json:Lcom/grack/nanojson/JsonObject;

    sget-object v1, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$a;->a:[I

    iget-object p0, p0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader;->headerType:Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader$HeaderType;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v1, p0

    const/4 v1, 0x1

    const-string v2, "title"

    if-eq p0, v1, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1

    invoke-virtual {v0, v2}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "content"

    invoke-virtual {v0, p0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v1

    const-string v3, "pageHeaderViewModel"

    invoke-virtual {v1, v3}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v1

    const-string v2, "dynamicTextViewModel"

    invoke-virtual {v1, v2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v1

    const-string v2, "text"

    invoke-virtual {v1, v2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v1

    const-string v2, "pageTitle"

    invoke-virtual {v0, v2}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p0, v0}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {v0, v2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    invoke-static {p0}, Lcxc;->L(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic F(Lcom/grack/nanojson/JsonObject;)Ljava/util/Optional;
    .locals 1

    const-string v0, "microformat"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v0, "microformatDataRenderer"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v0, "title"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic G()Lorg/schabi/newpipe/extractor/exceptions/ParsingException;
    .locals 2

    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v1, "Could not get channel name"

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static H(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v2, v0, v1

    const-string v3, "UC"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    aget-object p0, v0, v1

    return-object p0

    :cond_0
    aget-object v1, v0, v1

    const-string v2, "channel"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lorg/schabi/newpipe/extractor/localization/Localization;->DEFAULT:Lorg/schabi/newpipe/extractor/localization/Localization;

    sget-object v2, Lorg/schabi/newpipe/extractor/localization/ContentCountry;->DEFAULT:Lorg/schabi/newpipe/extractor/localization/ContentCountry;

    invoke-static {v1, v2}, Lcxc;->y0(Lorg/schabi/newpipe/extractor/localization/Localization;Lorg/schabi/newpipe/extractor/localization/ContentCountry;)Laa5;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "https://www.youtube.com/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v4, "url"

    invoke-virtual {v2, v4, p0}, Laa5;->h(Ljava/lang/String;Ljava/lang/String;)Laa5;

    move-result-object p0

    invoke-virtual {p0}, Laa5;->b()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ltc5;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    const-string v2, "navigation/resolve_url"

    invoke-static {v2, p0, v1}, Lcxc;->I(Ljava/lang/String;[BLorg/schabi/newpipe/extractor/localization/Localization;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    invoke-static {p0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper;->n(Lcom/grack/nanojson/JsonObject;)V

    const-string v1, "endpoint"

    invoke-virtual {p0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v1, "commandMetadata"

    invoke-virtual {p0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v1

    const-string v2, "webCommandMetadata"

    invoke-virtual {v1, v2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v1

    const-string v2, "webPageType"

    const-string v4, ""

    invoke-virtual {v1, v2, v4}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "browseEndpoint"

    invoke-virtual {p0, v2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v2, "browseId"

    invoke-virtual {p0, v2, v4}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "WEB_PAGE_TYPE_BROWSE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "WEB_PAGE_TYPE_CHANNEL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    :cond_1
    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-object p0

    :cond_2
    new-instance p0, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;

    const-string v0, "Redirected id is not pointing to a channel"

    invoke-direct {p0, v0}, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    const/4 p0, 0x1

    aget-object p0, v0, p0

    return-object p0
.end method

.method public static synthetic a(Lcom/grack/nanojson/JsonObject;)Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader;
    .locals 0

    invoke-static {p0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper;->A(Lcom/grack/nanojson/JsonObject;)Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper;->E(Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lcom/grack/nanojson/JsonObject;)Lcom/grack/nanojson/JsonObject;
    .locals 0

    invoke-static {p0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper;->z(Lcom/grack/nanojson/JsonObject;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lcom/grack/nanojson/JsonObject;)Z
    .locals 0

    invoke-static {p0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper;->y(Lcom/grack/nanojson/JsonObject;)Z

    move-result p0

    return p0
.end method

.method public static synthetic e(Lcom/grack/nanojson/JsonObject;)Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader;
    .locals 0

    invoke-static {p0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper;->x(Lcom/grack/nanojson/JsonObject;)Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Lcom/grack/nanojson/JsonObject;)Lcom/grack/nanojson/JsonObject;
    .locals 0

    invoke-static {p0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper;->w(Lcom/grack/nanojson/JsonObject;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Lcom/grack/nanojson/JsonObject;)Z
    .locals 0

    invoke-static {p0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper;->D(Lcom/grack/nanojson/JsonObject;)Z

    move-result p0

    return p0
.end method

.method public static synthetic h(Lcom/grack/nanojson/JsonObject;)Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader;
    .locals 0

    invoke-static {p0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper;->C(Lcom/grack/nanojson/JsonObject;)Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i(Lcom/grack/nanojson/JsonObject;)Z
    .locals 0

    invoke-static {p0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper;->v(Lcom/grack/nanojson/JsonObject;)Z

    move-result p0

    return p0
.end method

.method public static synthetic j(Lcom/grack/nanojson/JsonObject;)Ljava/util/Optional;
    .locals 0

    invoke-static {p0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper;->F(Lcom/grack/nanojson/JsonObject;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k(Lcom/grack/nanojson/JsonObject;)Ljava/util/stream/Stream;
    .locals 0

    invoke-static {p0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper;->u(Lcom/grack/nanojson/JsonObject;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Lcom/grack/nanojson/JsonObject;)Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader;
    .locals 0

    invoke-static {p0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper;->B(Lcom/grack/nanojson/JsonObject;)Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic m()Lorg/schabi/newpipe/extractor/exceptions/ParsingException;
    .locals 1

    invoke-static {}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper;->G()Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    move-result-object v0

    return-object v0
.end method

.method public static n(Lcom/grack/nanojson/JsonObject;)V
    .locals 4

    const-string v0, "error"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v1

    invoke-static {v1}, Lorg/schabi/newpipe/extractor/utils/a;->o(Ljava/util/Map;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v0, "code"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x194

    if-ne v0, v1, :cond_0

    new-instance p0, Lorg/schabi/newpipe/extractor/exceptions/ContentNotAvailableException;

    const-string v0, "This channel doesn\'t exist."

    invoke-direct {p0, v0}, Lorg/schabi/newpipe/extractor/exceptions/ContentNotAvailableException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ContentNotAvailableException;

    const-string v1, "status"

    invoke-virtual {p0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "message"

    invoke-virtual {p0, v2}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got error:\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\": "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/extractor/exceptions/ContentNotAvailableException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method public static o(Lcom/grack/nanojson/JsonObject;)Lcom/grack/nanojson/JsonObject;
    .locals 2

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

    new-instance v0, Ldtc;

    invoke-direct {v0}, Ldtc;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Letc;

    invoke-direct {v0}, Letc;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lftc;

    invoke-direct {v0}, Lftc;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/grack/nanojson/JsonObject;

    return-object p0
.end method

.method public static p(Lcom/grack/nanojson/JsonObject;)Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader;
    .locals 3

    const-string v0, "header"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v0, "c4TabbedHeaderRenderer"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lktc;

    invoke-direct {v0}, Lktc;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader;

    return-object p0

    :cond_0
    const-string v0, "carouselHeaderRenderer"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

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

    new-instance v0, Lltc;

    invoke-direct {v0}, Lltc;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lmtc;

    invoke-direct {v0}, Lmtc;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lntc;

    invoke-direct {v0}, Lntc;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader;

    return-object p0

    :cond_1
    const-string v0, "pageHeaderRenderer"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lotc;

    invoke-direct {v0}, Lotc;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader;

    return-object p0

    :cond_2
    const-string v0, "interactiveTabbedHeaderRenderer"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lctc;

    invoke-direct {v0}, Lctc;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader;

    return-object p0

    :cond_3
    return-object v2
.end method

.method public static q(Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader;Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    if-eqz p0, :cond_3

    sget-object v0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$a;->a:[I

    iget-object v1, p0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader;->headerType:Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader$HeaderType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const-string v2, "browseId"

    const-string v3, "browseEndpoint"

    const-string v4, "navigationEndpoint"

    const-string v5, "header"

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader;->json:Lcom/grack/nanojson/JsonObject;

    invoke-virtual {v0, v5}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "c4TabbedHeaderRenderer"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "channelId"

    const-string v5, ""

    invoke-virtual {v0, v1, v5}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/schabi/newpipe/extractor/utils/a;->m(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader;->json:Lcom/grack/nanojson/JsonObject;

    invoke-virtual {p0, v4}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/schabi/newpipe/extractor/utils/a;->m(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    return-object p0

    :cond_2
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader;->json:Lcom/grack/nanojson/JsonObject;

    invoke-virtual {p0, v5}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v0, "carouselHeaderRenderer"

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

    new-instance v0, Lgtc;

    invoke-direct {v0}, Lgtc;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/grack/nanojson/JsonObject;

    invoke-direct {v0}, Lcom/grack/nanojson/JsonObject;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/grack/nanojson/JsonObject;

    const-string v0, "topicChannelDetailsRenderer"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    invoke-virtual {p0, v4}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/schabi/newpipe/extractor/utils/a;->m(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    return-object p0

    :cond_3
    :goto_0
    const-string p0, "metadata"

    invoke-virtual {p1, p0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string p1, "channelMetadataRenderer"

    invoke-virtual {p0, p1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string p1, "externalChannelId"

    invoke-virtual {p0, p1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/schabi/newpipe/extractor/utils/a;->m(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    return-object p0

    :cond_4
    invoke-static {p2}, Lorg/schabi/newpipe/extractor/utils/a;->m(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_5

    return-object p2

    :cond_5
    new-instance p0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string p1, "Could not get channel ID"

    invoke-direct {p0, p1}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static r(Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader;Lcom/grack/nanojson/JsonObject;Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_1

    const-string p0, "channelTitle"

    invoke-virtual {p1, p0}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/schabi/newpipe/extractor/utils/a;->m(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string p1, "Could not get channel name"

    invoke-direct {p0, p1}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const-string p1, "metadata"

    invoke-virtual {p2, p1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p1

    const-string v0, "channelMetadataRenderer"

    invoke-virtual {p1, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p1

    const-string v0, "title"

    invoke-virtual {p1, v0}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/schabi/newpipe/extractor/utils/a;->m(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    return-object p1

    :cond_2
    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance p1, Lhtc;

    invoke-direct {p1}, Lhtc;-><init>()V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    new-instance p1, Litc;

    invoke-direct {p1, p2}, Litc;-><init>(Lcom/grack/nanojson/JsonObject;)V

    invoke-static {p0, p1}, Lbtc;->a(Ljava/util/Optional;Ljava/util/function/Supplier;)Ljava/util/Optional;

    move-result-object p0

    new-instance p1, Ljtc;

    invoke-direct {p1}, Ljtc;-><init>()V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static s(Ljava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/extractor/localization/Localization;Lorg/schabi/newpipe/extractor/localization/ContentCountry;)Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$b;
    .locals 9

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x3

    const/4 v3, 0x0

    if-ge v1, v2, :cond_2

    invoke-static {p2, p3}, Lcxc;->y0(Lorg/schabi/newpipe/extractor/localization/Localization;Lorg/schabi/newpipe/extractor/localization/ContentCountry;)Laa5;

    move-result-object v2

    const-string v4, "browseId"

    invoke-virtual {v2, v4, p0}, Laa5;->h(Ljava/lang/String;Ljava/lang/String;)Laa5;

    move-result-object v2

    const-string v5, "params"

    invoke-virtual {v2, v5, p1}, Laa5;->h(Ljava/lang/String;Ljava/lang/String;)Laa5;

    move-result-object v2

    invoke-virtual {v2}, Laa5;->b()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ltc5;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    const-string v5, "browse"

    invoke-static {v5, v2, p2}, Lcxc;->I(Ljava/lang/String;[BLorg/schabi/newpipe/extractor/localization/Localization;)Lcom/grack/nanojson/JsonObject;

    move-result-object v2

    invoke-static {v2}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper;->n(Lcom/grack/nanojson/JsonObject;)V

    const-string v5, "onResponseReceivedActions"

    invoke-virtual {v2, v5}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/grack/nanojson/JsonArray;->getObject(I)Lcom/grack/nanojson/JsonObject;

    move-result-object v5

    const-string v6, "navigateAction"

    invoke-virtual {v5, v6}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v5

    const-string v6, "endpoint"

    invoke-virtual {v5, v6}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v5

    const-string v6, "commandMetadata"

    invoke-virtual {v5, v6}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v6

    const-string v7, "webCommandMetadata"

    invoke-virtual {v6, v7}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v6

    const-string v7, "webPageType"

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "browseEndpoint"

    invoke-virtual {v5, v7}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v5

    invoke-virtual {v5, v4, v8}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "WEB_PAGE_TYPE_BROWSE"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "WEB_PAGE_TYPE_CHANNEL"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    :cond_0
    const-string p0, "UC"

    invoke-virtual {v4, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    add-int/lit8 v1, v1, 0x1

    move-object p0, v4

    goto/16 :goto_0

    :cond_1
    new-instance p0, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;

    const-string p1, "Redirected id is not pointing to a channel"

    invoke-direct {p0, p1}, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    move-object v2, v3

    :cond_3
    if-eqz v2, :cond_4

    invoke-static {v2}, Lcxc;->l(Lcom/grack/nanojson/JsonObject;)V

    new-instance p1, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$b;

    invoke-direct {p1, v2, p0, v3}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$b;-><init>(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;Lptc;)V

    return-object p1

    :cond_4
    new-instance p0, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;

    const-string p1, "Got no channel response after 3 redirects"

    invoke-direct {p0, p1}, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static t(Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader;)Z
    .locals 3

    sget-object v0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$a;->a:[I

    iget-object v1, p0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader;->headerType:Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader$HeaderType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-object p0, p0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader;->json:Lcom/grack/nanojson/JsonObject;

    const-string v0, "badges"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object p0

    invoke-static {p0}, Lcxc;->d0(Lcom/grack/nanojson/JsonArray;)Z

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader;->json:Lcom/grack/nanojson/JsonObject;

    const-string v0, "autoGenerated"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_1
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader;->json:Lcom/grack/nanojson/JsonObject;

    const-string v0, "content"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v0, "pageHeaderViewModel"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v0, "title"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v2, "dynamicTextViewModel"

    invoke-virtual {v0, v2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v2, "text"

    invoke-virtual {v0, v2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v2, "attachmentRuns"

    invoke-virtual {v0, v2}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v0

    invoke-static {v0}, Lcxc;->W(Lcom/grack/nanojson/JsonArray;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v2, "image"

    invoke-virtual {p0, v2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v2, "contentPreviewImageViewModel"

    invoke-virtual {p0, v2}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v1

    :cond_2
    return v0

    :cond_3
    return v1
.end method

.method public static synthetic u(Lcom/grack/nanojson/JsonObject;)Ljava/util/stream/Stream;
    .locals 2

    const-string v0, "tabRenderer"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v0, "content"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v0, "sectionListRenderer"

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

.method public static synthetic v(Lcom/grack/nanojson/JsonObject;)Z
    .locals 1

    const-string v0, "channelAgeGateRenderer"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic w(Lcom/grack/nanojson/JsonObject;)Lcom/grack/nanojson/JsonObject;
    .locals 1

    const-string v0, "channelAgeGateRenderer"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic x(Lcom/grack/nanojson/JsonObject;)Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader;
    .locals 2

    new-instance v0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader;

    sget-object v1, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader$HeaderType;->C4_TABBED:Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader$HeaderType;

    invoke-direct {v0, p0, v1}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader;-><init>(Lcom/grack/nanojson/JsonObject;Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader$HeaderType;)V

    return-object v0
.end method

.method public static synthetic y(Lcom/grack/nanojson/JsonObject;)Z
    .locals 1

    const-string v0, "topicChannelDetailsRenderer"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic z(Lcom/grack/nanojson/JsonObject;)Lcom/grack/nanojson/JsonObject;
    .locals 1

    const-string v0, "topicChannelDetailsRenderer"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    return-object p0
.end method

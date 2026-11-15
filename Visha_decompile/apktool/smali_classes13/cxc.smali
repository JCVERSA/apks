.class public abstract Lcxc;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Ljava/lang/String; = null

.field public static b:Ljava/lang/String; = null

.field public static c:Z = false

.field public static d:Ljava/util/Optional;

.field public static final e:[Ljava/lang/String;

.field public static final f:[Ljava/lang/String;

.field public static g:Ljava/util/Random;

.field public static final h:Ljava/util/regex/Pattern;

.field public static final i:Ljava/util/regex/Pattern;

.field public static final j:Ljava/util/regex/Pattern;

.field public static final k:Ljava/util/regex/Pattern;

.field public static final l:Ljava/util/regex/Pattern;

.field public static final m:Ljava/util/Set;

.field public static final n:Ljava/util/Set;

.field public static final o:Ljava/util/Set;

.field public static p:Z


# direct methods
.method static constructor <clinit>()V
    .locals 29

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    sput-object v0, Lcxc;->d:Ljava/util/Optional;

    const-string v0, "innertube_context_client_version\":\"([0-9\\.]+?)\""

    const-string v1, "client.version=([0-9\\.]+)"

    const-string v2, "INNERTUBE_CONTEXT_CLIENT_VERSION\":\"([0-9\\.]+?)\""

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcxc;->e:[Ljava/lang/String;

    const-string v0, "window\\[\"ytInitialData\"\\]\\s*=\\s*(\\{.*?\\});"

    const-string v1, "var\\s*ytInitialData\\s*=\\s*(\\{.*?\\});"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcxc;->f:[Ljava/lang/String;

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcxc;->g:Ljava/util/Random;

    const-string v0, "&c=WEB"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcxc;->h:Ljava/util/regex/Pattern;

    const-string v0, "&c=WEB_EMBEDDED_PLAYER"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcxc;->i:Ljava/util/regex/Pattern;

    const-string v0, "&c=TVHTML5"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcxc;->j:Ljava/util/regex/Pattern;

    const-string v0, "&c=ANDROID"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcxc;->k:Ljava/util/regex/Pattern;

    const-string v0, "&c=IOS"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcxc;->l:Ljava/util/regex/Pattern;

    const-string v0, "m.google."

    const-string v1, "www.google."

    const-string v2, "google."

    invoke-static {v2, v0, v1}, Ljwc;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcxc;->m:Ljava/util/Set;

    const-string v27, "invidious.moomoo.me"

    const-string v28, "yt.cyberhost.uk"

    const-string v1, "invidio.us"

    const-string v2, "dev.invidio.us"

    const-string v3, "www.invidio.us"

    const-string v4, "redirect.invidious.io"

    const-string v5, "invidious.snopyta.org"

    const-string v6, "yewtu.be"

    const-string v7, "tube.connect.cafe"

    const-string v8, "tubus.eduvid.org"

    const-string v9, "invidious.kavin.rocks"

    const-string v10, "invidious.site"

    const-string v11, "invidious-us.kavin.rocks"

    const-string v12, "piped.kavin.rocks"

    const-string v13, "vid.mint.lgbt"

    const-string v14, "invidiou.site"

    const-string v15, "invidious.fdn.fr"

    const-string v16, "invidious.048596.xyz"

    const-string v17, "invidious.zee.li"

    const-string v18, "vid.puffyan.us"

    const-string v19, "ytprivate.com"

    const-string v20, "invidious.namazso.eu"

    const-string v21, "invidious.silkky.cloud"

    const-string v22, "ytb.trom.tf"

    const-string v23, "invidious.exonip.de"

    const-string v24, "inv.riverside.rocks"

    const-string v25, "invidious.blamefran.net"

    const-string v26, "y.com.cm"

    filled-new-array/range {v1 .. v28}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lzo4;->a([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcxc;->n:Ljava/util/Set;

    const-string v0, "m.youtube.com"

    const-string v1, "music.youtube.com"

    const-string v2, "youtube.com"

    const-string v3, "www.youtube.com"

    invoke-static {v2, v3, v0, v1}, Lkwc;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcxc;->o:Ljava/util/Set;

    const/4 v0, 0x0

    sput-boolean v0, Lcxc;->p:Z

    return-void
.end method

.method public static A()Ljava/util/Map;
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    const-string v1, "https://www.youtube.com"

    invoke-static {v1}, Lcxc;->J(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    const-string v1, "1"

    invoke-static {}, Lcxc;->B()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcxc;->z(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    return-object v0
.end method

.method public static B()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcxc;->a:Ljava/lang/String;

    invoke-static {v0}, Lorg/schabi/newpipe/extractor/utils/a;->m(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcxc;->a:Ljava/lang/String;

    return-object v0

    :cond_0
    :try_start_0
    invoke-static {}, Lcxc;->p()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-static {}, Lcxc;->o()V

    :goto_0
    sget-boolean v0, Lcxc;->c:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcxc;->a:Ljava/lang/String;

    return-object v0

    :cond_1
    invoke-static {}, Lcxc;->Z()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "2.20250122.04.00"

    sput-object v0, Lcxc;->a:Ljava/lang/String;

    return-object v0

    :cond_2
    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;

    const-string v1, "Could not get YouTube WEB client version"

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static C(Ljava/util/stream/Stream;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Lwwc;

    invoke-direct {v0, p1}, Lwwc;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lxwc;

    invoke-direct {p1}, Lxwc;-><init>()V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

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

    new-instance p1, Lywc;

    invoke-direct {p1, p2}, Lywc;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lzwc;

    invoke-direct {p1}, Lzwc;-><init>()V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Laxc;

    invoke-direct {p1}, Laxc;-><init>()V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static D()Ljava/util/Map;
    .locals 2

    invoke-static {}, Lcxc;->v()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lqwc;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v1, "Cookie"

    invoke-static {v1, v0}, Lrwc;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static E(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "user/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://www.youtube.com/feeds/videos.xml?user="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v0, "channel/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const-string v3, "https://www.youtube.com/feeds/videos.xml?channel_id="

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static F(Lcom/grack/nanojson/JsonArray;)Ljava/util/List;
    .locals 2

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

    new-instance v0, Ltwc;

    invoke-direct {v0}, Ltwc;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Luwc;

    invoke-direct {v0}, Luwc;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Lk50;->a()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public static G(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/grack/nanojson/a;->d()Lcom/grack/nanojson/a$a;

    move-result-object v0

    sget-object v1, Lcxc;->f:[Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lorg/schabi/newpipe/extractor/utils/a;->i(Ljava/lang/String;[Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/grack/nanojson/a$a;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/grack/nanojson/JsonObject;
    :try_end_0
    .catch Lcom/grack/nanojson/JsonParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/schabi/newpipe/extractor/utils/Parser$RegexException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v1, "Could not get ytInitialData"

    invoke-direct {v0, v1, p0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static H(Lorg/schabi/newpipe/extractor/localization/Localization;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lorg/schabi/newpipe/extractor/localization/Localization;->DEFAULT:Lorg/schabi/newpipe/extractor/localization/Localization;

    :goto_0
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/localization/Localization;->getCountryCode()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.google.ios.youtube/20.03.02(iPhone16,2; U; CPU iOS 18_2_1 like Mac OS X; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static I(Ljava/lang/String;[BLorg/schabi/newpipe/extractor/localization/Localization;)Lcom/grack/nanojson/JsonObject;
    .locals 4

    invoke-static {}, Lcxc;->T()Ljava/util/Map;

    move-result-object v0

    invoke-static {}, Lorg/schabi/newpipe/extractor/a;->c()Lc23;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https://www.youtube.com/youtubei/v1/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "?prettyPrint=false"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0, v0, p1, p2}, Lc23;->k(Ljava/lang/String;Ljava/util/Map;[BLorg/schabi/newpipe/extractor/localization/Localization;)Lfu8;

    move-result-object p0

    invoke-static {p0}, Lcxc;->R(Lfu8;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Loc5;->k(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    return-object p0
.end method

.method public static J(Ljava/lang/String;)Ljava/util/Map;
    .locals 2

    invoke-static {p0}, Lowc;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    const-string v0, "Origin"

    const-string v1, "Referer"

    invoke-static {v0, p0, v1, p0}, Lpwc;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static K(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/grack/nanojson/JsonObject;->isString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    invoke-static {p0}, Lcxc;->L(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static L(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcxc;->M(Lcom/grack/nanojson/JsonObject;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static M(Lcom/grack/nanojson/JsonObject;Z)Ljava/lang/String;
    .locals 9

    invoke-static {p0}, Lorg/schabi/newpipe/extractor/utils/a;->o(Ljava/util/Map;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const-string v0, "simpleText"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-string v0, "runs"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    return-object v1

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/grack/nanojson/JsonObject;

    const-string v2, "text"

    invoke-virtual {v1, v2}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz p1, :cond_d

    const-string v3, "navigationEndpoint"

    invoke-virtual {v1, v3}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v1, v3}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v3

    invoke-static {v3}, Lcxc;->P(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/schabi/newpipe/extractor/utils/a;->m(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-static {v3}, Lorg/jsoup/nodes/Entities;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Lorg/jsoup/nodes/Entities;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<a href=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\">"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "</a>"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_4
    const-string v3, "bold"

    invoke-virtual {v1, v3}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_5

    invoke-virtual {v1, v3}, Lcom/grack/nanojson/JsonObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    move v3, v6

    goto :goto_1

    :cond_5
    move v3, v5

    :goto_1
    const-string v4, "italics"

    invoke-virtual {v1, v4}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-virtual {v1, v4}, Lcom/grack/nanojson/JsonObject;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    move v4, v6

    goto :goto_2

    :cond_6
    move v4, v5

    :goto_2
    const-string v7, "strikethrough"

    invoke-virtual {v1, v7}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-virtual {v1, v7}, Lcom/grack/nanojson/JsonObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    move v5, v6

    :cond_7
    if-eqz v3, :cond_8

    const-string v1, "<b>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    if-eqz v4, :cond_9

    const-string v1, "<i>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    if-eqz v5, :cond_a

    const-string v1, "<s>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v5, :cond_b

    const-string v1, "</s>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    if-eqz v4, :cond_c

    const-string v1, "</i>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c
    if-eqz v3, :cond_3

    const-string v1, "</b>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_d
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    if-eqz p1, :cond_f

    const-string p1, "\\n"

    const-string v0, "<br>"

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, " {2}"

    const-string v0, " &nbsp;"

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_f
    return-object p0
.end method

.method public static N(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcxc;->L(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not extract text: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static O(Lcom/grack/nanojson/JsonObject;)Ljava/util/List;
    .locals 2

    :try_start_0
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

    const-string v1, "Could not get thumbnails from InfoItem"

    invoke-direct {v0, v1, p0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static P(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;
    .locals 10

    const-string v0, "urlEndpoint"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "https://www.youtube.com"

    const-string v3, "url"

    if-eqz v1, :cond_5

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "https://www.youtube.com/redirect?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-string v1, "/redirect?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v1, :cond_5

    aget-object v6, v0, v5

    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    aget-object v8, v8, v4

    const-string v9, "q"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    aget-object p0, p0, v0

    invoke-static {p0}, Lorg/schabi/newpipe/extractor/utils/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    return-object v0

    :cond_3
    const-string v1, "/channel"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "/user"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "/watch"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    const-string v0, "browseEndpoint"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    const-string v4, "https://www.youtube.com/playlist?list="

    if-eqz v1, :cond_8

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "canonicalBaseUrl"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "browseId"

    invoke-virtual {v0, v5}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    const-string v5, "UC"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://www.youtube.com/channel/"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6
    const-string v5, "VL"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    const/4 p0, 0x2

    invoke-virtual {v0, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_7
    invoke-static {v1}, Lorg/schabi/newpipe/extractor/utils/a;->m(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_8
    const-string v0, "watchEndpoint"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    const-string v5, "playlistId"

    if-eqz v1, :cond_b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://www.youtube.com/watch?v="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v2

    const-string v3, "videoId"

    invoke-virtual {v2, v3}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v2, "&list="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v2

    const-string v3, "startTimeSeconds"

    invoke-virtual {v2, v3}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    const-string v2, "&t="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/grack/nanojson/JsonObject;->getInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_b
    const-string v0, "watchPlaylistEndpoint"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    invoke-virtual {p0, v5}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_c
    const-string v0, "commandMetadata"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v0, "webCommandMetadata"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p0, v3}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_d
    const/4 p0, 0x0

    return-object p0
.end method

.method public static Q(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lorg/schabi/newpipe/extractor/utils/a;->o(Ljava/util/Map;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const-string v0, "runs"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grack/nanojson/JsonObject;

    const-string v2, "navigationEndpoint"

    invoke-virtual {v0, v2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    invoke-static {v0}, Lcxc;->P(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/schabi/newpipe/extractor/utils/a;->m(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    return-object v0

    :cond_3
    return-object v1
.end method

.method public static R(Lfu8;)Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Lfu8;->d()I

    move-result v0

    const/16 v1, 0x194

    const-string v2, "\")"

    if-eq v0, v1, :cond_5

    invoke-virtual {p0}, Lfu8;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v3, 0x32

    if-lt v1, v3, :cond_4

    new-instance v1, Ljava/net/URL;

    invoke-virtual {p0}, Lfu8;->b()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    const-string v4, "www.youtube.com"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v3, "/oops"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "/error"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/schabi/newpipe/extractor/exceptions/ContentNotAvailableException;

    const-string v0, "Content unavailable"

    invoke-direct {p0, v0}, Lorg/schabi/newpipe/extractor/exceptions/ContentNotAvailableException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    const-string v1, "Content-Type"

    invoke-virtual {p0, v1}, Lfu8;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v3, "text/html"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    invoke-virtual {p0}, Lfu8;->b()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got HTML document, expected JSON response (latest url was: \""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_1
    return-object v0

    :cond_4
    new-instance p0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v0, "JSON response is too short"

    invoke-direct {p0, v0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ContentNotAvailableException;

    invoke-virtual {p0}, Lfu8;->d()I

    move-result v1

    invoke-virtual {p0}, Lfu8;->f()Ljava/lang/String;

    move-result-object p0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not found (\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/extractor/exceptions/ContentNotAvailableException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static S(Ln05;Lorg/schabi/newpipe/extractor/localization/Localization;Lorg/schabi/newpipe/extractor/localization/ContentCountry;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 0

    invoke-static {p1, p2, p0, p5}, Lcxc;->z0(Lorg/schabi/newpipe/extractor/localization/Localization;Lorg/schabi/newpipe/extractor/localization/ContentCountry;Ln05;Ljava/lang/String;)Laa5;

    move-result-object p0

    invoke-virtual {p0}, Laa5;->b()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ltc5;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-static {}, Lorg/schabi/newpipe/extractor/a;->c()Lc23;

    move-result-object p1

    if-eqz p6, :cond_0

    const-string p2, "guide"

    goto :goto_0

    :cond_0
    const-string p2, "visitor_id"

    :goto_0
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "?prettyPrint=false"

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, p3, p0}, Lc23;->j(Ljava/lang/String;Ljava/util/Map;[B)Lfu8;

    move-result-object p0

    invoke-static {p0}, Lcxc;->R(Lfu8;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Loc5;->k(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string p1, "responseContext"

    invoke-virtual {p0, p1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string p1, "visitorData"

    invoke-virtual {p0, p1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/schabi/newpipe/extractor/utils/a;->m(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    return-object p0

    :cond_1
    new-instance p0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string p1, "Could not get visitorData"

    invoke-direct {p0, p1}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static T()Ljava/util/Map;
    .locals 3

    invoke-static {}, Lcxc;->A()Ljava/util/Map;

    move-result-object v0

    invoke-static {}, Lcxc;->v()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Liwc;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v2, "Cookie"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static U()Ljava/lang/String;
    .locals 4

    sget-object v0, Lcxc;->b:Ljava/lang/String;

    invoke-static {v0}, Lorg/schabi/newpipe/extractor/utils/a;->m(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcxc;->b:Ljava/lang/String;

    return-object v0

    :cond_0
    invoke-static {}, Lcxc;->a0()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "1.20250122.01.00"

    sput-object v0, Lcxc;->b:Ljava/lang/String;

    return-object v0

    :cond_1
    const/4 v0, 0x1

    :try_start_0
    const-string v1, "https://music.youtube.com"

    invoke-static {v1}, Lcxc;->J(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-static {}, Lorg/schabi/newpipe/extractor/a;->c()Lc23;

    move-result-object v2

    const-string v3, "https://music.youtube.com/sw.js"

    invoke-virtual {v2, v3, v1}, Lc23;->c(Ljava/lang/String;Ljava/util/Map;)Lfu8;

    move-result-object v1

    invoke-virtual {v1}, Lfu8;->c()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcxc;->e:[Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lorg/schabi/newpipe/extractor/utils/a;->i(Ljava/lang/String;[Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcxc;->b:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-static {}, Lorg/schabi/newpipe/extractor/a;->c()Lc23;

    move-result-object v1

    const-string v2, "https://music.youtube.com/?ucbcb=1"

    invoke-static {}, Lcxc;->D()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lc23;->c(Ljava/lang/String;Ljava/util/Map;)Lfu8;

    move-result-object v1

    invoke-virtual {v1}, Lfu8;->c()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcxc;->e:[Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lorg/schabi/newpipe/extractor/utils/a;->i(Ljava/lang/String;[Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcxc;->b:Ljava/lang/String;

    :goto_0
    sget-object v0, Lcxc;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static V()Ljava/util/Map;
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    const-string v1, "https://music.youtube.com"

    invoke-static {v1}, Lcxc;->J(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    const-string v1, "67"

    sget-object v2, Lcxc;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lcxc;->z(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    return-object v0
.end method

.method public static W(Lcom/grack/nanojson/JsonArray;)Z
    .locals 2

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

    new-instance v0, Lswc;

    invoke-direct {v0}, Lswc;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public static X()Z
    .locals 1

    sget-boolean v0, Lcxc;->p:Z

    return v0
.end method

.method public static Y(Ljava/lang/String;)Z
    .locals 2

    invoke-static {p0}, Lcxc;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    sget-object p0, Lcxc;->m:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, Lvwc;

    invoke-direct {v1, v0}, Lvwc;-><init>(Ljava/net/URL;)V

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public static Z()Z
    .locals 6

    sget-object v0, Lcxc;->d:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcxc;->d:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    invoke-static {}, Ltc5;->a()Lzb5;

    move-result-object v0

    invoke-virtual {v0}, Luc5;->n()Luc5;

    move-result-object v0

    check-cast v0, Lzb5;

    const-string v1, "context"

    invoke-virtual {v0, v1}, Luc5;->o(Ljava/lang/String;)Luc5;

    move-result-object v0

    check-cast v0, Lzb5;

    const-string v1, "client"

    invoke-virtual {v0, v1}, Luc5;->o(Ljava/lang/String;)Luc5;

    move-result-object v0

    check-cast v0, Lzb5;

    const-string v1, "hl"

    const-string v2, "en-GB"

    invoke-virtual {v0, v1, v2}, Luc5;->E(Ljava/lang/String;Ljava/lang/String;)Luc5;

    move-result-object v0

    check-cast v0, Lzb5;

    const-string v1, "gl"

    const-string v2, "GB"

    invoke-virtual {v0, v1, v2}, Luc5;->E(Ljava/lang/String;Ljava/lang/String;)Luc5;

    move-result-object v0

    check-cast v0, Lzb5;

    const-string v1, "clientName"

    const-string v2, "WEB"

    invoke-virtual {v0, v1, v2}, Luc5;->E(Ljava/lang/String;Ljava/lang/String;)Luc5;

    move-result-object v0

    check-cast v0, Lzb5;

    const-string v1, "clientVersion"

    const-string v2, "2.20250122.04.00"

    invoke-virtual {v0, v1, v2}, Luc5;->E(Ljava/lang/String;Ljava/lang/String;)Luc5;

    move-result-object v0

    check-cast v0, Lzb5;

    const-string v1, "platform"

    const-string v3, "DESKTOP"

    invoke-virtual {v0, v1, v3}, Luc5;->E(Ljava/lang/String;Ljava/lang/String;)Luc5;

    move-result-object v0

    check-cast v0, Lzb5;

    const-string v1, "utcOffsetMinutes"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Luc5;->B(Ljava/lang/String;I)Luc5;

    move-result-object v0

    check-cast v0, Lzb5;

    invoke-virtual {v0}, Luc5;->j()Luc5;

    move-result-object v0

    check-cast v0, Lzb5;

    const-string v1, "request"

    invoke-virtual {v0, v1}, Luc5;->o(Ljava/lang/String;)Luc5;

    move-result-object v0

    check-cast v0, Lzb5;

    const-string v1, "internalExperimentFlags"

    invoke-virtual {v0, v1}, Luc5;->d(Ljava/lang/String;)Luc5;

    move-result-object v0

    check-cast v0, Lzb5;

    invoke-virtual {v0}, Luc5;->j()Luc5;

    move-result-object v0

    check-cast v0, Lzb5;

    const-string v1, "useSsl"

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v4}, Luc5;->F(Ljava/lang/String;Z)Luc5;

    move-result-object v0

    check-cast v0, Lzb5;

    invoke-virtual {v0}, Luc5;->j()Luc5;

    move-result-object v0

    check-cast v0, Lzb5;

    const-string v1, "user"

    invoke-virtual {v0, v1}, Luc5;->o(Ljava/lang/String;)Luc5;

    move-result-object v0

    check-cast v0, Lzb5;

    const-string v1, "lockedSafetyMode"

    invoke-virtual {v0, v1, v3}, Luc5;->F(Ljava/lang/String;Z)Luc5;

    move-result-object v0

    check-cast v0, Lzb5;

    invoke-virtual {v0}, Luc5;->j()Luc5;

    move-result-object v0

    check-cast v0, Lzb5;

    invoke-virtual {v0}, Luc5;->j()Luc5;

    move-result-object v0

    check-cast v0, Lzb5;

    const-string v1, "fetchLiveState"

    invoke-virtual {v0, v1, v4}, Luc5;->F(Ljava/lang/String;Z)Luc5;

    move-result-object v0

    check-cast v0, Lzb5;

    invoke-virtual {v0}, Luc5;->j()Luc5;

    move-result-object v0

    check-cast v0, Lzb5;

    invoke-virtual {v0}, Lzb5;->H()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const-string v1, "1"

    invoke-static {v1, v2}, Lcxc;->z(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-static {}, Lorg/schabi/newpipe/extractor/a;->c()Lc23;

    move-result-object v2

    const-string v5, "https://www.youtube.com/youtubei/v1/guide?prettyPrint=false"

    invoke-virtual {v2, v5, v1, v0}, Lc23;->j(Ljava/lang/String;Ljava/util/Map;[B)Lfu8;

    move-result-object v0

    invoke-virtual {v0}, Lfu8;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lfu8;->d()I

    move-result v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x1388

    if-le v1, v2, :cond_1

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_1

    move v3, v4

    :cond_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    sput-object v0, Lcxc;->d:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static synthetic a(Lcom/grack/nanojson/JsonObject;)Lorg/schabi/newpipe/extractor/Image;
    .locals 0

    invoke-static {p0}, Lcxc;->s0(Lcom/grack/nanojson/JsonObject;)Lorg/schabi/newpipe/extractor/Image;

    move-result-object p0

    return-object p0
.end method

.method public static a0()Z
    .locals 6

    invoke-static {}, Ltc5;->a()Lzb5;

    move-result-object v0

    invoke-virtual {v0}, Luc5;->n()Luc5;

    move-result-object v0

    check-cast v0, Lzb5;

    const-string v1, "context"

    invoke-virtual {v0, v1}, Luc5;->o(Ljava/lang/String;)Luc5;

    move-result-object v0

    check-cast v0, Lzb5;

    const-string v1, "client"

    invoke-virtual {v0, v1}, Luc5;->o(Ljava/lang/String;)Luc5;

    move-result-object v0

    check-cast v0, Lzb5;

    const-string v1, "clientName"

    const-string v2, "WEB_REMIX"

    invoke-virtual {v0, v1, v2}, Luc5;->E(Ljava/lang/String;Ljava/lang/String;)Luc5;

    move-result-object v0

    check-cast v0, Lzb5;

    const-string v1, "clientVersion"

    const-string v2, "1.20250122.01.00"

    invoke-virtual {v0, v1, v2}, Luc5;->E(Ljava/lang/String;Ljava/lang/String;)Luc5;

    move-result-object v0

    check-cast v0, Lzb5;

    const-string v1, "hl"

    const-string v2, "en-GB"

    invoke-virtual {v0, v1, v2}, Luc5;->E(Ljava/lang/String;Ljava/lang/String;)Luc5;

    move-result-object v0

    check-cast v0, Lzb5;

    const-string v1, "gl"

    const-string v2, "GB"

    invoke-virtual {v0, v1, v2}, Luc5;->E(Ljava/lang/String;Ljava/lang/String;)Luc5;

    move-result-object v0

    check-cast v0, Lzb5;

    const-string v1, "platform"

    const-string v2, "DESKTOP"

    invoke-virtual {v0, v1, v2}, Luc5;->E(Ljava/lang/String;Ljava/lang/String;)Luc5;

    move-result-object v0

    check-cast v0, Lzb5;

    const-string v1, "utcOffsetMinutes"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Luc5;->B(Ljava/lang/String;I)Luc5;

    move-result-object v0

    check-cast v0, Lzb5;

    invoke-virtual {v0}, Luc5;->j()Luc5;

    move-result-object v0

    check-cast v0, Lzb5;

    const-string v1, "request"

    invoke-virtual {v0, v1}, Luc5;->o(Ljava/lang/String;)Luc5;

    move-result-object v0

    check-cast v0, Lzb5;

    const-string v1, "internalExperimentFlags"

    invoke-virtual {v0, v1}, Luc5;->d(Ljava/lang/String;)Luc5;

    move-result-object v0

    check-cast v0, Lzb5;

    invoke-virtual {v0}, Luc5;->j()Luc5;

    move-result-object v0

    check-cast v0, Lzb5;

    const-string v1, "useSsl"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Luc5;->F(Ljava/lang/String;Z)Luc5;

    move-result-object v0

    check-cast v0, Lzb5;

    invoke-virtual {v0}, Luc5;->j()Luc5;

    move-result-object v0

    check-cast v0, Lzb5;

    const-string v1, "user"

    invoke-virtual {v0, v1}, Luc5;->o(Ljava/lang/String;)Luc5;

    move-result-object v0

    check-cast v0, Lzb5;

    const-string v1, "lockedSafetyMode"

    invoke-virtual {v0, v1, v2}, Luc5;->F(Ljava/lang/String;Z)Luc5;

    move-result-object v0

    check-cast v0, Lzb5;

    invoke-virtual {v0}, Luc5;->j()Luc5;

    move-result-object v0

    check-cast v0, Lzb5;

    invoke-virtual {v0}, Luc5;->j()Luc5;

    move-result-object v0

    check-cast v0, Lzb5;

    const-string v1, "input"

    const-string v4, ""

    invoke-virtual {v0, v1, v4}, Luc5;->E(Ljava/lang/String;Ljava/lang/String;)Luc5;

    move-result-object v0

    check-cast v0, Lzb5;

    invoke-virtual {v0}, Luc5;->j()Luc5;

    move-result-object v0

    check-cast v0, Lzb5;

    invoke-virtual {v0}, Lzb5;->H()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    const-string v4, "https://music.youtube.com"

    invoke-static {v4}, Lcxc;->J(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    const-string v4, "67"

    const-string v5, "2.20250122.04.00"

    invoke-static {v4, v5}, Lcxc;->z(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    invoke-static {}, Lorg/schabi/newpipe/extractor/a;->c()Lc23;

    move-result-object v4

    const-string v5, "https://music.youtube.com/youtubei/v1/music/get_search_suggestions?prettyPrint=false"

    invoke-virtual {v4, v5, v1, v0}, Lc23;->j(Ljava/lang/String;Ljava/util/Map;[B)Lfu8;

    move-result-object v0

    invoke-virtual {v0}, Lfu8;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v4, 0x1f4

    if-le v1, v4, :cond_0

    invoke-virtual {v0}, Lfu8;->d()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    move v2, v3

    :cond_0
    return v2
.end method

.method public static synthetic b(Lcom/grack/nanojson/JsonObject;)Z
    .locals 0

    invoke-static {p0}, Lcxc;->u0(Lcom/grack/nanojson/JsonObject;)Z

    move-result p0

    return p0
.end method

.method public static b0(Ljava/net/URL;)Z
    .locals 1

    invoke-virtual {p0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object p0

    const-string v0, "hooktube.com"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic c(Ljava/lang/String;Lcom/grack/nanojson/JsonObject;)Z
    .locals 0

    invoke-static {p0, p1}, Lcxc;->o0(Ljava/lang/String;Lcom/grack/nanojson/JsonObject;)Z

    move-result p0

    return p0
.end method

.method public static c0(Ljava/net/URL;)Z
    .locals 2

    sget-object v0, Lcxc;->n:Ljava/util/Set;

    invoke-virtual {p0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object p0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic d(Lcom/grack/nanojson/JsonObject;)Ljava/util/stream/Stream;
    .locals 0

    invoke-static {p0}, Lcxc;->n0(Lcom/grack/nanojson/JsonObject;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static d0(Lcom/grack/nanojson/JsonArray;)Z
    .locals 3

    invoke-static {p0}, Lorg/schabi/newpipe/extractor/utils/a;->n(Ljava/util/Collection;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grack/nanojson/JsonObject;

    const-string v2, "metadataBadgeRenderer"

    invoke-virtual {v0, v2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v2, "style"

    invoke-virtual {v0, v2}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v2, "BADGE_STYLE_TYPE_VERIFIED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "BADGE_STYLE_TYPE_VERIFIED_ARTIST"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    return v1
.end method

.method public static synthetic e(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcxc;->p0(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static e0(Ljava/net/URL;)Z
    .locals 1

    invoke-virtual {p0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object p0

    const-string v0, "y2u.be"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic f(Ljava/lang/String;Lcom/grack/nanojson/JsonObject;)Z
    .locals 0

    invoke-static {p0, p1}, Lcxc;->m0(Ljava/lang/String;Lcom/grack/nanojson/JsonObject;)Z

    move-result p0

    return p0
.end method

.method public static f0(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "RDCM"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic g(Ljava/net/URL;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0, p1}, Lcxc;->v0(Ljava/net/URL;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static g0(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "RDGMEM"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic h(Lcom/grack/nanojson/JsonObject;)Z
    .locals 0

    invoke-static {p0}, Lcxc;->t0(Lcom/grack/nanojson/JsonObject;)Z

    move-result p0

    return p0
.end method

.method public static h0(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "RD"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic i(Lcom/grack/nanojson/JsonObject;)Z
    .locals 0

    invoke-static {p0}, Lcxc;->r0(Lcom/grack/nanojson/JsonObject;)Z

    move-result p0

    return p0
.end method

.method public static i0(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "RDAMVM"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "RDCLAK"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

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

.method public static synthetic j(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lcxc;->q0(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static j0(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "RDMM"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static k(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/utils/a;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    :cond_1
    :goto_0
    return v0
.end method

.method public static k0(Ljava/net/URL;)Z
    .locals 1

    invoke-virtual {p0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object p0

    const-string v0, "www.youtube-nocookie.com"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "youtu.be"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

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

.method public static l(Lcom/grack/nanojson/JsonObject;)V
    .locals 3

    const-string v0, "alerts"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object p0

    invoke-static {p0}, Lorg/schabi/newpipe/extractor/utils/a;->n(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonArray;->getObject(I)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v0, "alertRenderer"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v0, "text"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    invoke-static {v0}, Lcxc;->L(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "type"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "ERROR"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    if-eqz v0, :cond_3

    const-string p0, "This account has been terminated"

    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "This channel was removed"

    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_0
    const-string p0, ".*violat(ed|ion|ing).*"

    invoke-virtual {v0, p0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_2

    const-string p0, "infringement"

    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Lorg/schabi/newpipe/extractor/exceptions/AccountTerminatedException;

    invoke-direct {p0, v0}, Lorg/schabi/newpipe/extractor/exceptions/AccountTerminatedException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    new-instance p0, Lorg/schabi/newpipe/extractor/exceptions/AccountTerminatedException;

    sget-object v1, Lorg/schabi/newpipe/extractor/exceptions/AccountTerminatedException$Reason;->VIOLATION:Lorg/schabi/newpipe/extractor/exceptions/AccountTerminatedException$Reason;

    invoke-direct {p0, v0, v1}, Lorg/schabi/newpipe/extractor/exceptions/AccountTerminatedException;-><init>(Ljava/lang/String;Lorg/schabi/newpipe/extractor/exceptions/AccountTerminatedException$Reason;)V

    throw p0

    :cond_3
    new-instance p0, Lorg/schabi/newpipe/extractor/exceptions/ContentNotAvailableException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got error: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/schabi/newpipe/extractor/exceptions/ContentNotAvailableException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    return-void
.end method

.method public static l0(Ljava/net/URL;)Z
    .locals 2

    sget-object v0, Lcxc;->o:Ljava/util/Set;

    invoke-virtual {p0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object p0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static m(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/stream/AudioTrackType;
    .locals 9

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const-string p0, "xtags"

    invoke-static {v4, p0}, Lorg/schabi/newpipe/extractor/utils/a;->h(Ljava/net/URL;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_0

    return-object v3

    :cond_0
    const-string v4, ":"

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v4, p0

    move v5, v1

    :goto_0
    if-ge v5, v4, :cond_2

    aget-object v6, p0, v5

    const-string v7, "="

    invoke-virtual {v6, v7, v0}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    if-le v7, v2, :cond_1

    aget-object v7, v6, v1

    const-string v8, "acont"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    aget-object p0, v6, v2

    goto :goto_1

    :cond_1
    add-int/2addr v5, v2

    goto :goto_0

    :cond_2
    move-object p0, v3

    :goto_1
    if-nez p0, :cond_3

    return-object v3

    :cond_3
    const/4 v4, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :goto_2
    move v0, v4

    goto :goto_3

    :sswitch_0
    const-string v0, "original"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_2

    :cond_4
    const/4 v0, 0x4

    goto :goto_3

    :sswitch_1
    const-string v0, "dubbed-auto"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_2

    :cond_5
    const/4 v0, 0x3

    goto :goto_3

    :sswitch_2
    const-string v1, "secondary"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto :goto_2

    :sswitch_3
    const-string v0, "dubbed"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_2

    :cond_6
    move v0, v2

    goto :goto_3

    :sswitch_4
    const-string v0, "descriptive"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto :goto_2

    :cond_7
    move v0, v1

    :cond_8
    :goto_3
    packed-switch v0, :pswitch_data_0

    return-object v3

    :pswitch_0
    sget-object p0, Lorg/schabi/newpipe/extractor/stream/AudioTrackType;->ORIGINAL:Lorg/schabi/newpipe/extractor/stream/AudioTrackType;

    return-object p0

    :pswitch_1
    sget-object p0, Lorg/schabi/newpipe/extractor/stream/AudioTrackType;->SECONDARY:Lorg/schabi/newpipe/extractor/stream/AudioTrackType;

    return-object p0

    :pswitch_2
    sget-object p0, Lorg/schabi/newpipe/extractor/stream/AudioTrackType;->DUBBED:Lorg/schabi/newpipe/extractor/stream/AudioTrackType;

    return-object p0

    :pswitch_3
    sget-object p0, Lorg/schabi/newpipe/extractor/stream/AudioTrackType;->DESCRIPTIVE:Lorg/schabi/newpipe/extractor/stream/AudioTrackType;

    return-object p0

    :catch_0
    return-object v3

    nop

    :sswitch_data_0
    .sparse-switch
        -0x66ca7b34 -> :sswitch_4
        -0x4ebc9b10 -> :sswitch_3
        -0x30bb8e8c -> :sswitch_2
        -0x1e91cf94 -> :sswitch_1
        0x523289d1 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic m0(Ljava/lang/String;Lcom/grack/nanojson/JsonObject;)Z
    .locals 2

    const-string v0, "service"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static n(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "webcache.googleusercontent.com"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "cache:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    aget-object p0, p0, v0

    :cond_1
    return-object p0
.end method

.method public static synthetic n0(Lcom/grack/nanojson/JsonObject;)Ljava/util/stream/Stream;
    .locals 1

    const-string v0, "params"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static o()V
    .locals 4

    sget-boolean v0, Lcxc;->c:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lorg/schabi/newpipe/extractor/a;->c()Lc23;

    move-result-object v0

    const-string v1, "https://www.youtube.com/results?search_query=&ucbcb=1"

    invoke-static {}, Lcxc;->D()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lc23;->c(Ljava/lang/String;Ljava/util/Map;)Lfu8;

    move-result-object v0

    invoke-virtual {v0}, Lfu8;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcxc;->G(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v1

    const-string v2, "responseContext"

    invoke-virtual {v1, v2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v1

    const-string v2, "serviceTrackingParams"

    invoke-virtual {v1, v2}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lw50;

    const-class v3, Lcom/grack/nanojson/JsonObject;

    invoke-direct {v2, v3}, Lw50;-><init>(Ljava/lang/Class;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lx50;

    invoke-direct {v2, v3}, Lx50;-><init>(Ljava/lang/Class;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    const-string v2, "CSI"

    const-string v3, "cver"

    invoke-static {v1, v2, v3}, Lcxc;->C(Ljava/util/stream/Stream;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcxc;->a:Ljava/lang/String;

    const/4 v3, 0x1

    if-nez v2, :cond_1

    :try_start_0
    sget-object v2, Lcxc;->e:[Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lorg/schabi/newpipe/extractor/utils/a;->i(Ljava/lang/String;[Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcxc;->a:Ljava/lang/String;
    :try_end_0
    .catch Lorg/schabi/newpipe/extractor/utils/Parser$RegexException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    sget-object v0, Lcxc;->a:Ljava/lang/String;

    invoke-static {v0}, Lorg/schabi/newpipe/extractor/utils/a;->m(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "ECATCHER"

    const-string v2, "client.version"

    invoke-static {v1, v0, v2}, Lcxc;->C(Ljava/util/stream/Stream;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcxc;->a:Ljava/lang/String;

    :cond_2
    sget-object v0, Lcxc;->a:Ljava/lang/String;

    if-eqz v0, :cond_3

    sput-boolean v3, Lcxc;->c:Z

    return-void

    :cond_3
    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v1, "Could not extract YouTube WEB InnerTube client version from HTML search results page"

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static synthetic o0(Ljava/lang/String;Lcom/grack/nanojson/JsonObject;)Z
    .locals 2

    const-string v0, "key"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static p()V
    .locals 3

    sget-boolean v0, Lcxc;->c:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "https://www.youtube.com"

    invoke-static {v0}, Lcxc;->J(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-static {}, Lorg/schabi/newpipe/extractor/a;->c()Lc23;

    move-result-object v1

    const-string v2, "https://www.youtube.com/sw.js"

    invoke-virtual {v1, v2, v0}, Lc23;->c(Ljava/lang/String;Ljava/util/Map;)Lfu8;

    move-result-object v0

    invoke-virtual {v0}, Lfu8;->c()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    sget-object v1, Lcxc;->e:[Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lorg/schabi/newpipe/extractor/utils/a;->i(Ljava/lang/String;[Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcxc;->a:Ljava/lang/String;
    :try_end_0
    .catch Lorg/schabi/newpipe/extractor/utils/Parser$RegexException; {:try_start_0 .. :try_end_0} :catch_0

    sput-boolean v2, Lcxc;->c:Z

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v2, "Could not extract YouTube WEB InnerTube client version from sw.js"

    invoke-direct {v1, v2, v0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static synthetic p0(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;
    .locals 1

    const-string v0, "value"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static q(Ljava/lang/String;Lfu8;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p1}, Lfu8;->e()Ljava/util/Map;

    move-result-object p1

    const-string v0, "set-cookie"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    const-string v0, ""

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x1

    const-string v3, ";"

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static synthetic q0(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lorg/schabi/newpipe/extractor/utils/a;->m(Ljava/lang/String;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static r(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo$PlaylistType;
    .locals 1

    invoke-static {p0}, Lorg/schabi/newpipe/extractor/utils/a;->m(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {p0}, Lcxc;->i0(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo$PlaylistType;->MIX_MUSIC:Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo$PlaylistType;

    return-object p0

    :cond_0
    invoke-static {p0}, Lcxc;->f0(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo$PlaylistType;->MIX_CHANNEL:Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo$PlaylistType;

    return-object p0

    :cond_1
    invoke-static {p0}, Lcxc;->g0(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p0, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo$PlaylistType;->MIX_GENRE:Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo$PlaylistType;

    return-object p0

    :cond_2
    invoke-static {p0}, Lcxc;->h0(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    sget-object p0, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo$PlaylistType;->MIX_STREAM:Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo$PlaylistType;

    return-object p0

    :cond_3
    sget-object p0, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo$PlaylistType;->NORMAL:Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo$PlaylistType;

    return-object p0

    :cond_4
    new-instance p0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v0, "Could not extract playlist type from empty playlist id"

    invoke-direct {p0, v0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic r0(Lcom/grack/nanojson/JsonObject;)Z
    .locals 1

    const-string v0, "url"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/schabi/newpipe/extractor/utils/a;->m(Ljava/lang/String;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static s(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo$PlaylistType;
    .locals 2

    :try_start_0
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/utils/a;->x(Ljava/lang/String;)Ljava/net/URL;

    move-result-object p0

    const-string v0, "list"

    invoke-static {p0, v0}, Lorg/schabi/newpipe/extractor/utils/a;->h(Ljava/net/URL;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcxc;->r(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo$PlaylistType;

    move-result-object p0
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v1, "Could not extract playlist type from malformed url"

    invoke-direct {v0, v1, p0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static synthetic s0(Lcom/grack/nanojson/JsonObject;)Lorg/schabi/newpipe/extractor/Image;
    .locals 5

    const-string v0, "height"

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/grack/nanojson/JsonObject;->getInt(Ljava/lang/String;I)I

    move-result v0

    new-instance v2, Lorg/schabi/newpipe/extractor/Image;

    const-string v3, "url"

    invoke-virtual {p0, v3}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcxc;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "width"

    invoke-virtual {p0, v4, v1}, Lcom/grack/nanojson/JsonObject;->getInt(Ljava/lang/String;I)I

    move-result p0

    invoke-static {v0}, Lorg/schabi/newpipe/extractor/Image$ResolutionLevel;->fromHeight(I)Lorg/schabi/newpipe/extractor/Image$ResolutionLevel;

    move-result-object v1

    invoke-direct {v2, v3, v0, p0, v1}, Lorg/schabi/newpipe/extractor/Image;-><init>(Ljava/lang/String;IILorg/schabi/newpipe/extractor/Image$ResolutionLevel;)V

    return-object v2
.end method

.method public static t(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lorg/schabi/newpipe/extractor/utils/a;->m(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {p0}, Lcxc;->j0(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p0}, Lcxc;->i0(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {p0}, Lcxc;->f0(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {p0}, Lcxc;->g0(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {p0}, Lcxc;->h0(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_2

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Video id could not be determined from mix id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Video id could not be determined from playlist id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Video id could not be determined from genre mix id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Video id could not be determined from channel mix id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance p0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v0, "Video id could not be determined from empty playlist id"

    invoke-direct {p0, v0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic t0(Lcom/grack/nanojson/JsonObject;)Z
    .locals 1

    const-string v0, "clientResource"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v0, "imageName"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "CHECK_CIRCLE_FILLED"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "AUDIO_BADGE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "MUSIC_FILLED"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

.method public static u(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "//"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_0
    const-string v0, "http://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lorg/schabi/newpipe/extractor/utils/a;->w(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const-string v0, "https://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_2
    :goto_0
    return-object p0
.end method

.method public static synthetic u0(Lcom/grack/nanojson/JsonObject;)Z
    .locals 2

    const-string v0, "element"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v0, "type"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v0, "imageType"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v0, "image"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v0, "sources"

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

    new-instance v0, Lbxc;

    invoke-direct {v0}, Lbxc;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public static v()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcxc;->X()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CAISAiAD"

    goto :goto_0

    :cond_0
    const-string v0, "CAE="

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SOCS="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic v0(Ljava/net/URL;Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static w()Ljava/lang/String;
    .locals 3

    const/16 v0, 0x10

    sget-object v1, Lcxc;->g:Ljava/util/Random;

    const-string v2, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_"

    invoke-static {v2, v0, v1}, Lrn8;->a(Ljava/lang/String;ILjava/util/Random;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static w0(Ljava/lang/String;)Ljava/time/OffsetDateTime;
    .locals 4

    :try_start_0
    invoke-static {p0}, Ljava/time/OffsetDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/OffsetDateTime;

    move-result-object p0
    :try_end_0
    .catch Ljava/time/format/DateTimeParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :try_start_1
    invoke-static {p0}, Ljava/time/LocalDate;->parse(Ljava/lang/CharSequence;)Ljava/time/LocalDate;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/LocalDate;->atStartOfDay()Ljava/time/LocalDateTime;

    move-result-object v0

    sget-object v1, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    invoke-virtual {v0, v1}, Ljava/time/LocalDateTime;->atOffset(Ljava/time/ZoneOffset;)Ljava/time/OffsetDateTime;

    move-result-object p0
    :try_end_1
    .catch Ljava/time/format/DateTimeParseException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_1
    move-exception v0

    new-instance v1, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not parse date: \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\""

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static x()Ljava/lang/String;
    .locals 3

    const/16 v0, 0xc

    sget-object v1, Lcxc;->g:Ljava/util/Random;

    const-string v2, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_"

    invoke-static {v2, v0, v1}, Lrn8;->a(Ljava/lang/String;ILjava/util/Random;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static x0(Ljava/lang/String;)I
    .locals 6

    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "\\."

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/16 v1, 0x18

    const/16 v2, 0x3c

    const/4 v3, 0x1

    filled-new-array {v1, v2, v2, v3}, [I

    move-result-object v1

    array-length v2, v0

    rsub-int/lit8 v2, v2, 0x4

    if-ltz v2, :cond_2

    const/4 p0, 0x0

    move v3, p0

    :goto_1
    array-length v4, v0

    if-ge p0, v4, :cond_1

    add-int v4, p0, v2

    aget v4, v1, v4

    aget-object v5, v0, p0

    invoke-static {v5}, Lcxc;->k(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v3, v5

    mul-int/2addr v3, v4

    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_1
    return v3

    :cond_2
    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error duration string with unknown format: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static y(Lorg/schabi/newpipe/extractor/localization/Localization;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lorg/schabi/newpipe/extractor/localization/Localization;->DEFAULT:Lorg/schabi/newpipe/extractor/localization/Localization;

    :goto_0
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/localization/Localization;->getCountryCode()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.google.android.youtube/19.28.35 (Linux; U; Android 15; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ") gzip"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static y0(Lorg/schabi/newpipe/extractor/localization/Localization;Lorg/schabi/newpipe/extractor/localization/ContentCountry;)Laa5;
    .locals 2

    invoke-static {}, Lcom/grack/nanojson/JsonObject;->builder()Laa5;

    move-result-object v0

    const-string v1, "context"

    invoke-virtual {v0, v1}, Laa5;->e(Ljava/lang/String;)Laa5;

    move-result-object v0

    const-string v1, "client"

    invoke-virtual {v0, v1}, Laa5;->e(Ljava/lang/String;)Laa5;

    move-result-object v0

    const-string v1, "hl"

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/localization/Localization;->getLocalizationCode()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Laa5;->h(Ljava/lang/String;Ljava/lang/String;)Laa5;

    move-result-object p0

    const-string v0, "gl"

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/localization/ContentCountry;->getCountryCode()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Laa5;->h(Ljava/lang/String;Ljava/lang/String;)Laa5;

    move-result-object p0

    const-string p1, "clientName"

    const-string v0, "WEB"

    invoke-virtual {p0, p1, v0}, Laa5;->h(Ljava/lang/String;Ljava/lang/String;)Laa5;

    move-result-object p0

    const-string p1, "clientVersion"

    invoke-static {}, Lcxc;->B()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Laa5;->h(Ljava/lang/String;Ljava/lang/String;)Laa5;

    move-result-object p0

    const-string p1, "originalUrl"

    const-string v0, "https://www.youtube.com"

    invoke-virtual {p0, p1, v0}, Laa5;->h(Ljava/lang/String;Ljava/lang/String;)Laa5;

    move-result-object p0

    const-string p1, "platform"

    const-string v0, "DESKTOP"

    invoke-virtual {p0, p1, v0}, Laa5;->h(Ljava/lang/String;Ljava/lang/String;)Laa5;

    move-result-object p0

    const-string p1, "utcOffsetMinutes"

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Laa5;->f(Ljava/lang/String;I)Laa5;

    move-result-object p0

    invoke-virtual {p0}, Laa5;->c()Laa5;

    move-result-object p0

    const-string p1, "request"

    invoke-virtual {p0, p1}, Laa5;->e(Ljava/lang/String;)Laa5;

    move-result-object p0

    const-string p1, "internalExperimentFlags"

    invoke-virtual {p0, p1}, Laa5;->a(Ljava/lang/String;)Laa5;

    move-result-object p0

    invoke-virtual {p0}, Laa5;->c()Laa5;

    move-result-object p0

    const-string p1, "useSsl"

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Laa5;->i(Ljava/lang/String;Z)Laa5;

    move-result-object p0

    invoke-virtual {p0}, Laa5;->c()Laa5;

    move-result-object p0

    const-string p1, "user"

    invoke-virtual {p0, p1}, Laa5;->e(Ljava/lang/String;)Laa5;

    move-result-object p0

    const-string p1, "lockedSafetyMode"

    invoke-virtual {p0, p1, v0}, Laa5;->i(Ljava/lang/String;Z)Laa5;

    move-result-object p0

    invoke-virtual {p0}, Laa5;->c()Laa5;

    move-result-object p0

    invoke-virtual {p0}, Laa5;->c()Laa5;

    move-result-object p0

    return-object p0
.end method

.method public static z(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 2

    invoke-static {p0}, Llwc;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    const-string v0, "X-YouTube-Client-Version"

    invoke-static {p1}, Lmwc;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const-string v1, "X-YouTube-Client-Name"

    invoke-static {v1, p0, v0, p1}, Lnwc;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static z0(Lorg/schabi/newpipe/extractor/localization/Localization;Lorg/schabi/newpipe/extractor/localization/ContentCountry;Ln05;Ljava/lang/String;)Laa5;
    .locals 3

    invoke-static {}, Lcom/grack/nanojson/JsonObject;->builder()Laa5;

    move-result-object v0

    const-string v1, "context"

    invoke-virtual {v0, v1}, Laa5;->e(Ljava/lang/String;)Laa5;

    move-result-object v0

    const-string v1, "client"

    invoke-virtual {v0, v1}, Laa5;->e(Ljava/lang/String;)Laa5;

    move-result-object v0

    iget-object v1, p2, Ln05;->a:Ln05$a;

    iget-object v1, v1, Ln05$a;->a:Ljava/lang/String;

    const-string v2, "clientName"

    invoke-virtual {v0, v2, v1}, Laa5;->h(Ljava/lang/String;Ljava/lang/String;)Laa5;

    move-result-object v0

    iget-object v1, p2, Ln05;->a:Ln05$a;

    iget-object v1, v1, Ln05$a;->b:Ljava/lang/String;

    const-string v2, "clientVersion"

    invoke-virtual {v0, v2, v1}, Laa5;->h(Ljava/lang/String;Ljava/lang/String;)Laa5;

    move-result-object v0

    iget-object v1, p2, Ln05;->a:Ln05$a;

    iget-object v1, v1, Ln05$a;->c:Ljava/lang/String;

    const-string v2, "clientScreen"

    invoke-virtual {v0, v2, v1}, Laa5;->h(Ljava/lang/String;Ljava/lang/String;)Laa5;

    move-result-object v0

    iget-object v1, p2, Ln05;->b:Ln05$b;

    iget-object v1, v1, Ln05$b;->a:Ljava/lang/String;

    const-string v2, "platform"

    invoke-virtual {v0, v2, v1}, Laa5;->h(Ljava/lang/String;Ljava/lang/String;)Laa5;

    move-result-object v0

    iget-object v1, p2, Ln05;->a:Ln05$a;

    iget-object v1, v1, Ln05$a;->e:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v2, "visitorData"

    invoke-virtual {v0, v2, v1}, Laa5;->h(Ljava/lang/String;Ljava/lang/String;)Laa5;

    :cond_0
    iget-object v1, p2, Ln05;->b:Ln05$b;

    iget-object v1, v1, Ln05$b;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v2, "deviceMake"

    invoke-virtual {v0, v2, v1}, Laa5;->h(Ljava/lang/String;Ljava/lang/String;)Laa5;

    :cond_1
    iget-object v1, p2, Ln05;->b:Ln05$b;

    iget-object v1, v1, Ln05$b;->c:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v2, "deviceModel"

    invoke-virtual {v0, v2, v1}, Laa5;->h(Ljava/lang/String;Ljava/lang/String;)Laa5;

    :cond_2
    iget-object v1, p2, Ln05;->b:Ln05$b;

    iget-object v1, v1, Ln05$b;->d:Ljava/lang/String;

    if-eqz v1, :cond_3

    const-string v2, "osName"

    invoke-virtual {v0, v2, v1}, Laa5;->h(Ljava/lang/String;Ljava/lang/String;)Laa5;

    :cond_3
    iget-object v1, p2, Ln05;->b:Ln05$b;

    iget-object v1, v1, Ln05$b;->e:Ljava/lang/String;

    if-eqz v1, :cond_4

    const-string v2, "osVersion"

    invoke-virtual {v0, v2, v1}, Laa5;->h(Ljava/lang/String;Ljava/lang/String;)Laa5;

    :cond_4
    iget-object p2, p2, Ln05;->b:Ln05$b;

    iget p2, p2, Ln05$b;->f:I

    if-lez p2, :cond_5

    const-string v1, "androidSdkVersion"

    invoke-virtual {v0, v1, p2}, Laa5;->f(Ljava/lang/String;I)Laa5;

    :cond_5
    const-string p2, "hl"

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/localization/Localization;->getLocalizationCode()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p2, p0}, Laa5;->h(Ljava/lang/String;Ljava/lang/String;)Laa5;

    move-result-object p0

    const-string p2, "gl"

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/localization/ContentCountry;->getCountryCode()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Laa5;->h(Ljava/lang/String;Ljava/lang/String;)Laa5;

    move-result-object p0

    const-string p1, "utcOffsetMinutes"

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Laa5;->f(Ljava/lang/String;I)Laa5;

    move-result-object p0

    invoke-virtual {p0}, Laa5;->c()Laa5;

    if-eqz p3, :cond_6

    const-string p0, "thirdParty"

    invoke-virtual {v0, p0}, Laa5;->e(Ljava/lang/String;)Laa5;

    move-result-object p0

    const-string p1, "embedUrl"

    invoke-virtual {p0, p1, p3}, Laa5;->h(Ljava/lang/String;Ljava/lang/String;)Laa5;

    move-result-object p0

    invoke-virtual {p0}, Laa5;->c()Laa5;

    :cond_6
    const-string p0, "request"

    invoke-virtual {v0, p0}, Laa5;->e(Ljava/lang/String;)Laa5;

    move-result-object p0

    const-string p1, "internalExperimentFlags"

    invoke-virtual {p0, p1}, Laa5;->a(Ljava/lang/String;)Laa5;

    move-result-object p0

    invoke-virtual {p0}, Laa5;->c()Laa5;

    move-result-object p0

    const-string p1, "useSsl"

    const/4 p3, 0x1

    invoke-virtual {p0, p1, p3}, Laa5;->i(Ljava/lang/String;Z)Laa5;

    move-result-object p0

    invoke-virtual {p0}, Laa5;->c()Laa5;

    move-result-object p0

    const-string p1, "user"

    invoke-virtual {p0, p1}, Laa5;->e(Ljava/lang/String;)Laa5;

    move-result-object p0

    const-string p1, "lockedSafetyMode"

    invoke-virtual {p0, p1, p2}, Laa5;->i(Ljava/lang/String;Z)Laa5;

    move-result-object p0

    invoke-virtual {p0}, Laa5;->c()Laa5;

    move-result-object p0

    invoke-virtual {p0}, Laa5;->c()Laa5;

    return-object v0
.end method

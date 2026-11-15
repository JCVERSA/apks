.class public final Lg08;
.super Lem5;
.source "SourceFile"


# static fields
.field public static final a:Lg08;

.field public static final b:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lg08;

    invoke-direct {v0}, Lg08;-><init>()V

    sput-object v0, Lg08;->a:Lg08;

    const-string v7, "Local"

    const-string v8, "%s/api/v1/videos?sort=-publishedAt&isLocal=true"

    const-string v1, "Trending"

    const-string v2, "%s/api/v1/videos?sort=-trending"

    const-string v3, "Most liked"

    const-string v4, "%s/api/v1/videos?sort=-likes"

    const-string v5, "Recently added"

    const-string v6, "%s/api/v1/videos?sort=-publishedAt"

    invoke-static/range {v1 .. v8}, Lb08;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lg08;->b:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lem5;-><init>()V

    return-void
.end method

.method public static synthetic r(Ljava/lang/String;Ljava/util/Map$Entry;)Z
    .locals 0

    invoke-static {p0, p1}, Lg08;->u(Ljava/lang/String;Ljava/util/Map$Entry;)Z

    move-result p0

    return p0
.end method

.method public static synthetic s()Lorg/schabi/newpipe/extractor/exceptions/ParsingException;
    .locals 1

    invoke-static {}, Lg08;->v()Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    move-result-object v0

    return-object v0
.end method

.method public static t()Lg08;
    .locals 1

    sget-object v0, Lg08;->a:Lg08;

    return-object v0
.end method

.method public static synthetic u(Ljava/lang/String;Ljava/util/Map$Entry;)Z
    .locals 0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic v()Lorg/schabi/newpipe/extractor/exceptions/ParsingException;
    .locals 2

    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v1, "no id found for this url"

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public f(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object p0, Lce9;->d:Ltz7;

    invoke-virtual {p0}, Ltz7;->z()Ljava/lang/String;

    move-result-object p0

    const-string v0, "%s"

    invoke-virtual {p1, p0, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "/videos/trending"

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p0, "Trending"

    return-object p0

    :cond_0
    const-string p1, "/videos/most-liked"

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p0, "Most liked"

    return-object p0

    :cond_1
    const-string p1, "/videos/recently-added"

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p0, "Recently added"

    return-object p0

    :cond_2
    const-string p1, "/videos/local"

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p0, "Local"

    return-object p0

    :cond_3
    sget-object p1, Lg08;->b:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Ld08;

    invoke-direct {v0, p0}, Ld08;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    new-instance p1, Le08;

    invoke-direct {p1}, Le08;-><init>()V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    new-instance p1, Lf08;

    invoke-direct {p1}, Lf08;-><init>()V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public i(Ljava/lang/String;)Z
    .locals 1

    const/4 p0, 0x0

    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const-string v0, "/videos?"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "/videos/trending"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "/videos/most-liked"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "/videos/recently-added"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "/videos/local"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_1

    :cond_0
    const/4 p0, 0x1

    :catch_0
    :cond_1
    return p0
.end method

.method public p(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lce9;->d:Ltz7;

    invoke-virtual {v0}, Ltz7;->z()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lg08;->q(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public q(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sget-object p0, Lg08;->b:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    filled-new-array {p4}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

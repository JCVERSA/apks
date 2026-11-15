.class public final Lcom/anthonynsimon/url/URL;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final transient URL_PARSER:Lyeb;

.field private static final serialVersionUID:J = 0x13a3bL


# instance fields
.field private final fragment:Ljava/lang/String;

.field private final host:Ljava/lang/String;

.field private final hostname:Ljava/lang/String;

.field private final opaque:Ljava/lang/String;

.field private transient parsedQueryPairs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final password:Ljava/lang/String;

.field private final path:Ljava/lang/String;

.field private final port:Ljava/lang/Integer;

.field private final query:Ljava/lang/String;

.field private final rawPath:Ljava/lang/String;

.field private final scheme:Ljava/lang/String;

.field private transient stringRepresentation:Ljava/lang/String;

.field private final username:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ls62;

    invoke-direct {v0}, Ls62;-><init>()V

    sput-object v0, Lcom/anthonynsimon/url/URL;->URL_PARSER:Lyeb;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-static {p1}, Lcom/anthonynsimon/url/URL;->mapToNullIfEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/anthonynsimon/url/URL;->scheme:Ljava/lang/String;

    .line 27
    invoke-static {p2}, Lcom/anthonynsimon/url/URL;->mapToNullIfEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/anthonynsimon/url/URL;->username:Ljava/lang/String;

    .line 28
    invoke-static {p3}, Lcom/anthonynsimon/url/URL;->mapToNullIfEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/anthonynsimon/url/URL;->password:Ljava/lang/String;

    .line 29
    invoke-static {p4, p5}, Lcom/anthonynsimon/url/URL;->mergeHostPortIfSet(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/anthonynsimon/url/URL;->host:Ljava/lang/String;

    .line 30
    invoke-static {p4}, Lcom/anthonynsimon/url/URL;->mapToNullIfEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/anthonynsimon/url/URL;->hostname:Ljava/lang/String;

    .line 31
    iput-object p5, p0, Lcom/anthonynsimon/url/URL;->port:Ljava/lang/Integer;

    .line 32
    invoke-static {p6}, Lcom/anthonynsimon/url/URL;->mapToNullIfEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/anthonynsimon/url/URL;->path:Ljava/lang/String;

    .line 33
    invoke-static {p7}, Lcom/anthonynsimon/url/URL;->mapToNullIfEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/anthonynsimon/url/URL;->rawPath:Ljava/lang/String;

    .line 34
    invoke-static {p8}, Lcom/anthonynsimon/url/URL;->mapToNullIfEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/anthonynsimon/url/URL;->query:Ljava/lang/String;

    .line 35
    invoke-static {p9}, Lcom/anthonynsimon/url/URL;->mapToNullIfEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/anthonynsimon/url/URL;->fragment:Ljava/lang/String;

    .line 36
    invoke-static {p10}, Lcom/anthonynsimon/url/URL;->mapToNullIfEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/anthonynsimon/url/URL;->opaque:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/anthonynsimon/url/URL;->mapToNullIfEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/anthonynsimon/url/URL;->scheme:Ljava/lang/String;

    .line 3
    invoke-static {p2}, Lcom/anthonynsimon/url/URL;->mapToNullIfEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/anthonynsimon/url/URL;->username:Ljava/lang/String;

    .line 4
    invoke-static {p3}, Lcom/anthonynsimon/url/URL;->mapToNullIfEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/anthonynsimon/url/URL;->password:Ljava/lang/String;

    .line 5
    invoke-static {p4}, Lcom/anthonynsimon/url/URL;->mapToNullIfEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/anthonynsimon/url/URL;->host:Ljava/lang/String;

    .line 6
    invoke-static {p4}, Lcom/anthonynsimon/url/URL;->extractHostname(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/anthonynsimon/url/URL;->hostname:Ljava/lang/String;

    .line 7
    invoke-static {p4}, Lcom/anthonynsimon/url/URL;->extractPort(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/anthonynsimon/url/URL;->port:Ljava/lang/Integer;

    .line 8
    invoke-static {p5}, Lcom/anthonynsimon/url/URL;->mapToNullIfEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/anthonynsimon/url/URL;->path:Ljava/lang/String;

    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Lcom/anthonynsimon/url/URL;->rawPath:Ljava/lang/String;

    .line 10
    invoke-static {p6}, Lcom/anthonynsimon/url/URL;->mapToNullIfEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/anthonynsimon/url/URL;->query:Ljava/lang/String;

    .line 11
    invoke-static {p7}, Lcom/anthonynsimon/url/URL;->mapToNullIfEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/anthonynsimon/url/URL;->fragment:Ljava/lang/String;

    .line 12
    invoke-static {p8}, Lcom/anthonynsimon/url/URL;->mapToNullIfEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/anthonynsimon/url/URL;->opaque:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    invoke-static {p1}, Lcom/anthonynsimon/url/URL;->mapToNullIfEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/anthonynsimon/url/URL;->scheme:Ljava/lang/String;

    .line 15
    invoke-static {p2}, Lcom/anthonynsimon/url/URL;->mapToNullIfEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/anthonynsimon/url/URL;->username:Ljava/lang/String;

    .line 16
    invoke-static {p3}, Lcom/anthonynsimon/url/URL;->mapToNullIfEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/anthonynsimon/url/URL;->password:Ljava/lang/String;

    .line 17
    invoke-static {p4}, Lcom/anthonynsimon/url/URL;->mapToNullIfEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/anthonynsimon/url/URL;->host:Ljava/lang/String;

    .line 18
    invoke-static {p4}, Lcom/anthonynsimon/url/URL;->extractHostname(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/anthonynsimon/url/URL;->hostname:Ljava/lang/String;

    .line 19
    invoke-static {p4}, Lcom/anthonynsimon/url/URL;->extractPort(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/anthonynsimon/url/URL;->port:Ljava/lang/Integer;

    .line 20
    invoke-static {p5}, Lcom/anthonynsimon/url/URL;->mapToNullIfEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/anthonynsimon/url/URL;->path:Ljava/lang/String;

    .line 21
    invoke-static {p6}, Lcom/anthonynsimon/url/URL;->mapToNullIfEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/anthonynsimon/url/URL;->rawPath:Ljava/lang/String;

    .line 22
    invoke-static {p7}, Lcom/anthonynsimon/url/URL;->mapToNullIfEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/anthonynsimon/url/URL;->query:Ljava/lang/String;

    .line 23
    invoke-static {p8}, Lcom/anthonynsimon/url/URL;->mapToNullIfEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/anthonynsimon/url/URL;->fragment:Ljava/lang/String;

    .line 24
    invoke-static {p9}, Lcom/anthonynsimon/url/URL;->mapToNullIfEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/anthonynsimon/url/URL;->opaque:Ljava/lang/String;

    return-void
.end method

.method private static extractHostname(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_1

    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static extractPort(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const-string v1, ":"

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-le v1, v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v1, ""

    if-eq p0, v1, :cond_0

    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_0
    return-object v0
.end method

.method private static mapToNullIfEmpty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private static mergeHostPortIfSet(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x1

    if-eqz p0, :cond_0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move p0, v1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p1, :cond_1

    const-string p0, ":"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    move v1, p0

    :goto_1
    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private nullOrEmpty(Ljava/lang/String;)Z
    .locals 0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

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

.method public static parse(Ljava/lang/String;)Lcom/anthonynsimon/url/URL;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/anthonynsimon/url/exceptions/MalformedURLException;
        }
    .end annotation

    sget-object v0, Lcom/anthonynsimon/url/URL;->URL_PARSER:Lyeb;

    invoke-interface {v0, p0}, Lyeb;->parse(Ljava/lang/String;)Lcom/anthonynsimon/url/URL;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/anthonynsimon/url/URL;

    if-nez v1, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/anthonynsimon/url/URL;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getFragment()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/anthonynsimon/url/URL;->fragment:Ljava/lang/String;

    return-object p0
.end method

.method public getHost()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/anthonynsimon/url/URL;->host:Ljava/lang/String;

    return-object p0
.end method

.method public getHostname()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/anthonynsimon/url/URL;->hostname:Ljava/lang/String;

    return-object p0
.end method

.method public getOpaque()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/anthonynsimon/url/URL;->opaque:Ljava/lang/String;

    return-object p0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/anthonynsimon/url/URL;->password:Ljava/lang/String;

    return-object p0
.end method

.method public getPath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/anthonynsimon/url/URL;->path:Ljava/lang/String;

    return-object p0
.end method

.method public getPort()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/anthonynsimon/url/URL;->port:Ljava/lang/Integer;

    return-object p0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/anthonynsimon/url/URL;->query:Ljava/lang/String;

    return-object p0
.end method

.method public getQueryPairs()Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/anthonynsimon/url/URL;->parsedQueryPairs:Ljava/util/Map;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/anthonynsimon/url/URL;->parsedQueryPairs:Ljava/util/Map;

    iget-object v0, p0, Lcom/anthonynsimon/url/URL;->query:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/anthonynsimon/url/URL;->nullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/anthonynsimon/url/URL;->query:Ljava/lang/String;

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/anthonynsimon/url/URL;->query:Ljava/lang/String;

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, v0, v3

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    if-lez v5, :cond_2

    aget-object v5, v4, v2

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/anthonynsimon/url/URL;->parsedQueryPairs:Ljava/util/Map;

    aget-object v6, v4, v2

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    array-length v6, v4

    const/4 v7, 0x2

    if-ne v6, v7, :cond_1

    const/4 v6, 0x1

    aget-object v6, v4, v6

    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v6, p0, Lcom/anthonynsimon/url/URL;->parsedQueryPairs:Ljava/util/Map;

    aget-object v4, v4, v2

    invoke-interface {v6, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/anthonynsimon/url/URL;->parsedQueryPairs:Ljava/util/Map;

    return-object p0
.end method

.method public getRawPath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/anthonynsimon/url/URL;->rawPath:Ljava/lang/String;

    return-object p0
.end method

.method public getScheme()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/anthonynsimon/url/URL;->scheme:Ljava/lang/String;

    return-object p0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/anthonynsimon/url/URL;->username:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    invoke-virtual {p0}, Lcom/anthonynsimon/url/URL;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public isAbsolute()Z
    .locals 1

    iget-object v0, p0, Lcom/anthonynsimon/url/URL;->scheme:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/anthonynsimon/url/URL;->nullOrEmpty(Ljava/lang/String;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isOpaque()Z
    .locals 1

    iget-object v0, p0, Lcom/anthonynsimon/url/URL;->opaque:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/anthonynsimon/url/URL;->nullOrEmpty(Ljava/lang/String;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public resolveReference(Lcom/anthonynsimon/url/URL;)Lcom/anthonynsimon/url/URL;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/anthonynsimon/url/exceptions/InvalidURLReferenceException;
        }
    .end annotation

    .line 3
    invoke-virtual {p0}, Lcom/anthonynsimon/url/URL;->isAbsolute()Z

    move-result v0

    if-eqz v0, :cond_6

    if-eqz p1, :cond_5

    .line 4
    new-instance v0, Lxeb;

    invoke-direct {v0}, Lxeb;-><init>()V

    .line 5
    invoke-virtual {p1}, Lcom/anthonynsimon/url/URL;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lxeb;->i(Ljava/lang/String;)Lxeb;

    move-result-object v0

    .line 6
    invoke-virtual {p1}, Lcom/anthonynsimon/url/URL;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lxeb;->j(Ljava/lang/String;)Lxeb;

    move-result-object v0

    .line 7
    invoke-virtual {p1}, Lcom/anthonynsimon/url/URL;->getPassword()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lxeb;->e(Ljava/lang/String;)Lxeb;

    move-result-object v0

    .line 8
    invoke-virtual {p1}, Lcom/anthonynsimon/url/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lxeb;->c(Ljava/lang/String;)Lxeb;

    move-result-object v0

    .line 9
    invoke-virtual {p1}, Lcom/anthonynsimon/url/URL;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lxeb;->f(Ljava/lang/String;)Lxeb;

    move-result-object v0

    .line 10
    invoke-virtual {p1}, Lcom/anthonynsimon/url/URL;->getQuery()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lxeb;->g(Ljava/lang/String;)Lxeb;

    move-result-object v0

    .line 11
    invoke-virtual {p1}, Lcom/anthonynsimon/url/URL;->getFragment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lxeb;->b(Ljava/lang/String;)Lxeb;

    move-result-object v0

    .line 12
    invoke-virtual {p1}, Lcom/anthonynsimon/url/URL;->getOpaque()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lxeb;->d(Ljava/lang/String;)Lxeb;

    move-result-object v0

    .line 13
    invoke-virtual {p1}, Lcom/anthonynsimon/url/URL;->isAbsolute()Z

    move-result v1

    if-nez v1, :cond_0

    .line 14
    iget-object v1, p0, Lcom/anthonynsimon/url/URL;->scheme:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lxeb;->i(Ljava/lang/String;)Lxeb;

    .line 15
    :cond_0
    iget-object v1, p1, Lcom/anthonynsimon/url/URL;->scheme:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/anthonynsimon/url/URL;->nullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p1, Lcom/anthonynsimon/url/URL;->host:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/anthonynsimon/url/URL;->nullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 16
    :cond_1
    invoke-virtual {p1}, Lcom/anthonynsimon/url/URL;->isOpaque()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/anthonynsimon/url/URL;->isOpaque()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 17
    :cond_2
    iget-object v1, p0, Lcom/anthonynsimon/url/URL;->host:Ljava/lang/String;

    .line 18
    invoke-virtual {v0, v1}, Lxeb;->c(Ljava/lang/String;)Lxeb;

    move-result-object v0

    iget-object v1, p0, Lcom/anthonynsimon/url/URL;->username:Ljava/lang/String;

    .line 19
    invoke-virtual {v0, v1}, Lxeb;->j(Ljava/lang/String;)Lxeb;

    move-result-object v0

    iget-object v1, p0, Lcom/anthonynsimon/url/URL;->password:Ljava/lang/String;

    .line 20
    invoke-virtual {v0, v1}, Lxeb;->e(Ljava/lang/String;)Lxeb;

    move-result-object v0

    iget-object p0, p0, Lcom/anthonynsimon/url/URL;->path:Ljava/lang/String;

    iget-object p1, p1, Lcom/anthonynsimon/url/URL;->path:Ljava/lang/String;

    .line 21
    invoke-static {p0, p1}, Liy7;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lxeb;->f(Ljava/lang/String;)Lxeb;

    move-result-object p0

    .line 22
    invoke-virtual {p0}, Lxeb;->a()Lcom/anthonynsimon/url/URL;

    move-result-object p0

    return-object p0

    .line 23
    :cond_3
    :goto_0
    invoke-virtual {v0}, Lxeb;->a()Lcom/anthonynsimon/url/URL;

    move-result-object p0

    return-object p0

    .line 24
    :cond_4
    :goto_1
    iget-object p0, p1, Lcom/anthonynsimon/url/URL;->path:Ljava/lang/String;

    const-string p1, ""

    invoke-static {p0, p1}, Liy7;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lxeb;->f(Ljava/lang/String;)Lxeb;

    .line 25
    invoke-virtual {v0}, Lxeb;->a()Lcom/anthonynsimon/url/URL;

    move-result-object p0

    return-object p0

    .line 26
    :cond_5
    new-instance p0, Lcom/anthonynsimon/url/exceptions/InvalidURLReferenceException;

    const-string p1, "reference url is null"

    invoke-direct {p0, p1}, Lcom/anthonynsimon/url/exceptions/InvalidURLReferenceException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 27
    :cond_6
    new-instance p0, Lcom/anthonynsimon/url/exceptions/InvalidURLReferenceException;

    const-string p1, "base url is not absolute"

    invoke-direct {p0, p1}, Lcom/anthonynsimon/url/exceptions/InvalidURLReferenceException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public resolveReference(Ljava/lang/String;)Lcom/anthonynsimon/url/URL;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/anthonynsimon/url/exceptions/MalformedURLException;,
            Lcom/anthonynsimon/url/exceptions/InvalidURLReferenceException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/anthonynsimon/url/URL;->URL_PARSER:Lyeb;

    invoke-interface {v0, p1}, Lyeb;->parse(Ljava/lang/String;)Lcom/anthonynsimon/url/URL;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1}, Lcom/anthonynsimon/url/URL;->resolveReference(Lcom/anthonynsimon/url/URL;)Lcom/anthonynsimon/url/URL;

    move-result-object p0

    return-object p0
.end method

.method public toJavaURI()Ljava/net/URI;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    new-instance v0, Ljava/net/URI;

    invoke-virtual {p0}, Lcom/anthonynsimon/url/URL;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public toJavaURL()Ljava/net/URL;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    new-instance v0, Ljava/net/URL;

    invoke-virtual {p0}, Lcom/anthonynsimon/url/URL;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/anthonynsimon/url/URL;->stringRepresentation:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/anthonynsimon/url/URL;->scheme:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/anthonynsimon/url/URL;->nullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, ":"

    if-nez v0, :cond_1

    iget-object v3, p0, Lcom/anthonynsimon/url/URL;->scheme:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    iget-object v3, p0, Lcom/anthonynsimon/url/URL;->opaque:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/anthonynsimon/url/URL;->nullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v0, p0, Lcom/anthonynsimon/url/URL;->opaque:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    :cond_2
    if-eqz v0, :cond_3

    iget-object v3, p0, Lcom/anthonynsimon/url/URL;->host:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/anthonynsimon/url/URL;->nullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    :cond_3
    if-nez v0, :cond_4

    const-string v0, "//"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4
    iget-object v0, p0, Lcom/anthonynsimon/url/URL;->username:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/anthonynsimon/url/URL;->nullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/anthonynsimon/url/URL;->username:Ljava/lang/String;

    sget-object v3, Lcom/anthonynsimon/url/URLPart;->CREDENTIALS:Lcom/anthonynsimon/url/URLPart;

    invoke-static {v0, v3}, Lcom/anthonynsimon/url/a;->b(Ljava/lang/String;Lcom/anthonynsimon/url/URLPart;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/anthonynsimon/url/URL;->password:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/anthonynsimon/url/URL;->nullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/anthonynsimon/url/URL;->password:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/anthonynsimon/url/a;->b(Ljava/lang/String;Lcom/anthonynsimon/url/URLPart;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_5
    const-string v0, "@"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_6
    iget-object v0, p0, Lcom/anthonynsimon/url/URL;->host:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/anthonynsimon/url/URL;->nullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/anthonynsimon/url/URL;->host:Ljava/lang/String;

    sget-object v2, Lcom/anthonynsimon/url/URLPart;->HOST:Lcom/anthonynsimon/url/URLPart;

    invoke-static {v0, v2}, Lcom/anthonynsimon/url/a;->b(Ljava/lang/String;Lcom/anthonynsimon/url/URLPart;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_7
    iget-object v0, p0, Lcom/anthonynsimon/url/URL;->rawPath:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/anthonynsimon/url/URL;->nullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/anthonynsimon/url/URL;->rawPath:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_8
    iget-object v0, p0, Lcom/anthonynsimon/url/URL;->path:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/anthonynsimon/url/URL;->nullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/anthonynsimon/url/URL;->path:Ljava/lang/String;

    const/16 v2, 0x2f

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "*"

    iget-object v2, p0, Lcom/anthonynsimon/url/URL;->path:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_9
    iget-object v0, p0, Lcom/anthonynsimon/url/URL;->path:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_a
    :goto_0
    iget-object v0, p0, Lcom/anthonynsimon/url/URL;->query:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/anthonynsimon/url/URL;->nullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "?"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/anthonynsimon/url/URL;->query:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/anthonynsimon/url/URL;->query:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_b
    iget-object v0, p0, Lcom/anthonynsimon/url/URL;->fragment:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/anthonynsimon/url/URL;->nullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    const-string v0, "#"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/anthonynsimon/url/URL;->fragment:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_c
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anthonynsimon/url/URL;->stringRepresentation:Ljava/lang/String;

    return-object v0
.end method

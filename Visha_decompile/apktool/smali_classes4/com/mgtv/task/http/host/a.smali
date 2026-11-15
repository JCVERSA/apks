.class public Lcom/mgtv/task/http/host/a;
.super Lcom/mgtv/task/http/retry/a;
.source "SourceFile"


# static fields
.field private static h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/mgtv/task/http/host/HostConfig$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile i:Lcom/mgtv/task/http/host/HostConfig;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field private j:Z

.field private k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/mgtv/task/http/host/a;->h:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x3

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 1
    invoke-direct {p0, v2, v2, v0, v1}, Lcom/mgtv/task/http/host/a;-><init>(IIIF)V

    return-void
.end method

.method public constructor <init>(IIIF)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mgtv/task/http/retry/a;-><init>(IIIF)V

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/mgtv/task/http/host/a;->j:Z

    .line 4
    iput-boolean p1, p0, Lcom/mgtv/task/http/host/a;->k:Z

    return-void
.end method

.method private a(Ljava/lang/String;Z)Lcom/mgtv/task/http/host/HostConfig$Entry;
    .locals 6

    .line 27
    invoke-virtual {p0}, Lcom/mgtv/task/http/host/a;->a()Lcom/mgtv/task/http/host/HostConfig;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 28
    :cond_0
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 29
    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object p1

    .line 30
    sget-object v2, Lcom/mgtv/task/http/host/a;->h:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mgtv/task/http/host/HostConfig$Entry;

    if-nez v2, :cond_2

    .line 31
    iget-object p0, p0, Lcom/mgtv/task/http/host/HostConfig;->retryHosts:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mgtv/task/http/host/HostConfig$Entry;

    .line 32
    new-instance v4, Ljava/net/URL;

    iget-object v5, v3, Lcom/mgtv/task/http/host/HostConfig$Entry;->host:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 33
    invoke-virtual {v4}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v4

    .line 34
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 35
    sget-object p0, Lcom/mgtv/task/http/host/a;->h:Ljava/util/Map;

    invoke-interface {p0, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v3

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_2
    :goto_0
    if-eqz v2, :cond_4

    if-eqz p2, :cond_3

    .line 36
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "://"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 37
    iget-object p1, v2, Lcom/mgtv/task/http/host/HostConfig$Entry;->host:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_4

    :cond_3
    return-object v2

    .line 38
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    return-object v0
.end method

.method public static a(Lcom/mgtv/task/http/host/HostConfig;)V
    .locals 0
    .param p0    # Lcom/mgtv/task/http/host/HostConfig;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    sput-object p0, Lcom/mgtv/task/http/host/a;->i:Lcom/mgtv/task/http/host/HostConfig;

    .line 3
    sget-object p0, Lcom/mgtv/task/http/host/a;->h:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method private d()Z
    .locals 2

    .line 1
    iget-boolean p0, p0, Lcom/mgtv/task/http/host/a;->j:Z

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 2
    sget-object p0, Lcom/mgtv/task/http/host/a;->i:Lcom/mgtv/task/http/host/HostConfig;

    if-eqz p0, :cond_0

    .line 3
    sget-object p0, Lcom/mgtv/task/http/host/a;->i:Lcom/mgtv/task/http/host/HostConfig;

    iget p0, p0, Lcom/mgtv/task/http/host/HostConfig;->masterStatus:I

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    move v0, v1

    :cond_0
    return v0
.end method

.method private e()Z
    .locals 2

    .line 1
    iget-boolean p0, p0, Lcom/mgtv/task/http/host/a;->k:Z

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 2
    sget-object p0, Lcom/mgtv/task/http/host/a;->i:Lcom/mgtv/task/http/host/HostConfig;

    if-eqz p0, :cond_0

    .line 3
    sget-object p0, Lcom/mgtv/task/http/host/a;->i:Lcom/mgtv/task/http/host/HostConfig;

    iget p0, p0, Lcom/mgtv/task/http/host/HostConfig;->retryStatus:I

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    move v0, v1

    :cond_0
    return v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 4
    iget p2, p0, Lcom/mgtv/task/http/retry/a;->a:I

    if-eqz p2, :cond_0

    return p2

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/mgtv/task/http/host/a;->a()Lcom/mgtv/task/http/host/HostConfig;

    move-result-object p2

    if-nez p2, :cond_1

    .line 6
    sget p0, Lcom/mgtv/task/m;->a:I

    return p0

    :cond_1
    const/4 v0, 0x0

    .line 7
    invoke-direct {p0, p1, v0}, Lcom/mgtv/task/http/host/a;->a(Ljava/lang/String;Z)Lcom/mgtv/task/http/host/HostConfig$Entry;

    move-result-object p1

    if-nez p1, :cond_2

    .line 8
    sget p0, Lcom/mgtv/task/m;->a:I

    return p0

    .line 9
    :cond_2
    iget p1, p0, Lcom/mgtv/task/http/retry/a;->c:I

    if-nez p1, :cond_4

    .line 10
    iget p1, p2, Lcom/mgtv/task/http/host/HostConfig;->mainHostTimeout:I

    if-lez p1, :cond_3

    mul-int/lit16 p1, p1, 0x3e8

    goto :goto_0

    :cond_3
    iget p1, p0, Lcom/mgtv/task/http/retry/a;->a:I

    :goto_0
    return p1

    .line 11
    :cond_4
    iget p1, p2, Lcom/mgtv/task/http/host/HostConfig;->backupHostTimeout:I

    if-lez p1, :cond_5

    mul-int/lit16 p1, p1, 0x3e8

    goto :goto_1

    :cond_5
    iget p1, p0, Lcom/mgtv/task/http/retry/a;->a:I

    :goto_1
    return p1
.end method

.method public a()Lcom/mgtv/task/http/host/HostConfig;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 39
    sget-object p0, Lcom/mgtv/task/http/host/a;->i:Lcom/mgtv/task/http/host/HostConfig;

    if-eqz p0, :cond_1

    .line 40
    iget v0, p0, Lcom/mgtv/task/http/host/HostConfig;->chemestatus:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 41
    invoke-direct {p0}, Lcom/mgtv/task/http/host/a;->d()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 42
    invoke-direct {p0, p1, v0}, Lcom/mgtv/task/http/host/a;->a(Ljava/lang/String;Z)Lcom/mgtv/task/http/host/HostConfig$Entry;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/mgtv/task/http/host/HostConfig$Entry;->master:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 44
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 45
    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    .line 46
    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    .line 47
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "://"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/mgtv/task/http/host/HostConfig$Entry;->master:Ljava/lang/String;

    invoke-virtual {p1, v0, p0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 48
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    return-object v1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 12
    invoke-virtual {p0, p1, p2}, Lcom/mgtv/task/http/host/a;->e(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 13
    iget v0, p0, Lcom/mgtv/task/http/retry/a;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mgtv/task/http/retry/a;->c:I

    .line 14
    iget v0, p0, Lcom/mgtv/task/http/retry/a;->a:I

    int-to-float v1, v0

    int-to-float v0, v0

    iget v2, p0, Lcom/mgtv/task/http/retry/a;->e:F

    mul-float/2addr v0, v2

    add-float/2addr v1, v0

    float-to-int v0, v1

    iput v0, p0, Lcom/mgtv/task/http/retry/a;->a:I

    .line 15
    invoke-virtual {p0, p1, p2}, Lcom/mgtv/task/http/retry/a;->f(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    const/4 p2, 0x0

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/mgtv/task/http/host/a;->a(Ljava/lang/String;Z)Lcom/mgtv/task/http/host/HostConfig$Entry;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    .line 17
    iget p0, p0, Lcom/mgtv/task/http/retry/a;->c:I

    add-int/lit8 p0, p0, -0x1

    .line 18
    iget-object v1, p2, Lcom/mgtv/task/http/host/HostConfig$Entry;->backup:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p0, v1, :cond_0

    iget-object p2, p2, Lcom/mgtv/task/http/host/HostConfig$Entry;->backup:Ljava/util/List;

    invoke-interface {p2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    .line 19
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 20
    new-instance p0, Ljava/net/URL;

    invoke-direct {p0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 21
    invoke-virtual {p0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object p2

    .line 22
    invoke-virtual {p0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object p0

    .line 23
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "://"

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 24
    :cond_1
    throw p3

    :cond_2
    return-object v0

    .line 25
    :cond_3
    throw p3

    .line 26
    :cond_4
    throw p3
.end method

.method public a(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/mgtv/task/http/host/a;->j:Z

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 2
    iget p2, p0, Lcom/mgtv/task/http/retry/a;->b:I

    if-eqz p2, :cond_0

    return p2

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/mgtv/task/http/host/a;->a()Lcom/mgtv/task/http/host/HostConfig;

    move-result-object p2

    if-nez p2, :cond_1

    .line 4
    iget p0, p0, Lcom/mgtv/task/http/retry/a;->b:I

    return p0

    :cond_1
    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, p1, v0}, Lcom/mgtv/task/http/host/a;->a(Ljava/lang/String;Z)Lcom/mgtv/task/http/host/HostConfig$Entry;

    move-result-object p1

    if-nez p1, :cond_2

    .line 6
    iget p0, p0, Lcom/mgtv/task/http/retry/a;->b:I

    return p0

    .line 7
    :cond_2
    iget p1, p0, Lcom/mgtv/task/http/retry/a;->c:I

    if-nez p1, :cond_4

    .line 8
    iget p1, p2, Lcom/mgtv/task/http/host/HostConfig;->mainHostTimeout:I

    if-lez p1, :cond_3

    mul-int/lit16 p1, p1, 0x3e8

    goto :goto_0

    :cond_3
    iget p1, p0, Lcom/mgtv/task/http/retry/a;->b:I

    :goto_0
    return p1

    .line 9
    :cond_4
    iget p1, p2, Lcom/mgtv/task/http/host/HostConfig;->backupHostTimeout:I

    if-lez p1, :cond_5

    mul-int/lit16 p1, p1, 0x3e8

    goto :goto_1

    :cond_5
    iget p1, p0, Lcom/mgtv/task/http/retry/a;->b:I

    :goto_1
    return p1
.end method

.method public b(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/mgtv/task/http/host/a;->k:Z

    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    iget p0, p0, Lcom/mgtv/task/http/retry/a;->c:I

    return p0
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/mgtv/task/http/host/a;->a()Lcom/mgtv/task/http/host/HostConfig;

    move-result-object p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    .line 5
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/mgtv/task/http/host/a;->a(Ljava/lang/String;Z)Lcom/mgtv/task/http/host/HostConfig$Entry;

    move-result-object p0

    if-nez p0, :cond_1

    return v0

    .line 6
    :cond_1
    iget p0, p2, Lcom/mgtv/task/http/host/HostConfig;->retryInterval:I

    mul-int/lit16 p0, p0, 0x3e8

    return p0
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 4
    invoke-direct {p0}, Lcom/mgtv/task/http/host/a;->e()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.class public Lcom/mgtv/task/http/retry/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgtv/task/http/retry/c;


# static fields
.field private static volatile i:Lcom/mgtv/task/http/retry/RetryConfig;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field protected a:I

.field protected b:I

.field protected c:I

.field protected d:I

.field protected final e:F

.field protected f:Lcom/mgtv/task/http/retry/c$a;

.field protected g:I

.field private final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/mgtv/task/http/retry/RetryConfig$Entry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x3

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 1
    invoke-direct {p0, v2, v2, v0, v1}, Lcom/mgtv/task/http/retry/a;-><init>(IIIF)V

    return-void
.end method

.method public constructor <init>(IIIF)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/mgtv/task/http/retry/a;->h:Ljava/util/Map;

    .line 4
    iput p1, p0, Lcom/mgtv/task/http/retry/a;->a:I

    .line 5
    iput p2, p0, Lcom/mgtv/task/http/retry/a;->b:I

    .line 6
    iput p3, p0, Lcom/mgtv/task/http/retry/a;->d:I

    .line 7
    iput p4, p0, Lcom/mgtv/task/http/retry/a;->e:F

    .line 8
    iput p1, p0, Lcom/mgtv/task/http/retry/a;->g:I

    return-void
.end method

.method public static a(Lcom/mgtv/task/http/retry/RetryConfig;)V
    .locals 0
    .param p0    # Lcom/mgtv/task/http/retry/RetryConfig;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    sput-object p0, Lcom/mgtv/task/http/retry/a;->i:Lcom/mgtv/task/http/retry/RetryConfig;

    return-void
.end method

.method private g(Ljava/lang/String;Ljava/lang/String;)Lcom/mgtv/task/http/retry/RetryConfig$Entry;
    .locals 8

    invoke-virtual {p0, p1, p2}, Lcom/mgtv/task/http/retry/a;->e(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/mgtv/task/http/retry/a;->c()Lcom/mgtv/task/http/retry/RetryConfig;

    move-result-object p2

    if-nez p2, :cond_1

    return-object v0

    :cond_1
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/mgtv/task/http/retry/a;->h:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mgtv/task/http/retry/RetryConfig$Entry;

    if-eqz v3, :cond_2

    return-object v3

    :cond_2
    iget-object v3, p2, Lcom/mgtv/task/http/retry/RetryConfig;->specialPath:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/16 v5, 0x2f

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_4

    goto :goto_0

    :cond_4
    const/4 v6, 0x0

    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v4, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    return-object v0

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_5
    iget-object p2, p2, Lcom/mgtv/task/http/retry/RetryConfig;->retryHosts:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mgtv/task/http/retry/RetryConfig$Entry;

    iget-object v3, v1, Lcom/mgtv/task/http/retry/RetryConfig$Entry;->host:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    goto :goto_1

    :cond_6
    iget-object v3, v1, Lcom/mgtv/task/http/retry/RetryConfig$Entry;->backup:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_7

    goto :goto_1

    :cond_7
    iget-object p0, p0, Lcom/mgtv/task/http/retry/a;->h:Ljava/util/Map;

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :goto_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_8
    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 4
    iget v0, p0, Lcom/mgtv/task/http/retry/a;->a:I

    if-eqz v0, :cond_0

    return v0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/mgtv/task/http/retry/a;->c()Lcom/mgtv/task/http/retry/RetryConfig;

    move-result-object v0

    if-nez v0, :cond_1

    .line 6
    sget p0, Lcom/mgtv/task/m;->a:I

    return p0

    .line 7
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/mgtv/task/http/retry/a;->g(Ljava/lang/String;Ljava/lang/String;)Lcom/mgtv/task/http/retry/RetryConfig$Entry;

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
    iget p1, v0, Lcom/mgtv/task/http/retry/RetryConfig;->mainHostTimeout:I

    if-lez p1, :cond_3

    mul-int/lit16 p1, p1, 0x3e8

    goto :goto_0

    :cond_3
    iget p1, p0, Lcom/mgtv/task/http/retry/a;->a:I

    :goto_0
    return p1

    .line 11
    :cond_4
    iget p1, v0, Lcom/mgtv/task/http/retry/RetryConfig;->backupHostTimeout:I

    if-lez p1, :cond_5

    mul-int/lit16 p1, p1, 0x3e8

    goto :goto_1

    :cond_5
    iget p1, p0, Lcom/mgtv/task/http/retry/a;->a:I

    :goto_1
    return p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 12
    iget v0, p0, Lcom/mgtv/task/http/retry/a;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mgtv/task/http/retry/a;->c:I

    .line 13
    iget v0, p0, Lcom/mgtv/task/http/retry/a;->a:I

    int-to-float v1, v0

    int-to-float v0, v0

    iget v2, p0, Lcom/mgtv/task/http/retry/a;->e:F

    mul-float/2addr v0, v2

    add-float/2addr v1, v0

    float-to-int v0, v1

    iput v0, p0, Lcom/mgtv/task/http/retry/a;->a:I

    .line 14
    invoke-virtual {p0, p1, p2}, Lcom/mgtv/task/http/retry/a;->f(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 15
    invoke-direct {p0, p1, p2}, Lcom/mgtv/task/http/retry/a;->g(Ljava/lang/String;Ljava/lang/String;)Lcom/mgtv/task/http/retry/RetryConfig$Entry;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    .line 16
    iget p0, p0, Lcom/mgtv/task/http/retry/a;->c:I

    add-int/lit8 p0, p0, -0x1

    .line 17
    iget-object v1, p2, Lcom/mgtv/task/http/retry/RetryConfig$Entry;->backup:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p0, v1, :cond_0

    iget-object v0, p2, Lcom/mgtv/task/http/retry/RetryConfig$Entry;->backup:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 18
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 19
    new-instance p3, Ljava/net/URL;

    invoke-direct {p3, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 20
    invoke-virtual {p3}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 21
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 22
    iget-object v0, p2, Lcom/mgtv/task/http/retry/RetryConfig$Entry;->scheme:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p0, v0, :cond_1

    .line 23
    iget-object p2, p2, Lcom/mgtv/task/http/retry/RetryConfig$Entry;->scheme:Ljava/util/List;

    invoke-interface {p2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 24
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 25
    invoke-virtual {p3}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object p2

    .line 26
    invoke-virtual {p1, p2, p0}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_1
    return-object p1

    .line 27
    :cond_2
    throw p3

    :cond_3
    return-object v0

    .line 28
    :cond_4
    throw p3
.end method

.method public a(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/mgtv/task/http/retry/a;->a:I

    .line 2
    iput p1, p0, Lcom/mgtv/task/http/retry/a;->g:I

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 2
    iget v0, p0, Lcom/mgtv/task/http/retry/a;->b:I

    if-eqz v0, :cond_0

    return v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/mgtv/task/http/retry/a;->c()Lcom/mgtv/task/http/retry/RetryConfig;

    move-result-object v0

    if-nez v0, :cond_1

    .line 4
    iget p0, p0, Lcom/mgtv/task/http/retry/a;->b:I

    return p0

    .line 5
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/mgtv/task/http/retry/a;->g(Ljava/lang/String;Ljava/lang/String;)Lcom/mgtv/task/http/retry/RetryConfig$Entry;

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
    iget p1, v0, Lcom/mgtv/task/http/retry/RetryConfig;->mainHostTimeout:I

    if-lez p1, :cond_3

    mul-int/lit16 p1, p1, 0x3e8

    goto :goto_0

    :cond_3
    iget p1, p0, Lcom/mgtv/task/http/retry/a;->b:I

    :goto_0
    return p1

    .line 9
    :cond_4
    iget p1, v0, Lcom/mgtv/task/http/retry/RetryConfig;->backupHostTimeout:I

    if-lez p1, :cond_5

    mul-int/lit16 p1, p1, 0x3e8

    goto :goto_1

    :cond_5
    iget p1, p0, Lcom/mgtv/task/http/retry/a;->b:I

    :goto_1
    return p1
.end method

.method public b()Lcom/mgtv/task/http/retry/c$a;
    .locals 0

    .line 10
    iget-object p0, p0, Lcom/mgtv/task/http/retry/a;->f:Lcom/mgtv/task/http/retry/c$a;

    return-object p0
.end method

.method public b(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/mgtv/task/http/retry/a;->b:I

    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 2
    iget p0, p0, Lcom/mgtv/task/http/retry/a;->c:I

    return p0
.end method

.method public c()Lcom/mgtv/task/http/retry/RetryConfig;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 3
    sget-object p0, Lcom/mgtv/task/http/retry/a;->i:Lcom/mgtv/task/http/retry/RetryConfig;

    if-eqz p0, :cond_1

    .line 4
    iget v0, p0, Lcom/mgtv/task/http/retry/RetryConfig;->retryStatus:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public c(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/mgtv/task/http/retry/a;->d:I

    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    invoke-virtual {p0}, Lcom/mgtv/task/http/retry/a;->c()Lcom/mgtv/task/http/retry/RetryConfig;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/mgtv/task/http/retry/a;->g(Ljava/lang/String;Ljava/lang/String;)Lcom/mgtv/task/http/retry/RetryConfig$Entry;

    move-result-object p0

    if-nez p0, :cond_1

    return v1

    :cond_1
    iget p0, v0, Lcom/mgtv/task/http/retry/RetryConfig;->retryInterval:I

    mul-int/lit16 p0, p0, 0x3e8

    return p0
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    const-string p0, "POST"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public f(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    iget p1, p0, Lcom/mgtv/task/http/retry/a;->c:I

    iget p0, p0, Lcom/mgtv/task/http/retry/a;->d:I

    if-gt p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

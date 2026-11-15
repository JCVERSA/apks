.class public final Lcom/yandex/mobile/ads/impl/je1;
.super Lcom/yandex/mobile/ads/impl/jk;
.source "SourceFile"


# instance fields
.field private final e:Lcom/yandex/mobile/ads/impl/nn$a;

.field private final f:Lcom/yandex/mobile/ads/impl/uh0;

.field private final g:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final h:Lcom/yandex/mobile/ads/impl/um;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final i:Lcom/yandex/mobile/ads/impl/uh0;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private j:Lcom/yandex/mobile/ads/impl/wj1;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/wj1<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lcom/yandex/mobile/ads/impl/vq1;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private l:Ljava/io/InputStream;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private m:Z

.field private n:J

.field private o:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "goog.exo.okhttp"

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/u60;->a(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/fe1;Ljava/lang/String;Lcom/yandex/mobile/ads/impl/uh0;)V
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/yandex/mobile/ads/impl/uh0;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/yandex/mobile/ads/impl/jk;-><init>(Z)V

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/hg;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yandex/mobile/ads/impl/nn$a;

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/je1;->e:Lcom/yandex/mobile/ads/impl/nn$a;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/je1;->g:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/je1;->h:Lcom/yandex/mobile/ads/impl/um;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/je1;->i:Lcom/yandex/mobile/ads/impl/uh0;

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/je1;->j:Lcom/yandex/mobile/ads/impl/wj1;

    new-instance p1, Lcom/yandex/mobile/ads/impl/uh0;

    invoke-direct {p1}, Lcom/yandex/mobile/ads/impl/uh0;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/je1;->f:Lcom/yandex/mobile/ads/impl/uh0;

    return-void
.end method

.method private a(J)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yandex/mobile/ads/impl/rh0;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    return-void

    :cond_0
    const/16 v2, 0x1000

    .line 89
    new-array v3, v2, [B

    :goto_0
    cmp-long v4, p1, v0

    if-lez v4, :cond_4

    int-to-long v4, v2

    .line 90
    :try_start_0
    invoke-static {p1, p2, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v4, v4

    .line 91
    iget-object v5, p0, Lcom/yandex/mobile/ads/impl/je1;->l:Ljava/io/InputStream;

    sget v6, Lcom/yandex/mobile/ads/impl/f92;->a:I

    const/4 v6, 0x0

    invoke-virtual {v5, v3, v6, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    .line 92
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v5

    if-nez v5, :cond_2

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    int-to-long v5, v4

    sub-long/2addr p1, v5

    .line 93
    invoke-virtual {p0, v4}, Lcom/yandex/mobile/ads/impl/jk;->c(I)V

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    .line 94
    :cond_1
    new-instance p0, Lcom/yandex/mobile/ads/impl/rh0;

    const/16 p1, 0x7d8

    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/rh0;-><init>(I)V

    throw p0

    .line 95
    :cond_2
    new-instance p0, Ljava/io/InterruptedIOException;

    invoke-direct {p0}, Ljava/io/InterruptedIOException;-><init>()V

    throw p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    :goto_1
    instance-of p1, p0, Lcom/yandex/mobile/ads/impl/rh0;

    if-eqz p1, :cond_3

    .line 97
    check-cast p0, Lcom/yandex/mobile/ads/impl/rh0;

    throw p0

    .line 98
    :cond_3
    new-instance p0, Lcom/yandex/mobile/ads/impl/rh0;

    const/16 p1, 0x7d0

    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/rh0;-><init>(I)V

    throw p0

    :cond_4
    return-void
.end method

.method private c([BII)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p3, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-wide v0, p0, Lcom/yandex/mobile/ads/impl/je1;->n:J

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    const/4 v3, -0x1

    if-eqz v2, :cond_2

    iget-wide v4, p0, Lcom/yandex/mobile/ads/impl/je1;->o:J

    sub-long/2addr v0, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v0, v4

    if-nez v2, :cond_1

    return v3

    :cond_1
    int-to-long v4, p3

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p3, v0

    :cond_2
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/je1;->l:Ljava/io/InputStream;

    sget v1, Lcom/yandex/mobile/ads/impl/f92;->a:I

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    if-ne p1, v3, :cond_3

    return v3

    :cond_3
    iget-wide p2, p0, Lcom/yandex/mobile/ads/impl/je1;->o:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lcom/yandex/mobile/ads/impl/je1;->o:J

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/jk;->c(I)V

    return p1
.end method

.method private f()V
    .locals 2

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/je1;->k:Lcom/yandex/mobile/ads/impl/vq1;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/vq1;->a()Lcom/yandex/mobile/ads/impl/zq1;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/zq1;->c()Lokio/BufferedSource;

    move-result-object v0

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/g92;->a(Ljava/io/Closeable;)V

    iput-object v1, p0, Lcom/yandex/mobile/ads/impl/je1;->k:Lcom/yandex/mobile/ads/impl/vq1;

    :cond_0
    iput-object v1, p0, Lcom/yandex/mobile/ads/impl/je1;->l:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/xv;)J
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yandex/mobile/ads/impl/rh0;
        }
    .end annotation

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lcom/yandex/mobile/ads/impl/je1;->o:J

    .line 2
    iput-wide v0, p0, Lcom/yandex/mobile/ads/impl/je1;->n:J

    .line 3
    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/jk;->b(Lcom/yandex/mobile/ads/impl/xv;)V

    .line 4
    iget-wide v2, p1, Lcom/yandex/mobile/ads/impl/xv;->f:J

    .line 5
    iget-wide v4, p1, Lcom/yandex/mobile/ads/impl/xv;->g:J

    .line 6
    iget-object v6, p1, Lcom/yandex/mobile/ads/impl/xv;->a:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    .line 7
    const-string v7, "<this>"

    invoke-static {v6, v7}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v8, 0x0

    .line 8
    :try_start_0
    invoke-static {v6, v7}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    new-instance v7, Lcom/yandex/mobile/ads/impl/gi0$a;

    invoke-direct {v7}, Lcom/yandex/mobile/ads/impl/gi0$a;-><init>()V

    invoke-virtual {v7, v8, v6}, Lcom/yandex/mobile/ads/impl/gi0$a;->a(Lcom/yandex/mobile/ads/impl/gi0;Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/gi0$a;

    move-result-object v6

    invoke-virtual {v6}, Lcom/yandex/mobile/ads/impl/gi0$a;->a()Lcom/yandex/mobile/ads/impl/gi0;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v6, v8

    :goto_0
    if-eqz v6, :cond_15

    .line 10
    new-instance v7, Lcom/yandex/mobile/ads/impl/vp1$a;

    invoke-direct {v7}, Lcom/yandex/mobile/ads/impl/vp1$a;-><init>()V

    invoke-virtual {v7, v6}, Lcom/yandex/mobile/ads/impl/vp1$a;->a(Lcom/yandex/mobile/ads/impl/gi0;)Lcom/yandex/mobile/ads/impl/vp1$a;

    move-result-object v6

    .line 11
    iget-object v7, p0, Lcom/yandex/mobile/ads/impl/je1;->h:Lcom/yandex/mobile/ads/impl/um;

    if-eqz v7, :cond_0

    .line 12
    invoke-virtual {v6, v7}, Lcom/yandex/mobile/ads/impl/vp1$a;->a(Lcom/yandex/mobile/ads/impl/um;)V

    .line 13
    :cond_0
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 14
    iget-object v9, p0, Lcom/yandex/mobile/ads/impl/je1;->i:Lcom/yandex/mobile/ads/impl/uh0;

    if-eqz v9, :cond_1

    .line 15
    invoke-virtual {v9}, Lcom/yandex/mobile/ads/impl/uh0;->a()Ljava/util/Map;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 16
    :cond_1
    iget-object v9, p0, Lcom/yandex/mobile/ads/impl/je1;->f:Lcom/yandex/mobile/ads/impl/uh0;

    invoke-virtual {v9}, Lcom/yandex/mobile/ads/impl/uh0;->a()Ljava/util/Map;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 17
    iget-object v9, p1, Lcom/yandex/mobile/ads/impl/xv;->e:Ljava/util/Map;

    invoke-virtual {v7, v9}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 18
    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 19
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v6, v10, v9}, Lcom/yandex/mobile/ads/impl/vp1$a;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/vp1$a;

    goto :goto_1

    .line 20
    :cond_2
    sget v7, Lcom/yandex/mobile/ads/impl/hi0;->c:I

    cmp-long v7, v2, v0

    const-wide/16 v9, -0x1

    if-nez v7, :cond_3

    cmp-long v7, v4, v9

    if-nez v7, :cond_3

    move-object v2, v8

    goto :goto_2

    .line 21
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v11, "bytes="

    invoke-direct {v7, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 23
    const-string v11, "-"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    cmp-long v11, v4, v9

    if-eqz v11, :cond_4

    add-long/2addr v2, v4

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    .line 24
    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 25
    :cond_4
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_2
    if-eqz v2, :cond_5

    .line 26
    const-string v3, "Range"

    invoke-virtual {v6, v3, v2}, Lcom/yandex/mobile/ads/impl/vp1$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    :cond_5
    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/je1;->g:Ljava/lang/String;

    if-eqz v2, :cond_6

    .line 28
    const-string v3, "User-Agent"

    invoke-virtual {v6, v3, v2}, Lcom/yandex/mobile/ads/impl/vp1$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    :cond_6
    iget v2, p1, Lcom/yandex/mobile/ads/impl/xv;->i:I

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_7

    goto :goto_3

    .line 30
    :cond_7
    const-string v2, "Accept-Encoding"

    const-string v4, "identity"

    invoke-virtual {v6, v2, v4}, Lcom/yandex/mobile/ads/impl/vp1$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    :goto_3
    iget-object v2, p1, Lcom/yandex/mobile/ads/impl/xv;->d:[B

    if-eqz v2, :cond_8

    .line 32
    invoke-static {v2}, Lcom/yandex/mobile/ads/impl/yp1;->a([B)Lcom/yandex/mobile/ads/impl/xp1;

    move-result-object v2

    goto :goto_4

    .line 33
    :cond_8
    iget v2, p1, Lcom/yandex/mobile/ads/impl/xv;->c:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_9

    .line 34
    sget-object v2, Lcom/yandex/mobile/ads/impl/f92;->f:[B

    invoke-static {v2}, Lcom/yandex/mobile/ads/impl/yp1;->a([B)Lcom/yandex/mobile/ads/impl/xp1;

    move-result-object v2

    goto :goto_4

    :cond_9
    move-object v2, v8

    .line 35
    :goto_4
    iget v4, p1, Lcom/yandex/mobile/ads/impl/xv;->c:I

    invoke-static {v4}, Lcom/yandex/mobile/ads/impl/xv;->a(I)Ljava/lang/String;

    move-result-object v4

    .line 36
    invoke-virtual {v6, v4, v2}, Lcom/yandex/mobile/ads/impl/vp1$a;->a(Ljava/lang/String;Lcom/yandex/mobile/ads/impl/yp1;)Lcom/yandex/mobile/ads/impl/vp1$a;

    .line 37
    invoke-virtual {v6}, Lcom/yandex/mobile/ads/impl/vp1$a;->a()Lcom/yandex/mobile/ads/impl/vp1;

    move-result-object v2

    .line 38
    iget-object v4, p0, Lcom/yandex/mobile/ads/impl/je1;->e:Lcom/yandex/mobile/ads/impl/nn$a;

    invoke-interface {v4, v2}, Lcom/yandex/mobile/ads/impl/nn$a;->a(Lcom/yandex/mobile/ads/impl/vp1;)Lcom/yandex/mobile/ads/impl/zn1;

    move-result-object v2

    .line 39
    :try_start_1
    invoke-static {}, Lcom/yandex/mobile/ads/impl/xx1;->b()Lcom/yandex/mobile/ads/impl/xx1;

    move-result-object v4

    .line 40
    new-instance v5, Lcom/yandex/mobile/ads/impl/ie1;

    invoke-direct {v5, v4}, Lcom/yandex/mobile/ads/impl/ie1;-><init>(Lcom/yandex/mobile/ads/impl/xx1;)V

    invoke-virtual {v2, v5}, Lcom/yandex/mobile/ads/impl/zn1;->a(Lcom/yandex/mobile/ads/impl/vn;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 41
    :try_start_2
    invoke-virtual {v4}, Lcom/yandex/mobile/ads/impl/i$h;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/yandex/mobile/ads/impl/vq1;
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 42
    :try_start_3
    iput-object v4, p0, Lcom/yandex/mobile/ads/impl/je1;->k:Lcom/yandex/mobile/ads/impl/vq1;

    .line 43
    invoke-virtual {v4}, Lcom/yandex/mobile/ads/impl/vq1;->a()Lcom/yandex/mobile/ads/impl/zq1;

    move-result-object v2

    .line 44
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/zq1;->c()Lokio/BufferedSource;

    move-result-object v5

    invoke-interface {v5}, Lokio/BufferedSource;->inputStream()Ljava/io/InputStream;

    move-result-object v5

    .line 46
    iput-object v5, p0, Lcom/yandex/mobile/ads/impl/je1;->l:Ljava/io/InputStream;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 47
    invoke-virtual {v4}, Lcom/yandex/mobile/ads/impl/vq1;->d()I

    move-result v5

    .line 48
    invoke-virtual {v4}, Lcom/yandex/mobile/ads/impl/vq1;->h()Z

    move-result v6

    if-nez v6, :cond_e

    const/16 v2, 0x1a0

    if-ne v5, v2, :cond_b

    .line 49
    invoke-virtual {v4}, Lcom/yandex/mobile/ads/impl/vq1;->g()Lcom/yandex/mobile/ads/impl/qf0;

    move-result-object v6

    const-string v7, "Content-Range"

    invoke-virtual {v6, v7}, Lcom/yandex/mobile/ads/impl/qf0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/yandex/mobile/ads/impl/hi0;->a(Ljava/lang/String;)J

    move-result-wide v6

    .line 50
    iget-wide v11, p1, Lcom/yandex/mobile/ads/impl/xv;->f:J

    cmp-long v6, v11, v6

    if-nez v6, :cond_b

    .line 51
    iput-boolean v3, p0, Lcom/yandex/mobile/ads/impl/je1;->m:Z

    .line 52
    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/jk;->c(Lcom/yandex/mobile/ads/impl/xv;)V

    .line 53
    iget-wide p0, p1, Lcom/yandex/mobile/ads/impl/xv;->g:J

    cmp-long v2, p0, v9

    if-eqz v2, :cond_a

    move-wide v0, p0

    :cond_a
    return-wide v0

    .line 54
    :cond_b
    :try_start_4
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/je1;->l:Ljava/io/InputStream;

    .line 55
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    sget v0, Lcom/yandex/mobile/ads/impl/f92;->a:I

    const/16 v0, 0x1000

    .line 57
    new-array v0, v0, [B

    .line 58
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 59
    :goto_5
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v6, -0x1

    if-eq v3, v6, :cond_c

    const/4 v6, 0x0

    .line 60
    invoke-virtual {v1, v0, v6, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_5

    .line 61
    :cond_c
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_6

    .line 62
    :catch_1
    sget p1, Lcom/yandex/mobile/ads/impl/f92;->a:I

    .line 63
    :goto_6
    invoke-virtual {v4}, Lcom/yandex/mobile/ads/impl/vq1;->g()Lcom/yandex/mobile/ads/impl/qf0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/qf0;->c()Ljava/util/TreeMap;

    move-result-object p1

    .line 64
    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/je1;->f()V

    if-ne v5, v2, :cond_d

    .line 65
    new-instance v8, Lcom/yandex/mobile/ads/impl/uv;

    const/16 p0, 0x7d8

    invoke-direct {v8, p0}, Lcom/yandex/mobile/ads/impl/uv;-><init>(I)V

    .line 66
    :cond_d
    new-instance p0, Lcom/yandex/mobile/ads/impl/th0;

    .line 67
    invoke-direct {p0, v5, v8, p1}, Lcom/yandex/mobile/ads/impl/th0;-><init>(ILcom/yandex/mobile/ads/impl/uv;Ljava/util/Map;)V

    throw p0

    .line 68
    :cond_e
    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/zq1;->b()Lcom/yandex/mobile/ads/impl/cx0;

    move-result-object v4

    if-eqz v4, :cond_f

    .line 69
    invoke-virtual {v4}, Lcom/yandex/mobile/ads/impl/cx0;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_7

    :cond_f
    const-string v4, ""

    .line 70
    :goto_7
    iget-object v6, p0, Lcom/yandex/mobile/ads/impl/je1;->j:Lcom/yandex/mobile/ads/impl/wj1;

    if-eqz v6, :cond_11

    invoke-interface {v6, v4}, Lcom/yandex/mobile/ads/impl/wj1;->apply(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    goto :goto_8

    .line 71
    :cond_10
    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/je1;->f()V

    .line 72
    new-instance p0, Lcom/yandex/mobile/ads/impl/sh0;

    invoke-direct {p0, v4}, Lcom/yandex/mobile/ads/impl/sh0;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_11
    :goto_8
    const/16 v4, 0xc8

    if-ne v5, v4, :cond_12

    .line 73
    iget-wide v4, p1, Lcom/yandex/mobile/ads/impl/xv;->f:J

    cmp-long v6, v4, v0

    if-eqz v6, :cond_12

    move-wide v0, v4

    .line 74
    :cond_12
    iget-wide v4, p1, Lcom/yandex/mobile/ads/impl/xv;->g:J

    cmp-long v6, v4, v9

    if-eqz v6, :cond_13

    .line 75
    iput-wide v4, p0, Lcom/yandex/mobile/ads/impl/je1;->n:J

    goto :goto_9

    .line 76
    :cond_13
    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/zq1;->a()J

    move-result-wide v4

    cmp-long v2, v4, v9

    if-eqz v2, :cond_14

    sub-long v9, v4, v0

    .line 77
    :cond_14
    iput-wide v9, p0, Lcom/yandex/mobile/ads/impl/je1;->n:J

    .line 78
    :goto_9
    iput-boolean v3, p0, Lcom/yandex/mobile/ads/impl/je1;->m:Z

    .line 79
    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/jk;->c(Lcom/yandex/mobile/ads/impl/xv;)V

    .line 80
    :try_start_5
    invoke-direct {p0, v0, v1}, Lcom/yandex/mobile/ads/impl/je1;->a(J)V
    :try_end_5
    .catch Lcom/yandex/mobile/ads/impl/rh0; {:try_start_5 .. :try_end_5} :catch_2

    .line 81
    iget-wide p0, p0, Lcom/yandex/mobile/ads/impl/je1;->n:J

    return-wide p0

    :catch_2
    move-exception p1

    .line 82
    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/je1;->f()V

    .line 83
    throw p1

    :catch_3
    move-exception p0

    goto :goto_a

    :catch_4
    move-exception p0

    .line 84
    :try_start_6
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 85
    :catch_5
    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/zn1;->a()V

    .line 86
    new-instance p0, Ljava/io/InterruptedIOException;

    invoke-direct {p0}, Ljava/io/InterruptedIOException;-><init>()V

    throw p0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 87
    :goto_a
    invoke-static {p0, v3}, Lcom/yandex/mobile/ads/impl/rh0;->a(Ljava/io/IOException;I)Lcom/yandex/mobile/ads/impl/rh0;

    move-result-object p0

    throw p0

    .line 88
    :cond_15
    new-instance p0, Lcom/yandex/mobile/ads/impl/rh0;

    const-string p1, "Malformed URL"

    const/16 v0, 0x3ec

    invoke-direct {p0, p1, v0}, Lcom/yandex/mobile/ads/impl/rh0;-><init>(Ljava/lang/String;I)V

    throw p0
.end method

.method public final close()V
    .locals 1

    iget-boolean v0, p0, Lcom/yandex/mobile/ads/impl/je1;->m:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yandex/mobile/ads/impl/je1;->m:Z

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/jk;->e()V

    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/je1;->f()V

    :cond_0
    return-void
.end method

.method public final getResponseHeaders()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/je1;->k:Lcom/yandex/mobile/ads/impl/vq1;

    if-nez p0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/vq1;->g()Lcom/yandex/mobile/ads/impl/qf0;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/qf0;->c()Ljava/util/TreeMap;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final getUri()Landroid/net/Uri;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/je1;->k:Lcom/yandex/mobile/ads/impl/vq1;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/vq1;->o()Lcom/yandex/mobile/ads/impl/vp1;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/vp1;->g()Lcom/yandex/mobile/ads/impl/gi0;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/gi0;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final read([BII)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yandex/mobile/ads/impl/rh0;
        }
    .end annotation

    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/yandex/mobile/ads/impl/je1;->c([BII)I

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget p1, Lcom/yandex/mobile/ads/impl/f92;->a:I

    const/4 p1, 0x2

    invoke-static {p0, p1}, Lcom/yandex/mobile/ads/impl/rh0;->a(Ljava/io/IOException;I)Lcom/yandex/mobile/ads/impl/rh0;

    move-result-object p0

    throw p0
.end method

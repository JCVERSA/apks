.class public final Lcom/android/net/toolbox/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/net/h;


# static fields
.field protected static final a:Z


# instance fields
.field protected final b:Lcom/android/net/toolbox/i;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected final c:Lcom/android/net/toolbox/d;

.field private final d:Lcom/android/net/toolbox/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/android/net/v;->b:Z

    sput-boolean v0, Lcom/android/net/toolbox/c;->a:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/net/toolbox/b;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/net/toolbox/d;

    invoke-direct {v0}, Lcom/android/net/toolbox/d;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/net/toolbox/c;-><init>(Lcom/android/net/toolbox/b;Lcom/android/net/toolbox/d;)V

    return-void
.end method

.method private constructor <init>(Lcom/android/net/toolbox/b;Lcom/android/net/toolbox/d;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/net/toolbox/c;->d:Lcom/android/net/toolbox/b;

    iput-object p1, p0, Lcom/android/net/toolbox/c;->b:Lcom/android/net/toolbox/i;

    iput-object p2, p0, Lcom/android/net/toolbox/c;->c:Lcom/android/net/toolbox/d;

    return-void
.end method

.method public constructor <init>(Lcom/android/net/toolbox/i;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3
    new-instance v0, Lcom/android/net/toolbox/d;

    invoke-direct {v0}, Lcom/android/net/toolbox/d;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/net/toolbox/c;-><init>(Lcom/android/net/toolbox/i;Lcom/android/net/toolbox/d;)V

    return-void
.end method

.method private constructor <init>(Lcom/android/net/toolbox/i;Lcom/android/net/toolbox/d;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/net/toolbox/c;->b:Lcom/android/net/toolbox/i;

    new-instance v0, Lcom/android/net/toolbox/a;

    invoke-direct {v0, p1}, Lcom/android/net/toolbox/a;-><init>(Lcom/android/net/toolbox/i;)V

    iput-object v0, p0, Lcom/android/net/toolbox/c;->d:Lcom/android/net/toolbox/b;

    iput-object p2, p0, Lcom/android/net/toolbox/c;->c:Lcom/android/net/toolbox/d;

    return-void
.end method

.method private static a(Ljava/util/List;Lcom/android/net/b$a;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/net/g;",
            ">;",
            "Lcom/android/net/b$a;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/net/g;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Ljava/util/TreeSet;

    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/net/g;

    iget-object v2, v2, Lcom/android/net/g;->a:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object p0, p1, Lcom/android/net/b$a;->h:Ljava/util/List;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_4

    iget-object p0, p1, Lcom/android/net/b$a;->h:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/net/g;

    iget-object v2, p1, Lcom/android/net/g;->a:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    iget-object p0, p1, Lcom/android/net/b$a;->g:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_4

    iget-object p0, p1, Lcom/android/net/b$a;->g:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    new-instance v2, Lcom/android/net/g;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {v2, v3, p1}, Lcom/android/net/g;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    return-object v1
.end method

.method private static a(Ljava/lang/String;Lcom/android/net/n;Lcom/android/net/u;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/net/n<",
            "*>;",
            "Lcom/android/net/u;",
            ")V"
        }
    .end annotation

    .line 3
    iget-object v0, p1, Lcom/android/net/n;->j:Lcom/android/net/r;

    invoke-virtual {p1}, Lcom/android/net/n;->j()I

    move-result v1

    :try_start_0
    invoke-interface {v0, p2}, Lcom/android/net/r;->a(Lcom/android/net/u;)V
    :try_end_0
    .catch Lcom/android/net/u; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p0, p2}, [Ljava/lang/Object;

    move-result-object p0

    const-string p2, "%s-retry [timeout=%s]"

    invoke-static {p2, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/net/n;->a(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception p2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {p0, v0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "%s-timeout-giveup [timeout=%s]"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/net/n;->a(Ljava/lang/String;)V

    throw p2
.end method

.method private a(Ljava/io/InputStream;I)[B
    .locals 5

    .line 4
    new-instance v0, Lcom/android/net/toolbox/n;

    iget-object v1, p0, Lcom/android/net/toolbox/c;->c:Lcom/android/net/toolbox/d;

    invoke-direct {v0, v1, p2}, Lcom/android/net/toolbox/n;-><init>(Lcom/android/net/toolbox/d;I)V

    const-string p2, "Error occurred when closing InputStream"

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    :try_start_0
    iget-object v3, p0, Lcom/android/net/toolbox/c;->c:Lcom/android/net/toolbox/d;

    const/16 v4, 0x400

    invoke-virtual {v3, v4}, Lcom/android/net/toolbox/d;->a(I)[B

    move-result-object v2

    :goto_0
    invoke-virtual {p1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    invoke-virtual {v0, v2, v1, v3}, Lcom/android/net/toolbox/n;->write([BII)V

    goto :goto_0

    :catchall_0
    move-exception v3

    goto :goto_2

    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {p2, p1}, Lcom/android/net/v;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    iget-object p0, p0, Lcom/android/net/toolbox/c;->c:Lcom/android/net/toolbox/d;

    invoke-virtual {p0, v2}, Lcom/android/net/toolbox/d;->a([B)V

    invoke-virtual {v0}, Lcom/android/net/toolbox/n;->close()V

    return-object v3

    :cond_1
    :try_start_2
    new-instance v3, Lcom/android/net/s;

    invoke-direct {v3}, Lcom/android/net/s;-><init>()V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    if-eqz p1, :cond_2

    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    :catch_1
    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {p2, p1}, Lcom/android/net/v;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    :goto_3
    iget-object p0, p0, Lcom/android/net/toolbox/c;->c:Lcom/android/net/toolbox/d;

    invoke-virtual {p0, v2}, Lcom/android/net/toolbox/d;->a([B)V

    invoke-virtual {v0}, Lcom/android/net/toolbox/n;->close()V

    throw v3
.end method


# virtual methods
.method public final a(Lcom/android/net/n;)Lcom/android/net/k;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/net/n<",
            "*>;)",
            "Lcom/android/net/k;"
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    :goto_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p1, Lcom/android/net/n;->k:Lcom/android/net/b$a;

    if-nez v4, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v4

    goto :goto_1

    :catch_0
    move-exception v4

    move-object v11, v2

    move-object v7, v3

    goto/16 :goto_4

    :catch_1
    move-exception p0

    goto/16 :goto_8

    :cond_0
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iget-object v6, v4, Lcom/android/net/b$a;->b:Ljava/lang/String;

    if-eqz v6, :cond_1

    const-string v7, "If-None-Match"

    invoke-interface {v5, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-wide v6, v4, Lcom/android/net/b$a;->d:J

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-lez v4, :cond_2

    const-string v4, "If-Modified-Since"

    invoke-static {}, Lcom/android/net/toolbox/g;->a()Ljava/text/SimpleDateFormat;

    move-result-object v8

    new-instance v9, Ljava/util/Date;

    invoke-direct {v9, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v8, v9}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    move-object v4, v5

    :goto_1
    iget-object v5, p0, Lcom/android/net/toolbox/c;->d:Lcom/android/net/toolbox/b;

    invoke-virtual {v5, p1, v4}, Lcom/android/net/toolbox/b;->a(Lcom/android/net/n;Ljava/util/Map;)Lcom/android/net/toolbox/h;

    move-result-object v4
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget v6, v4, Lcom/android/net/toolbox/h;->a:I

    iget-object v5, v4, Lcom/android/net/toolbox/h;->b:Ljava/util/List;

    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    const/16 v5, 0x130

    if-ne v6, v5, :cond_4

    iget-object v5, p1, Lcom/android/net/n;->k:Lcom/android/net/b$a;

    if-nez v5, :cond_3

    new-instance v5, Lcom/android/net/k;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v11, v6, v0

    const/16 v8, 0x130

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object v7, v5

    move-object v13, v2

    invoke-direct/range {v7 .. v13}, Lcom/android/net/k;-><init>(I[BZJLjava/util/List;)V

    return-object v5

    :catch_2
    move-exception v5

    move-object v11, v2

    move-object v7, v3

    move-object v3, v4

    move-object v4, v5

    goto/16 :goto_4

    :cond_3
    invoke-static {v2, v5}, Lcom/android/net/toolbox/c;->a(Ljava/util/List;Lcom/android/net/b$a;)Ljava/util/List;

    move-result-object v11

    new-instance v12, Lcom/android/net/k;

    iget-object v7, v5, Lcom/android/net/b$a;->a:[B

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long v9, v5, v0

    const/16 v6, 0x130

    const/4 v8, 0x1

    move-object v5, v12

    invoke-direct/range {v5 .. v11}, Lcom/android/net/k;-><init>(I[BZJLjava/util/List;)V

    return-object v12

    :cond_4
    iget-object v5, v4, Lcom/android/net/toolbox/h;->d:Ljava/io/InputStream;

    if-eqz v5, :cond_5

    iget v7, v4, Lcom/android/net/toolbox/h;->c:I

    invoke-direct {p0, v5, v7}, Lcom/android/net/toolbox/c;->a(Ljava/io/InputStream;I)[B

    move-result-object v3

    goto :goto_2

    :cond_5
    const/4 v5, 0x0

    new-array v3, v5, [B

    :goto_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    sub-long/2addr v7, v0

    sget-boolean v5, Lcom/android/net/toolbox/c;->a:Z

    if-nez v5, :cond_6

    const-wide/16 v9, 0xbb8

    cmp-long v5, v7, v9

    if-lez v5, :cond_8

    :cond_6
    const-string v5, "HTTP response for request=<%s> [lifetime=%d], [size=%s], [rc=%d], [retryCount=%s]"

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    if-eqz v3, :cond_7

    array-length v8, v3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    goto :goto_3

    :cond_7
    const-string v8, "null"

    :goto_3
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget-object v10, p1, Lcom/android/net/n;->j:Lcom/android/net/r;

    invoke-interface {v10}, Lcom/android/net/r;->b()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    filled-new-array {p1, v7, v8, v9, v10}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/android/net/v;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_8
    const/16 v5, 0xc8

    if-lt v6, v5, :cond_9

    const/16 v5, 0x12b

    if-gt v6, v5, :cond_9

    new-instance v12, Lcom/android/net/k;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    sub-long v9, v7, v0

    const/4 v8, 0x0

    move-object v5, v12

    move-object v7, v3

    move-object v11, v2

    invoke-direct/range {v5 .. v11}, Lcom/android/net/k;-><init>(I[BZJLjava/util/List;)V

    return-object v12

    :cond_9
    new-instance v5, Ljava/io/IOException;

    invoke-direct {v5}, Ljava/io/IOException;-><init>()V

    throw v5
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    :goto_4
    if-eqz v3, :cond_11

    iget v2, v3, Lcom/android/net/toolbox/h;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p1, Lcom/android/net/n;->b:Ljava/lang/String;

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "Unexpected response code %d for %s"

    invoke-static {v4, v3}, Lcom/android/net/v;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v7, :cond_10

    new-instance v3, Lcom/android/net/k;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v9, v4, v0

    const/4 v8, 0x0

    move-object v5, v3

    move v6, v2

    invoke-direct/range {v5 .. v11}, Lcom/android/net/k;-><init>(I[BZJLjava/util/List;)V

    const/16 v4, 0x191

    if-eq v2, v4, :cond_f

    const/16 v4, 0x193

    if-ne v2, v4, :cond_a

    goto :goto_7

    :cond_a
    const/16 v4, 0x190

    if-lt v2, v4, :cond_c

    const/16 v4, 0x1f3

    if-le v2, v4, :cond_b

    goto :goto_5

    :cond_b
    new-instance p0, Lcom/android/net/d;

    invoke-direct {p0, v3}, Lcom/android/net/d;-><init>(Lcom/android/net/k;)V

    throw p0

    :cond_c
    :goto_5
    const/16 v4, 0x1f4

    if-lt v2, v4, :cond_e

    const/16 v4, 0x257

    if-gt v2, v4, :cond_e

    iget-boolean v2, p1, Lcom/android/net/n;->i:Z

    if-eqz v2, :cond_d

    new-instance v2, Lcom/android/net/s;

    invoke-direct {v2, v3}, Lcom/android/net/s;-><init>(Lcom/android/net/k;)V

    const-string v3, "server"

    :goto_6
    invoke-static {v3, p1, v2}, Lcom/android/net/toolbox/c;->a(Ljava/lang/String;Lcom/android/net/n;Lcom/android/net/u;)V

    goto/16 :goto_0

    :cond_d
    new-instance p0, Lcom/android/net/s;

    invoke-direct {p0, v3}, Lcom/android/net/s;-><init>(Lcom/android/net/k;)V

    throw p0

    :cond_e
    new-instance p0, Lcom/android/net/s;

    invoke-direct {p0, v3}, Lcom/android/net/s;-><init>(Lcom/android/net/k;)V

    throw p0

    :cond_f
    :goto_7
    new-instance v2, Lcom/android/net/a;

    invoke-direct {v2, v3}, Lcom/android/net/a;-><init>(Lcom/android/net/k;)V

    const-string v3, "auth"

    goto :goto_6

    :cond_10
    new-instance v2, Lcom/android/net/j;

    invoke-direct {v2}, Lcom/android/net/j;-><init>()V

    const-string v3, "network"

    goto :goto_6

    :cond_11
    new-instance p0, Lcom/android/net/l;

    invoke-direct {p0, v4}, Lcom/android/net/l;-><init>(Ljava/lang/Throwable;)V

    throw p0

    :goto_8
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Bad URL "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/android/net/n;->b:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_3
    new-instance v2, Lcom/android/net/t;

    invoke-direct {v2}, Lcom/android/net/t;-><init>()V

    const-string/jumbo v3, "socket"

    goto :goto_6
.end method

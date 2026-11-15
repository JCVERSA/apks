.class public final Lcom/yandex/mobile/ads/impl/zh0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/bw0;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/tv$a;

.field private final b:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final c:Z

.field private final d:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLcom/yandex/mobile/ads/impl/yz$a;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/hg;->a(Z)V

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/zh0;->a:Lcom/yandex/mobile/ads/impl/tv$a;

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/zh0;->b:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/yandex/mobile/ads/impl/zh0;->c:Z

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/zh0;->d:Ljava/util/HashMap;

    return-void
.end method

.method private static a(Lcom/yandex/mobile/ads/impl/tv$a;Ljava/lang/String;[BLjava/util/Map;)[B
    .locals 8
    .param p2    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/tv$a;",
            "Ljava/lang/String;",
            "[B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yandex/mobile/ads/impl/cw0;
        }
    .end annotation

    .line 31
    new-instance v0, Lcom/yandex/mobile/ads/impl/s22;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/tv$a;->a()Lcom/yandex/mobile/ads/impl/tv;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/mobile/ads/impl/s22;-><init>(Lcom/yandex/mobile/ads/impl/tv;)V

    .line 32
    new-instance p0, Lcom/yandex/mobile/ads/impl/xv$a;

    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/xv$a;-><init>()V

    .line 33
    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/xv$a;->b(Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/xv$a;

    move-result-object p0

    .line 34
    invoke-virtual {p0, p3}, Lcom/yandex/mobile/ads/impl/xv$a;->a(Ljava/util/Map;)Lcom/yandex/mobile/ads/impl/xv$a;

    move-result-object p0

    .line 35
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/xv$a;->b()Lcom/yandex/mobile/ads/impl/xv$a;

    move-result-object p0

    .line 36
    invoke-virtual {p0, p2}, Lcom/yandex/mobile/ads/impl/xv$a;->a([B)Lcom/yandex/mobile/ads/impl/xv$a;

    move-result-object p0

    const/4 p1, 0x1

    .line 37
    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/xv$a;->a(I)Lcom/yandex/mobile/ads/impl/xv$a;

    move-result-object p0

    .line 38
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/xv$a;->a()Lcom/yandex/mobile/ads/impl/xv;

    move-result-object v2

    const/4 p0, 0x0

    move p3, p0

    move-object p2, v2

    .line 39
    :goto_0
    :try_start_0
    new-instance v1, Lcom/yandex/mobile/ads/impl/vv;

    invoke-direct {v1, v0, p2}, Lcom/yandex/mobile/ads/impl/vv;-><init>(Lcom/yandex/mobile/ads/impl/s22;Lcom/yandex/mobile/ads/impl/xv;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 40
    :try_start_1
    sget v3, Lcom/yandex/mobile/ads/impl/f92;->a:I

    const/16 v3, 0x1000

    .line 41
    new-array v3, v3, [B

    .line 42
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 43
    :goto_1
    invoke-virtual {v1, v3}, Lcom/yandex/mobile/ads/impl/vv;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    .line 44
    invoke-virtual {v4, v3, p0, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_4

    :catch_0
    move-exception v3

    goto :goto_2

    .line 45
    :cond_0
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_1
    .catch Lcom/yandex/mobile/ads/impl/th0; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    :try_start_2
    invoke-static {v1}, Lcom/yandex/mobile/ads/impl/f92;->a(Ljava/io/Closeable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-object p0

    :catch_1
    move-exception p0

    move-object v7, p0

    goto :goto_5

    .line 47
    :goto_2
    :try_start_3
    iget v4, v3, Lcom/yandex/mobile/ads/impl/th0;->e:I

    const/16 v5, 0x133

    if-eq v4, v5, :cond_1

    const/16 v5, 0x134

    if-ne v4, v5, :cond_2

    :cond_1
    const/4 v4, 0x5

    if-ge p3, v4, :cond_2

    .line 48
    iget-object v4, v3, Lcom/yandex/mobile/ads/impl/th0;->f:Ljava/util/Map;

    if-eqz v4, :cond_2

    .line 49
    const-string v5, "Location"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-eqz v4, :cond_2

    .line 50
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 51
    invoke-interface {v4, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    goto :goto_3

    :cond_2
    const/4 v4, 0x0

    :goto_3
    if-eqz v4, :cond_3

    add-int/2addr p3, p1

    .line 52
    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/xv;->a()Lcom/yandex/mobile/ads/impl/xv$a;

    move-result-object p2

    invoke-virtual {p2, v4}, Lcom/yandex/mobile/ads/impl/xv$a;->b(Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/xv$a;

    move-result-object p2

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/xv$a;->a()Lcom/yandex/mobile/ads/impl/xv;

    move-result-object p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 53
    :try_start_4
    invoke-static {v1}, Lcom/yandex/mobile/ads/impl/f92;->a(Ljava/io/Closeable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 54
    :cond_3
    :try_start_5
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 55
    :goto_4
    :try_start_6
    invoke-static {v1}, Lcom/yandex/mobile/ads/impl/f92;->a(Ljava/io/Closeable;)V

    .line 56
    throw p0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 57
    :goto_5
    new-instance p0, Lcom/yandex/mobile/ads/impl/cw0;

    .line 58
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/s22;->f()Landroid/net/Uri;

    move-result-object v3

    .line 59
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/s22;->getResponseHeaders()Ljava/util/Map;

    move-result-object v4

    .line 61
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/s22;->e()J

    move-result-wide v5

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/yandex/mobile/ads/impl/cw0;-><init>(Lcom/yandex/mobile/ads/impl/xv;Landroid/net/Uri;Ljava/util/Map;JLjava/lang/Exception;)V

    throw p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 25
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/zh0;->d:Ljava/util/HashMap;

    monitor-enter v0

    .line 28
    :try_start_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/zh0;->d:Ljava/util/HashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 30
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/l60$d;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yandex/mobile/ads/impl/cw0;
        }
    .end annotation

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/l60$d;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&signedRequest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/l60$d;->a()[B

    move-result-object p1

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/f92;->a([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 22
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/zh0;->a:Lcom/yandex/mobile/ads/impl/tv$a;

    .line 23
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    .line 24
    invoke-static {p0, p1, v1, v0}, Lcom/yandex/mobile/ads/impl/zh0;->a(Lcom/yandex/mobile/ads/impl/tv$a;Ljava/lang/String;[BLjava/util/Map;)[B

    move-result-object p0

    return-object p0
.end method

.method public final a(Ljava/util/UUID;Lcom/yandex/mobile/ads/impl/l60$a;)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yandex/mobile/ads/impl/cw0;
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/l60$a;->b()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-boolean v1, p0, Lcom/yandex/mobile/ads/impl/zh0;->c:Z

    if-nez v1, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/zh0;->b:Ljava/lang/String;

    .line 4
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 5
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 6
    sget-object v2, Lcom/yandex/mobile/ads/impl/rm;->e:Ljava/util/UUID;

    invoke-virtual {v2, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 7
    const-string v3, "text/xml"

    goto :goto_0

    .line 8
    :cond_2
    sget-object v3, Lcom/yandex/mobile/ads/impl/rm;->c:Ljava/util/UUID;

    invoke-virtual {v3, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "application/json"

    goto :goto_0

    :cond_3
    const-string v3, "application/octet-stream"

    .line 9
    :goto_0
    const-string v4, "Content-Type"

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-virtual {v2, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 11
    const-string p1, "SOAPAction"

    const-string v2, "http://schemas.microsoft.com/DRM/2007/03/protocols/AcquireLicense"

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    :cond_4
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/zh0;->d:Ljava/util/HashMap;

    monitor-enter p1

    .line 13
    :try_start_0
    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/zh0;->d:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 14
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/zh0;->a:Lcom/yandex/mobile/ads/impl/tv$a;

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/l60$a;->a()[B

    move-result-object p1

    invoke-static {p0, v0, p1, v1}, Lcom/yandex/mobile/ads/impl/zh0;->a(Lcom/yandex/mobile/ads/impl/tv$a;Ljava/lang/String;[BLjava/util/Map;)[B

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    .line 16
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 17
    :cond_5
    new-instance p0, Lcom/yandex/mobile/ads/impl/cw0;

    new-instance p1, Lcom/yandex/mobile/ads/impl/xv$a;

    invoke-direct {p1}, Lcom/yandex/mobile/ads/impl/xv$a;-><init>()V

    sget-object v2, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 18
    invoke-virtual {p1, v2}, Lcom/yandex/mobile/ads/impl/xv$a;->a(Landroid/net/Uri;)Lcom/yandex/mobile/ads/impl/xv$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/xv$a;->a()Lcom/yandex/mobile/ads/impl/xv;

    move-result-object v1

    .line 19
    invoke-static {}, Lcom/yandex/mobile/ads/impl/lk0;->g()Lcom/yandex/mobile/ads/impl/lk0;

    move-result-object v3

    new-instance v6, Ljava/lang/IllegalStateException;

    const-string p1, "No license URL"

    invoke-direct {v6, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/yandex/mobile/ads/impl/cw0;-><init>(Lcom/yandex/mobile/ads/impl/xv;Landroid/net/Uri;Ljava/util/Map;JLjava/lang/Exception;)V

    throw p0
.end method

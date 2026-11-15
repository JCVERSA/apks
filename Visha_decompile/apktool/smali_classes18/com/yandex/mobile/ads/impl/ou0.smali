.class public final Lcom/yandex/mobile/ads/impl/ou0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/ps0;

.field private final b:Ljava/lang/Object;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/ps0;)V
    .locals 1

    const-string v0, "localStorage"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ou0;->a:Lcom/yandex/mobile/ads/impl/ps0;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ou0;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ou0;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/ou0;->c:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/ou0;->a:Lcom/yandex/mobile/ads/impl/ps0;

    const-string v2, "YmadMauid"

    invoke-interface {v1, v2}, Lcom/yandex/mobile/ads/impl/ps0;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/yandex/mobile/ads/impl/ou0;->c:Ljava/lang/String;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 4
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ou0;->c:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    .line 5
    const-string v0, "mauid"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ou0;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 7
    :try_start_0
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ou0;->c:Ljava/lang/String;

    .line 8
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ou0;->a:Lcom/yandex/mobile/ads/impl/ps0;

    const-string v1, "YmadMauid"

    invoke-interface {p0, v1, p1}, Lcom/yandex/mobile/ads/impl/ps0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    sget-object p0, Lzfb;->a:Lzfb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 11
    monitor-exit v0

    throw p0
.end method

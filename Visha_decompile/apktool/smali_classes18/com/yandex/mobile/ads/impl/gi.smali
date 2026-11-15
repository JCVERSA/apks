.class public final Lcom/yandex/mobile/ads/impl/gi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/ei;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/di;

.field private final b:Lcom/yandex/mobile/ads/impl/hi;

.field private final c:Ljava/lang/Object;

.field private final d:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/kx1;Lcom/yandex/mobile/ads/impl/di;Lcom/yandex/mobile/ads/impl/hi;)V
    .locals 1

    const-string v0, "sensitiveModeChecker"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "autograbCollectionEnabledValidator"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "autograbProvider"

    invoke-static {p3, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/gi;->a:Lcom/yandex/mobile/ads/impl/di;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/gi;->b:Lcom/yandex/mobile/ads/impl/hi;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/gi;->c:Ljava/lang/Object;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/gi;->d:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/gi;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/gi;->d:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 3
    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/gi;->d:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 4
    sget-object v2, Lzfb;->a:Lzfb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit v0

    .line 6
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/mobile/ads/impl/ii;

    .line 7
    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/gi;->b:Lcom/yandex/mobile/ads/impl/hi;

    invoke-interface {v2, v1}, Lcom/yandex/mobile/ads/impl/hi;->b(Lcom/yandex/mobile/ads/impl/ii;)V

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    .line 8
    monitor-exit v0

    throw p0
.end method

.method public final a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/ii;)V
    .locals 1

    .line 9
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "autograbRequestListener"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/gi;->a:Lcom/yandex/mobile/ads/impl/di;

    invoke-virtual {v0, p1}, Lcom/yandex/mobile/ads/impl/di;->a(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 11
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/gi;->c:Ljava/lang/Object;

    monitor-enter p1

    .line 12
    :try_start_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/gi;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/gi;->b:Lcom/yandex/mobile/ads/impl/hi;

    invoke-interface {p0, p2}, Lcom/yandex/mobile/ads/impl/hi;->a(Lcom/yandex/mobile/ads/impl/ii;)V

    .line 14
    sget-object p0, Lzfb;->a:Lzfb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit p1

    throw p0

    :cond_0
    const/4 p0, 0x0

    .line 16
    invoke-interface {p2, p0}, Lcom/yandex/mobile/ads/impl/ii;->a(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

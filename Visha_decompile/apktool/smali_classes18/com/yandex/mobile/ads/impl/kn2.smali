.class public final Lcom/yandex/mobile/ads/impl/kn2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/bb2;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/qe1;

.field private final b:Ljava/lang/Object;

.field private final c:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/yandex/mobile/ads/impl/qe1;->g:Lcom/yandex/mobile/ads/impl/qe1$a;

    invoke-virtual {v0, p1}, Lcom/yandex/mobile/ads/impl/qe1$a;->a(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/qe1;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/kn2;->a:Lcom/yandex/mobile/ads/impl/qe1;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/kn2;->b:Ljava/lang/Object;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/kn2;->c:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/kn2;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/kn2;->c:Ljava/util/ArrayList;

    invoke-static {v1}, Li81;->b1(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/kn2;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 4
    sget-object v2, Lzfb;->a:Lzfb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit v0

    .line 6
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/mobile/ads/impl/cb2;

    .line 7
    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/kn2;->a:Lcom/yandex/mobile/ads/impl/qe1;

    invoke-virtual {v2, v1}, Lcom/yandex/mobile/ads/impl/qe1;->a(Lcom/yandex/mobile/ads/impl/cb2;)V

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    .line 8
    monitor-exit v0

    throw p0
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/cb2;)V
    .locals 2

    .line 9
    const-string v0, "listener"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/kn2;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 11
    :try_start_0
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/kn2;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/kn2;->a:Lcom/yandex/mobile/ads/impl/qe1;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/qe1;->b(Lcom/yandex/mobile/ads/impl/cb2;)V

    .line 13
    sget-object p0, Lzfb;->a:Lzfb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 15
    monitor-exit v0

    throw p0
.end method

.class public final Lcom/yandex/mobile/ads/impl/jb0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/jb0$a;,
        Lcom/yandex/mobile/ads/impl/jb0$b;
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/g5;

.field private final b:Lcom/yandex/mobile/ads/impl/za1;

.field private final c:Lcom/yandex/mobile/ads/impl/tb1;

.field private final d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/g5;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/yandex/mobile/ads/impl/za1;

    invoke-direct {v0, p1}, Lcom/yandex/mobile/ads/impl/za1;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v1, Lcom/yandex/mobile/ads/impl/tb1;

    invoke-direct {v1}, Lcom/yandex/mobile/ads/impl/tb1;-><init>()V

    .line 3
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/yandex/mobile/ads/impl/jb0;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/g5;Lcom/yandex/mobile/ads/impl/za1;Lcom/yandex/mobile/ads/impl/tb1;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/g5;Lcom/yandex/mobile/ads/impl/za1;Lcom/yandex/mobile/ads/impl/tb1;)V
    .locals 1

    .line 4
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "adLoadingPhasesManager"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "nativeVideoCacheManager"

    invoke-static {p3, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "nativeVideoUrlsProvider"

    invoke-static {p4, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/jb0;->a:Lcom/yandex/mobile/ads/impl/g5;

    .line 7
    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/jb0;->b:Lcom/yandex/mobile/ads/impl/za1;

    .line 8
    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/jb0;->c:Lcom/yandex/mobile/ads/impl/tb1;

    .line 9
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/jb0;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/jb0;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/jb0;->b:Lcom/yandex/mobile/ads/impl/za1;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/za1;->a()V

    .line 3
    sget-object p0, Lzfb;->a:Lzfb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 5
    monitor-exit v0

    throw p0
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/s41;Lcom/yandex/mobile/ads/impl/fb1;Lcom/yandex/mobile/ads/impl/dw;)V
    .locals 8

    .line 6
    const-string v0, "nativeAdBlock"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoLoadListener"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "debugEventsReporter"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/jb0;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 8
    :try_start_0
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/s41;->c()Lcom/yandex/mobile/ads/impl/y61;

    move-result-object p1

    .line 9
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/jb0;->c:Lcom/yandex/mobile/ads/impl/tb1;

    invoke-virtual {v1, p1}, Lcom/yandex/mobile/ads/impl/tb1;->a(Lcom/yandex/mobile/ads/impl/y61;)Ljava/util/List;

    move-result-object p1

    .line 10
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 11
    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/fb1;->a()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 12
    :cond_0
    new-instance v7, Lcom/yandex/mobile/ads/impl/jb0$a;

    .line 13
    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/jb0;->a:Lcom/yandex/mobile/ads/impl/g5;

    .line 14
    iget-object v4, p0, Lcom/yandex/mobile/ads/impl/jb0;->b:Lcom/yandex/mobile/ads/impl/za1;

    const/4 v1, 0x1

    .line 15
    invoke-static {p1, v1}, Li81;->f0(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v1, v7

    move-object v3, p2

    move-object v6, p3

    .line 16
    invoke-direct/range {v1 .. v6}, Lcom/yandex/mobile/ads/impl/jb0$a;-><init>(Lcom/yandex/mobile/ads/impl/g5;Lcom/yandex/mobile/ads/impl/fb1;Lcom/yandex/mobile/ads/impl/za1;Ljava/util/Iterator;Lcom/yandex/mobile/ads/impl/dw;)V

    .line 17
    iget-object p2, p0, Lcom/yandex/mobile/ads/impl/jb0;->a:Lcom/yandex/mobile/ads/impl/g5;

    sget-object p3, Lcom/yandex/mobile/ads/impl/f5;->r:Lcom/yandex/mobile/ads/impl/f5;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    const-string v1, "adLoadingPhaseType"

    invoke-static {p3, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 19
    invoke-virtual {p2, p3, v1}, Lcom/yandex/mobile/ads/impl/g5;->a(Lcom/yandex/mobile/ads/impl/f5;Lcom/yandex/mobile/ads/impl/ha2;)V

    .line 20
    invoke-static {p1}, Li81;->o0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/Pair;

    invoke-virtual {p1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 21
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/jb0;->b:Lcom/yandex/mobile/ads/impl/za1;

    invoke-virtual {p0, p2, v7, p1}, Lcom/yandex/mobile/ads/impl/za1;->a(Ljava/lang/String;Lcom/yandex/mobile/ads/impl/ee2;Ljava/lang/String;)V

    .line 22
    :goto_0
    sget-object p0, Lzfb;->a:Lzfb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    .line 24
    const-string v0, "requestId"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/jb0;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 26
    :try_start_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/jb0;->b:Lcom/yandex/mobile/ads/impl/za1;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/za1;->a(Ljava/lang/String;)V

    .line 27
    sget-object p0, Lzfb;->a:Lzfb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 29
    monitor-exit v0

    throw p0
.end method

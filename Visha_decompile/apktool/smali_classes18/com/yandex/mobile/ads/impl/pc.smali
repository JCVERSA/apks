.class public final Lcom/yandex/mobile/ads/impl/pc;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Ljava/util/concurrent/CopyOnWriteArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/pc;->a:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/pc;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method public static final a(Lcom/yandex/mobile/ads/impl/pc;Landroid/content/Context;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/pc;->a:Ljava/lang/Object;

    .line 2
    monitor-enter v0

    .line 3
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/pc;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 4
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/pc;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 5
    sget-object p0, Lzfb;->a:Lzfb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit v0

    .line 7
    sget p0, Lcom/yandex/mobile/ads/impl/oc;->h:I

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/oc$a;->a(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/oc;

    move-result-object p0

    .line 8
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/impl/vc;

    .line 9
    invoke-virtual {p0, v0}, Lcom/yandex/mobile/ads/impl/oc;->a(Lcom/yandex/mobile/ads/impl/vc;)V

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    .line 10
    monitor-exit v0

    throw p0
.end method

.method public static final a(Lcom/yandex/mobile/ads/impl/pc;Landroid/content/Context;Lcom/yandex/mobile/ads/impl/vc;)V
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/pc;->a:Ljava/lang/Object;

    .line 12
    monitor-enter v0

    .line 13
    :try_start_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/pc;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    sget p0, Lcom/yandex/mobile/ads/impl/oc;->h:I

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/oc$a;->a(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/oc;

    move-result-object p0

    .line 15
    invoke-virtual {p0, p2}, Lcom/yandex/mobile/ads/impl/oc;->b(Lcom/yandex/mobile/ads/impl/vc;)V

    .line 16
    sget-object p0, Lzfb;->a:Lzfb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lwh1;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lwh1<",
            "-",
            "Lcom/yandex/mobile/ads/impl/nc;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 18
    invoke-static {}, Lcom/yandex/mobile/ads/impl/qu;->a()Lkotlinx/coroutines/c;

    move-result-object v0

    new-instance v1, Lcom/yandex/mobile/ads/impl/pc$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/yandex/mobile/ads/impl/pc$a;-><init>(Lcom/yandex/mobile/ads/impl/pc;Landroid/content/Context;Lwh1;)V

    invoke-static {v0, v1, p2}, Lcl0;->g(Lkotlin/coroutines/d;Ls74;Lwh1;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

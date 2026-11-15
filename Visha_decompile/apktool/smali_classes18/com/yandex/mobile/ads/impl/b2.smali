.class public final Lcom/yandex/mobile/ads/impl/b2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/a2;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/c2;

.field private final b:Ljava/util/ArrayList;

.field private final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/c2;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "adBlockerDetector"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/b2;->a:Lcom/yandex/mobile/ads/impl/c2;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/b2;->b:Ljava/util/ArrayList;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/b2;->c:Ljava/lang/Object;

    return-void
.end method

.method public static final a(Lcom/yandex/mobile/ads/impl/b2;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/b2;->c:Ljava/lang/Object;

    .line 2
    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/b2;->b:Ljava/util/ArrayList;

    invoke-static {v1}, Li81;->b1(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    .line 4
    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/b2;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 5
    sget-object v2, Lzfb;->a:Lzfb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit v0

    .line 7
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/mobile/ads/impl/e2;

    .line 8
    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/b2;->a:Lcom/yandex/mobile/ads/impl/c2;

    invoke-virtual {v2, v1}, Lcom/yandex/mobile/ads/impl/c2;->a(Lcom/yandex/mobile/ads/impl/e2;)V

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    .line 9
    monitor-exit v0

    throw p0
.end method

.method public static final a(Lcom/yandex/mobile/ads/impl/b2;Lcom/yandex/mobile/ads/impl/e2;)V
    .locals 2

    .line 10
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/b2;->c:Ljava/lang/Object;

    .line 11
    monitor-enter v0

    .line 12
    :try_start_0
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/b2;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/b2;->a:Lcom/yandex/mobile/ads/impl/c2;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/c2;->b(Lcom/yandex/mobile/ads/impl/e2;)V

    .line 14
    sget-object p0, Lzfb;->a:Lzfb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final a(Lwh1;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwh1<",
            "-",
            "Lzfb;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 16
    invoke-static {}, Lcom/yandex/mobile/ads/impl/qu;->a()Lkotlinx/coroutines/c;

    move-result-object v0

    new-instance v1, Lcom/yandex/mobile/ads/impl/b2$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/yandex/mobile/ads/impl/b2$a;-><init>(Lcom/yandex/mobile/ads/impl/b2;Lwh1;)V

    invoke-static {v0, v1, p1}, Lcl0;->g(Lkotlin/coroutines/d;Ls74;Lwh1;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

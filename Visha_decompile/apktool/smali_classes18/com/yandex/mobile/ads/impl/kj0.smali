.class public final Lcom/yandex/mobile/ads/impl/kj0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/kj0$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/oj0;

.field private final b:Lcom/yandex/mobile/ads/impl/id1$c;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/yandex/mobile/ads/impl/id1;->c:Lcom/yandex/mobile/ads/impl/id1$a;

    invoke-virtual {v0, p1}, Lcom/yandex/mobile/ads/impl/id1$a;->a(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/id1;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/id1;->b()Lcom/yandex/mobile/ads/impl/jz1;

    move-result-object v1

    .line 3
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/id1;->c()Lcom/yandex/mobile/ads/impl/o82;

    move-result-object v2

    .line 4
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/yandex/mobile/ads/impl/kj0;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/id1;Lcom/yandex/mobile/ads/impl/oj0;Lcom/yandex/mobile/ads/impl/id1$c;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/id1;Lcom/yandex/mobile/ads/impl/oj0;Lcom/yandex/mobile/ads/impl/id1$c;)V
    .locals 1

    .line 5
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "networkingImage"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "imageLoader"

    invoke-static {p3, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "urlBitmapCache"

    invoke-static {p4, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/kj0;->a:Lcom/yandex/mobile/ads/impl/oj0;

    .line 8
    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/kj0;->b:Lcom/yandex/mobile/ads/impl/id1$c;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/LinkedHashMap;)V
    .locals 3

    .line 10
    const-string v0, "images"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 12
    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/kj0;->b:Lcom/yandex/mobile/ads/impl/id1$c;

    invoke-interface {v2, v1, v0}, Lcom/yandex/mobile/ads/impl/id1$c;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Ljava/util/Set;Lcom/yandex/mobile/ads/impl/gk0;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/yandex/mobile/ads/impl/xj0;",
            ">;",
            "Lcom/yandex/mobile/ads/impl/gk0;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "imageValuesToLoad"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imagesFetchListener"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lkotlin/collections/a;->l()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/yandex/mobile/ads/impl/gk0;->a(Ljava/util/Map;)V

    goto :goto_0

    .line 4
    :cond_0
    new-instance v7, Lcom/yandex/mobile/ads/impl/kj0$a;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/kj0;->a:Lcom/yandex/mobile/ads/impl/oj0;

    .line 5
    new-instance v4, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-direct {v4, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 6
    new-instance v5, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p0

    invoke-direct {v5, p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 7
    new-instance v6, Lcom/yandex/mobile/ads/impl/j01;

    invoke-direct {v6}, Lcom/yandex/mobile/ads/impl/j01;-><init>()V

    move-object v0, v7

    move-object v2, p1

    move-object v3, p2

    .line 8
    invoke-direct/range {v0 .. v6}, Lcom/yandex/mobile/ads/impl/kj0$a;-><init>(Lcom/yandex/mobile/ads/impl/oj0;Ljava/util/Set;Lcom/yandex/mobile/ads/impl/gk0;Landroid/os/Handler;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/yandex/mobile/ads/impl/j01;)V

    .line 9
    invoke-virtual {v7}, Lcom/yandex/mobile/ads/impl/kj0$a;->a()V

    :goto_0
    return-void
.end method

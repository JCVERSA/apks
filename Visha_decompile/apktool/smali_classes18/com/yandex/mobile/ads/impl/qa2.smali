.class public final Lcom/yandex/mobile/ads/impl/qa2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/bb2;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/db2;Lcom/yandex/mobile/ads/impl/bb2;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "verificationResourcesLoaderProvider"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/qa2;->a:Lcom/yandex/mobile/ads/impl/bb2;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;Lcom/yandex/mobile/ads/impl/cb2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yandex/mobile/ads/impl/mb2;",
            ">;",
            "Lcom/yandex/mobile/ads/impl/cb2;",
            ")V"
        }
    .end annotation

    const-string v0, "videoAds"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/qa2;->a:Lcom/yandex/mobile/ads/impl/bb2;

    if-eqz v0, :cond_2

    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/impl/mb2;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/mb2;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/qa2;->a:Lcom/yandex/mobile/ads/impl/bb2;

    invoke-interface {p0, p2}, Lcom/yandex/mobile/ads/impl/bb2;->a(Lcom/yandex/mobile/ads/impl/cb2;)V

    goto :goto_1

    :cond_2
    :goto_0
    invoke-interface {p2}, Lcom/yandex/mobile/ads/impl/cb2;->a()V

    :goto_1
    return-void
.end method

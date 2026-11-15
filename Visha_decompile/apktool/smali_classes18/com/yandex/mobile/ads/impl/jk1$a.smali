.class public final Lcom/yandex/mobile/ads/impl/jk1$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/monetization/ads/mediation/base/prefetch/MediatedAdapterPrefetchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/mobile/ads/impl/jk1;->a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/gz1;Lcom/yandex/mobile/ads/impl/lz0;Lcom/monetization/ads/mediation/base/prefetch/MediatedAdapterPrefetcher;Lwh1;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/mobile/ads/impl/jk1;

.field final synthetic b:Lcom/yandex/mobile/ads/impl/lz0;

.field final synthetic c:Lcr0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcr0;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/jk1;Lcom/yandex/mobile/ads/impl/lz0;Lkotlinx/coroutines/CancellableContinuationImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/jk1$a;->a:Lcom/yandex/mobile/ads/impl/jk1;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/jk1$a;->b:Lcom/yandex/mobile/ads/impl/lz0;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/jk1$a;->c:Lcr0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPrefetchFailed(Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 8

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/jk1$a;->a:Lcom/yandex/mobile/ads/impl/jk1;

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/jk1;->a(Lcom/yandex/mobile/ads/impl/jk1;)Lcom/yandex/mobile/ads/impl/ik1;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/jk1$a;->b:Lcom/yandex/mobile/ads/impl/lz0;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/lz0;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "adapter"

    invoke-static {v3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v6, Lcom/yandex/mobile/ads/impl/sk1;

    sget-object v0, Lcom/yandex/mobile/ads/impl/tk1;->d:Lcom/yandex/mobile/ads/impl/tk1;

    invoke-direct {v6, v0, p2, p1}, Lcom/yandex/mobile/ads/impl/sk1;-><init>(Lcom/yandex/mobile/ads/impl/tk1;Ljava/lang/String;Ljava/lang/Integer;)V

    new-instance p1, Lcom/yandex/mobile/ads/impl/hk1;

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lcom/yandex/mobile/ads/impl/hk1;-><init>(Ljava/lang/String;Lcom/yandex/mobile/ads/impl/lk1;Lcom/yandex/mobile/ads/impl/uk1;Lcom/yandex/mobile/ads/impl/sk1;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/yandex/mobile/ads/impl/jk1$a;->c:Lcr0;

    invoke-interface {p2}, Lcr0;->isActive()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/jk1$a;->c:Lcr0;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lwh1;->resumeWith(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final onPrefetched(Lcom/monetization/ads/mediation/base/prefetch/model/MediatedPrefetchAdapterData;)V
    .locals 8

    const-string v0, "mediatedPrefetchAdapterData"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/jk1$a;->a:Lcom/yandex/mobile/ads/impl/jk1;

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/jk1;->a(Lcom/yandex/mobile/ads/impl/jk1;)Lcom/yandex/mobile/ads/impl/ik1;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/jk1$a;->b:Lcom/yandex/mobile/ads/impl/lz0;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/lz0;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "adapter"

    invoke-static {v3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adapterData"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/yandex/mobile/ads/impl/lk1;

    invoke-virtual {p1}, Lcom/monetization/ads/mediation/base/prefetch/model/MediatedPrefetchAdapterData;->getNetworkWinner()Lcom/monetization/ads/mediation/base/prefetch/model/MediatedPrefetchNetworkWinner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/monetization/ads/mediation/base/prefetch/model/MediatedPrefetchNetworkWinner;->getNetworkName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/monetization/ads/mediation/base/prefetch/model/MediatedPrefetchAdapterData;->getNetworkWinner()Lcom/monetization/ads/mediation/base/prefetch/model/MediatedPrefetchNetworkWinner;

    move-result-object v1

    invoke-virtual {v1}, Lcom/monetization/ads/mediation/base/prefetch/model/MediatedPrefetchNetworkWinner;->getNetworkAdUnit()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v0, v1}, Lcom/yandex/mobile/ads/impl/lk1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Lcom/yandex/mobile/ads/impl/uk1;

    invoke-virtual {p1}, Lcom/monetization/ads/mediation/base/prefetch/model/MediatedPrefetchAdapterData;->getRevenue()Lcom/monetization/ads/mediation/base/prefetch/model/MediatedPrefetchRevenue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/monetization/ads/mediation/base/prefetch/model/MediatedPrefetchRevenue;->getValue()D

    move-result-wide v0

    invoke-direct {v5, v0, v1}, Lcom/yandex/mobile/ads/impl/uk1;-><init>(D)V

    new-instance v6, Lcom/yandex/mobile/ads/impl/sk1;

    sget-object v0, Lcom/yandex/mobile/ads/impl/tk1;->c:Lcom/yandex/mobile/ads/impl/tk1;

    const/4 v1, 0x0

    invoke-direct {v6, v0, v1, v1}, Lcom/yandex/mobile/ads/impl/sk1;-><init>(Lcom/yandex/mobile/ads/impl/tk1;Ljava/lang/String;Ljava/lang/Integer;)V

    new-instance v0, Lcom/yandex/mobile/ads/impl/hk1;

    invoke-virtual {p1}, Lcom/monetization/ads/mediation/base/prefetch/model/MediatedPrefetchAdapterData;->getNetworkAdInfo()Ljava/lang/String;

    move-result-object v7

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/yandex/mobile/ads/impl/hk1;-><init>(Ljava/lang/String;Lcom/yandex/mobile/ads/impl/lk1;Lcom/yandex/mobile/ads/impl/uk1;Lcom/yandex/mobile/ads/impl/sk1;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/jk1$a;->c:Lcr0;

    invoke-interface {p1}, Lcr0;->isActive()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/jk1$a;->c:Lcr0;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lwh1;->resumeWith(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.class final Lcom/yandex/mobile/ads/impl/ok1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# annotations
.annotation runtime Lnt1;
    c = "com.monetization.ads.base.mediation.prefetch.PrefetchedMediationNetworksDataLoader"
    f = "PrefetchedMediationNetworksDataLoader.kt"
    l = {
        0x37,
        0x3b
    }
    m = "loadNetworksMediationDataInternal"
.end annotation


# instance fields
.field synthetic b:Ljava/lang/Object;

.field final synthetic c:Lcom/yandex/mobile/ads/impl/rk1;

.field d:I


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/rk1;Lwh1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/rk1;",
            "Lwh1<",
            "-",
            "Lcom/yandex/mobile/ads/impl/ok1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ok1;->c:Lcom/yandex/mobile/ads/impl/rk1;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lwh1;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ok1;->b:Ljava/lang/Object;

    iget p1, p0, Lcom/yandex/mobile/ads/impl/ok1;->d:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/yandex/mobile/ads/impl/ok1;->d:I

    iget-object v4, p0, Lcom/yandex/mobile/ads/impl/ok1;->c:Lcom/yandex/mobile/ads/impl/rk1;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    move-object v6, p0

    invoke-static/range {v0 .. v6}, Lcom/yandex/mobile/ads/impl/rk1;->a(JLandroid/content/Context;Lcom/yandex/mobile/ads/impl/gz1;Lcom/yandex/mobile/ads/impl/rk1;Ljava/util/List;Lwh1;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

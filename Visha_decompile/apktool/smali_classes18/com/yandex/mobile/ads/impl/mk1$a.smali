.class final Lcom/yandex/mobile/ads/impl/mk1$a;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Ls74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/mobile/ads/impl/mk1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Ls74;"
    }
.end annotation

.annotation runtime Lnt1;
    c = "com.monetization.ads.base.mediation.prefetch.PrefetchedMediationNetworksDataLoader$loadNetworkMediationDataAsync$1$1"
    f = "PrefetchedMediationNetworksDataLoader.kt"
    l = {
        0x4f
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field b:I

.field final synthetic c:Lcom/yandex/mobile/ads/impl/rk1;

.field final synthetic d:Landroid/content/Context;

.field final synthetic e:Lcom/yandex/mobile/ads/impl/gz1;

.field final synthetic f:Lcom/yandex/mobile/ads/impl/lz0;

.field final synthetic g:Lcom/monetization/ads/mediation/base/prefetch/MediatedAdapterPrefetcher;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/rk1;Landroid/content/Context;Lcom/yandex/mobile/ads/impl/gz1;Lcom/yandex/mobile/ads/impl/lz0;Lcom/monetization/ads/mediation/base/prefetch/MediatedAdapterPrefetcher;Lwh1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/rk1;",
            "Landroid/content/Context;",
            "Lcom/yandex/mobile/ads/impl/gz1;",
            "Lcom/yandex/mobile/ads/impl/lz0;",
            "Lcom/monetization/ads/mediation/base/prefetch/MediatedAdapterPrefetcher;",
            "Lwh1<",
            "-",
            "Lcom/yandex/mobile/ads/impl/mk1$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/mk1$a;->c:Lcom/yandex/mobile/ads/impl/rk1;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/mk1$a;->d:Landroid/content/Context;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/mk1$a;->e:Lcom/yandex/mobile/ads/impl/gz1;

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/mk1$a;->f:Lcom/yandex/mobile/ads/impl/lz0;

    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/mk1$a;->g:Lcom/monetization/ads/mediation/base/prefetch/MediatedAdapterPrefetcher;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILwh1;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lwh1;)Lwh1;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lwh1<",
            "*>;)",
            "Lwh1<",
            "Lzfb;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/yandex/mobile/ads/impl/mk1$a;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/mk1$a;->c:Lcom/yandex/mobile/ads/impl/rk1;

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/mk1$a;->d:Landroid/content/Context;

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/mk1$a;->e:Lcom/yandex/mobile/ads/impl/gz1;

    iget-object v4, p0, Lcom/yandex/mobile/ads/impl/mk1$a;->f:Lcom/yandex/mobile/ads/impl/lz0;

    iget-object v5, p0, Lcom/yandex/mobile/ads/impl/mk1$a;->g:Lcom/monetization/ads/mediation/base/prefetch/MediatedAdapterPrefetcher;

    move-object v0, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/yandex/mobile/ads/impl/mk1$a;-><init>(Lcom/yandex/mobile/ads/impl/rk1;Landroid/content/Context;Lcom/yandex/mobile/ads/impl/gz1;Lcom/yandex/mobile/ads/impl/lz0;Lcom/monetization/ads/mediation/base/prefetch/MediatedAdapterPrefetcher;Lwh1;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lnk1;

    check-cast p2, Lwh1;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/mobile/ads/impl/mk1$a;->create(Ljava/lang/Object;Lwh1;)Lwh1;

    move-result-object p0

    check-cast p0, Lcom/yandex/mobile/ads/impl/mk1$a;

    sget-object p1, Lzfb;->a:Lzfb;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/mk1$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/yandex/mobile/ads/impl/mk1$a;->b:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/mk1$a;->c:Lcom/yandex/mobile/ads/impl/rk1;

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/rk1;->c(Lcom/yandex/mobile/ads/impl/rk1;)Lcom/yandex/mobile/ads/impl/jk1;

    move-result-object v3

    iget-object v4, p0, Lcom/yandex/mobile/ads/impl/mk1$a;->d:Landroid/content/Context;

    iget-object v5, p0, Lcom/yandex/mobile/ads/impl/mk1$a;->e:Lcom/yandex/mobile/ads/impl/gz1;

    iget-object v6, p0, Lcom/yandex/mobile/ads/impl/mk1$a;->f:Lcom/yandex/mobile/ads/impl/lz0;

    iget-object v7, p0, Lcom/yandex/mobile/ads/impl/mk1$a;->g:Lcom/monetization/ads/mediation/base/prefetch/MediatedAdapterPrefetcher;

    iput v2, p0, Lcom/yandex/mobile/ads/impl/mk1$a;->b:I

    move-object v8, p0

    invoke-virtual/range {v3 .. v8}, Lcom/yandex/mobile/ads/impl/jk1;->a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/gz1;Lcom/yandex/mobile/ads/impl/lz0;Lcom/monetization/ads/mediation/base/prefetch/MediatedAdapterPrefetcher;Lwh1;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    return-object p1
.end method

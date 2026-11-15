.class final Lcom/yandex/mobile/ads/impl/nk1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Ls74;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Ls74;"
    }
.end annotation

.annotation runtime Lnt1;
    c = "com.monetization.ads.base.mediation.prefetch.PrefetchedMediationNetworksDataLoader$loadNetworksMediationData$2"
    f = "PrefetchedMediationNetworksDataLoader.kt"
    l = {
        0x2c
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field b:I

.field final synthetic c:Lcom/yandex/mobile/ads/impl/rk1;

.field final synthetic d:Landroid/content/Context;

.field final synthetic e:Lcom/yandex/mobile/ads/impl/gz1;

.field final synthetic f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yandex/mobile/ads/impl/g01;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic g:J


# direct methods
.method public constructor <init>(JLandroid/content/Context;Lcom/yandex/mobile/ads/impl/gz1;Lcom/yandex/mobile/ads/impl/rk1;Ljava/util/List;Lwh1;)V
    .locals 0

    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/nk1;->c:Lcom/yandex/mobile/ads/impl/rk1;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/nk1;->d:Landroid/content/Context;

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/nk1;->e:Lcom/yandex/mobile/ads/impl/gz1;

    iput-object p6, p0, Lcom/yandex/mobile/ads/impl/nk1;->f:Ljava/util/List;

    iput-wide p1, p0, Lcom/yandex/mobile/ads/impl/nk1;->g:J

    const/4 p1, 0x2

    invoke-direct {p0, p1, p7}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILwh1;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lwh1;)Lwh1;
    .locals 8
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

    new-instance p1, Lcom/yandex/mobile/ads/impl/nk1;

    iget-object v5, p0, Lcom/yandex/mobile/ads/impl/nk1;->c:Lcom/yandex/mobile/ads/impl/rk1;

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/nk1;->d:Landroid/content/Context;

    iget-object v4, p0, Lcom/yandex/mobile/ads/impl/nk1;->e:Lcom/yandex/mobile/ads/impl/gz1;

    iget-object v6, p0, Lcom/yandex/mobile/ads/impl/nk1;->f:Ljava/util/List;

    iget-wide v1, p0, Lcom/yandex/mobile/ads/impl/nk1;->g:J

    move-object v0, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/yandex/mobile/ads/impl/nk1;-><init>(JLandroid/content/Context;Lcom/yandex/mobile/ads/impl/gz1;Lcom/yandex/mobile/ads/impl/rk1;Ljava/util/List;Lwh1;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lnk1;

    check-cast p2, Lwh1;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/mobile/ads/impl/nk1;->create(Ljava/lang/Object;Lwh1;)Lwh1;

    move-result-object p0

    check-cast p0, Lcom/yandex/mobile/ads/impl/nk1;

    sget-object p1, Lzfb;->a:Lzfb;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/nk1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/yandex/mobile/ads/impl/nk1;->b:I

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

    iget-object v5, p0, Lcom/yandex/mobile/ads/impl/nk1;->c:Lcom/yandex/mobile/ads/impl/rk1;

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/nk1;->d:Landroid/content/Context;

    iget-object v4, p0, Lcom/yandex/mobile/ads/impl/nk1;->e:Lcom/yandex/mobile/ads/impl/gz1;

    iget-object v6, p0, Lcom/yandex/mobile/ads/impl/nk1;->f:Ljava/util/List;

    iget-wide v7, p0, Lcom/yandex/mobile/ads/impl/nk1;->g:J

    iput v2, p0, Lcom/yandex/mobile/ads/impl/nk1;->b:I

    move-wide v1, v7

    move-object v7, p0

    invoke-static/range {v1 .. v7}, Lcom/yandex/mobile/ads/impl/rk1;->a(JLandroid/content/Context;Lcom/yandex/mobile/ads/impl/gz1;Lcom/yandex/mobile/ads/impl/rk1;Ljava/util/List;Lwh1;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    return-object p1
.end method

.class final Lcom/yandex/mobile/ads/impl/mk1;
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
    c = "com.monetization.ads.base.mediation.prefetch.PrefetchedMediationNetworksDataLoader$loadNetworkMediationDataAsync$1"
    f = "PrefetchedMediationNetworksDataLoader.kt"
    l = {
        0x4e
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field b:Lcom/yandex/mobile/ads/impl/lz0;

.field c:Lcom/monetization/ads/mediation/base/prefetch/MediatedAdapterPrefetcher;

.field d:I

.field final synthetic e:Lcom/yandex/mobile/ads/impl/rk1;

.field final synthetic f:Lcom/yandex/mobile/ads/impl/g01;

.field final synthetic g:Landroid/content/Context;

.field final synthetic h:J

.field final synthetic i:Lcom/yandex/mobile/ads/impl/gz1;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/rk1;Lcom/yandex/mobile/ads/impl/g01;Landroid/content/Context;JLcom/yandex/mobile/ads/impl/gz1;Lwh1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/rk1;",
            "Lcom/yandex/mobile/ads/impl/g01;",
            "Landroid/content/Context;",
            "J",
            "Lcom/yandex/mobile/ads/impl/gz1;",
            "Lwh1<",
            "-",
            "Lcom/yandex/mobile/ads/impl/mk1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/mk1;->e:Lcom/yandex/mobile/ads/impl/rk1;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/mk1;->f:Lcom/yandex/mobile/ads/impl/g01;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/mk1;->g:Landroid/content/Context;

    iput-wide p4, p0, Lcom/yandex/mobile/ads/impl/mk1;->h:J

    iput-object p6, p0, Lcom/yandex/mobile/ads/impl/mk1;->i:Lcom/yandex/mobile/ads/impl/gz1;

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

    new-instance p1, Lcom/yandex/mobile/ads/impl/mk1;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/mk1;->e:Lcom/yandex/mobile/ads/impl/rk1;

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/mk1;->f:Lcom/yandex/mobile/ads/impl/g01;

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/mk1;->g:Landroid/content/Context;

    iget-wide v4, p0, Lcom/yandex/mobile/ads/impl/mk1;->h:J

    iget-object v6, p0, Lcom/yandex/mobile/ads/impl/mk1;->i:Lcom/yandex/mobile/ads/impl/gz1;

    move-object v0, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/yandex/mobile/ads/impl/mk1;-><init>(Lcom/yandex/mobile/ads/impl/rk1;Lcom/yandex/mobile/ads/impl/g01;Landroid/content/Context;JLcom/yandex/mobile/ads/impl/gz1;Lwh1;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lnk1;

    check-cast p2, Lwh1;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/mobile/ads/impl/mk1;->create(Ljava/lang/Object;Lwh1;)Lwh1;

    move-result-object p0

    check-cast p0, Lcom/yandex/mobile/ads/impl/mk1;

    sget-object p1, Lzfb;->a:Lzfb;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/mk1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/yandex/mobile/ads/impl/mk1;->d:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/mk1;->c:Lcom/monetization/ads/mediation/base/prefetch/MediatedAdapterPrefetcher;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/mk1;->b:Lcom/yandex/mobile/ads/impl/lz0;

    :try_start_0
    invoke-static {p1}, Lkotlin/c;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception p0

    goto/16 :goto_4

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/mk1;->e:Lcom/yandex/mobile/ads/impl/rk1;

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/rk1;->d(Lcom/yandex/mobile/ads/impl/rk1;)Lcom/yandex/mobile/ads/impl/kk1;

    move-result-object p1

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/mk1;->f:Lcom/yandex/mobile/ads/impl/g01;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "mediationPrefetchNetwork"

    invoke-static {v1, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/yandex/mobile/ads/impl/lz0;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/g01;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/g01;->e()Ljava/util/Map;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v4, p1

    invoke-direct/range {v4 .. v11}, Lcom/yandex/mobile/ads/impl/lz0;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/yandex/mobile/ads/impl/t4;Ljava/util/Map;)V

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/mk1;->e:Lcom/yandex/mobile/ads/impl/rk1;

    invoke-static {v1}, Lcom/yandex/mobile/ads/impl/rk1;->a(Lcom/yandex/mobile/ads/impl/rk1;)Lcom/yandex/mobile/ads/impl/cy0;

    move-result-object v1

    iget-object v4, p0, Lcom/yandex/mobile/ads/impl/mk1;->g:Landroid/content/Context;

    const-class v5, Lcom/monetization/ads/mediation/base/a;

    invoke-virtual {v1, v4, p1, v5}, Lcom/yandex/mobile/ads/impl/cy0;->a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/lz0;Ljava/lang/Class;)Lcom/monetization/ads/mediation/base/a;

    move-result-object v1

    instance-of v4, v1, Lcom/monetization/ads/mediation/base/prefetch/MediatedAdapterPrefetcher;

    if-eqz v4, :cond_2

    check-cast v1, Lcom/monetization/ads/mediation/base/prefetch/MediatedAdapterPrefetcher;

    goto :goto_0

    :cond_2
    move-object v1, v3

    :goto_0
    if-nez v1, :cond_3

    return-object v3

    :cond_3
    :try_start_1
    iget-wide v11, p0, Lcom/yandex/mobile/ads/impl/mk1;->h:J

    new-instance v13, Lcom/yandex/mobile/ads/impl/mk1$a;

    iget-object v5, p0, Lcom/yandex/mobile/ads/impl/mk1;->e:Lcom/yandex/mobile/ads/impl/rk1;

    iget-object v6, p0, Lcom/yandex/mobile/ads/impl/mk1;->g:Landroid/content/Context;

    iget-object v7, p0, Lcom/yandex/mobile/ads/impl/mk1;->i:Lcom/yandex/mobile/ads/impl/gz1;

    const/4 v10, 0x0

    move-object v4, v13

    move-object v8, p1

    move-object v9, v1

    invoke-direct/range {v4 .. v10}, Lcom/yandex/mobile/ads/impl/mk1$a;-><init>(Lcom/yandex/mobile/ads/impl/rk1;Landroid/content/Context;Lcom/yandex/mobile/ads/impl/gz1;Lcom/yandex/mobile/ads/impl/lz0;Lcom/monetization/ads/mediation/base/prefetch/MediatedAdapterPrefetcher;Lwh1;)V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/mk1;->b:Lcom/yandex/mobile/ads/impl/lz0;

    iput-object v1, p0, Lcom/yandex/mobile/ads/impl/mk1;->c:Lcom/monetization/ads/mediation/base/prefetch/MediatedAdapterPrefetcher;

    iput v2, p0, Lcom/yandex/mobile/ads/impl/mk1;->d:I

    invoke-static {v11, v12, v13, p0}, Lkotlinx/coroutines/TimeoutKt;->c(JLs74;Lwh1;)Ljava/lang/Object;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne v2, v0, :cond_4

    return-object v0

    :cond_4
    move-object v0, v1

    move-object v1, p1

    move-object p1, v2

    :goto_1
    :try_start_2
    check-cast p1, Lcom/yandex/mobile/ads/impl/hk1;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :catch_0
    move-object p1, v1

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_5

    :catch_1
    move-object v0, v1

    :goto_2
    :try_start_3
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/mk1;->e:Lcom/yandex/mobile/ads/impl/rk1;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/rk1;->b(Lcom/yandex/mobile/ads/impl/rk1;)Lcom/yandex/mobile/ads/impl/ik1;

    move-result-object p0

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/lz0;->e()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "adapter"

    invoke-static {v5, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v8, Lcom/yandex/mobile/ads/impl/sk1;

    sget-object p0, Lcom/yandex/mobile/ads/impl/tk1;->d:Lcom/yandex/mobile/ads/impl/tk1;

    invoke-direct {v8, p0, v3, v3}, Lcom/yandex/mobile/ads/impl/sk1;-><init>(Lcom/yandex/mobile/ads/impl/tk1;Ljava/lang/String;Ljava/lang/Integer;)V

    new-instance p1, Lcom/yandex/mobile/ads/impl/hk1;

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v6, 0x0

    move-object v4, p1

    invoke-direct/range {v4 .. v9}, Lcom/yandex/mobile/ads/impl/hk1;-><init>(Ljava/lang/String;Lcom/yandex/mobile/ads/impl/lk1;Lcom/yandex/mobile/ads/impl/uk1;Lcom/yandex/mobile/ads/impl/sk1;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_3
    invoke-interface {v0}, Lcom/monetization/ads/mediation/base/prefetch/MediatedAdapterPrefetcher;->onInvalidate()V

    return-object p1

    :goto_4
    move-object v1, v0

    :goto_5
    invoke-interface {v1}, Lcom/monetization/ads/mediation/base/prefetch/MediatedAdapterPrefetcher;->onInvalidate()V

    throw p0
.end method

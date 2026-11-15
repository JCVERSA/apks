.class final Lcom/yandex/mobile/ads/impl/pk1;
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
    c = "com.monetization.ads.base.mediation.prefetch.PrefetchedMediationNetworksDataLoader$loadNetworksMediationDataInternal$asyncAdaptersResults$1"
    f = "PrefetchedMediationNetworksDataLoader.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field private synthetic b:Ljava/lang/Object;

.field final synthetic c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yandex/mobile/ads/impl/g01;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic d:Lcom/yandex/mobile/ads/impl/rk1;

.field final synthetic e:Landroid/content/Context;

.field final synthetic f:Lcom/yandex/mobile/ads/impl/gz1;

.field final synthetic g:J


# direct methods
.method public constructor <init>(JLandroid/content/Context;Lcom/yandex/mobile/ads/impl/gz1;Lcom/yandex/mobile/ads/impl/rk1;Ljava/util/List;Lwh1;)V
    .locals 0

    iput-object p6, p0, Lcom/yandex/mobile/ads/impl/pk1;->c:Ljava/util/List;

    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/pk1;->d:Lcom/yandex/mobile/ads/impl/rk1;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/pk1;->e:Landroid/content/Context;

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/pk1;->f:Lcom/yandex/mobile/ads/impl/gz1;

    iput-wide p1, p0, Lcom/yandex/mobile/ads/impl/pk1;->g:J

    const/4 p1, 0x2

    invoke-direct {p0, p1, p7}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILwh1;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lwh1;)Lwh1;
    .locals 9
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

    new-instance v8, Lcom/yandex/mobile/ads/impl/pk1;

    iget-object v6, p0, Lcom/yandex/mobile/ads/impl/pk1;->c:Ljava/util/List;

    iget-object v5, p0, Lcom/yandex/mobile/ads/impl/pk1;->d:Lcom/yandex/mobile/ads/impl/rk1;

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/pk1;->e:Landroid/content/Context;

    iget-object v4, p0, Lcom/yandex/mobile/ads/impl/pk1;->f:Lcom/yandex/mobile/ads/impl/gz1;

    iget-wide v1, p0, Lcom/yandex/mobile/ads/impl/pk1;->g:J

    move-object v0, v8

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/yandex/mobile/ads/impl/pk1;-><init>(JLandroid/content/Context;Lcom/yandex/mobile/ads/impl/gz1;Lcom/yandex/mobile/ads/impl/rk1;Ljava/util/List;Lwh1;)V

    iput-object p1, v8, Lcom/yandex/mobile/ads/impl/pk1;->b:Ljava/lang/Object;

    return-object v8
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lnk1;

    check-cast p2, Lwh1;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/mobile/ads/impl/pk1;->create(Ljava/lang/Object;Lwh1;)Lwh1;

    move-result-object p0

    check-cast p0, Lcom/yandex/mobile/ads/impl/pk1;

    sget-object p1, Lzfb;->a:Lzfb;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/pk1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/yandex/mobile/ads/impl/pk1;->b:Ljava/lang/Object;

    check-cast v1, Lnk1;

    iget-object v2, v0, Lcom/yandex/mobile/ads/impl/pk1;->c:Ljava/util/List;

    iget-object v11, v0, Lcom/yandex/mobile/ads/impl/pk1;->d:Lcom/yandex/mobile/ads/impl/rk1;

    iget-object v12, v0, Lcom/yandex/mobile/ads/impl/pk1;->e:Landroid/content/Context;

    iget-object v13, v0, Lcom/yandex/mobile/ads/impl/pk1;->f:Lcom/yandex/mobile/ads/impl/gz1;

    iget-wide v14, v0, Lcom/yandex/mobile/ads/impl/pk1;->g:J

    new-instance v0, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v2, v3}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/yandex/mobile/ads/impl/g01;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v17, Lcom/yandex/mobile/ads/impl/mk1;

    const/4 v10, 0x0

    move-object/from16 v3, v17

    move-object v4, v11

    move-object v6, v12

    move-wide v7, v14

    move-object v9, v13

    invoke-direct/range {v3 .. v10}, Lcom/yandex/mobile/ads/impl/mk1;-><init>(Lcom/yandex/mobile/ads/impl/rk1;Lcom/yandex/mobile/ads/impl/g01;Landroid/content/Context;JLcom/yandex/mobile/ads/impl/gz1;Lwh1;)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, v1

    move-object/from16 v5, v17

    invoke-static/range {v2 .. v7}, Lcl0;->b(Lnk1;Lkotlin/coroutines/d;Lkotlinx/coroutines/CoroutineStart;Ls74;ILjava/lang/Object;)Ld72;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

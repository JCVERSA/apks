.class final Lcom/yandex/mobile/ads/impl/oc1;
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
    c = "com.monetization.ads.nativeads.creator.videowrapper.NativeWrapperVideoLoader$loadWrapperWithVideoAdsInfo$2"
    f = "NativeWrapperVideoLoader.kt"
    l = {
        0x30
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field b:I

.field private synthetic c:Ljava/lang/Object;

.field final synthetic d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yandex/mobile/ads/impl/zb2<",
            "Lcom/yandex/mobile/ads/impl/kb1;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic e:Lcom/yandex/mobile/ads/impl/pc1;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/pc1;Ljava/util/List;Lwh1;)V
    .locals 0

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/oc1;->d:Ljava/util/List;

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/oc1;->e:Lcom/yandex/mobile/ads/impl/pc1;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILwh1;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lwh1;)Lwh1;
    .locals 2
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

    new-instance v0, Lcom/yandex/mobile/ads/impl/oc1;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/oc1;->d:Ljava/util/List;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/oc1;->e:Lcom/yandex/mobile/ads/impl/pc1;

    invoke-direct {v0, p0, v1, p2}, Lcom/yandex/mobile/ads/impl/oc1;-><init>(Lcom/yandex/mobile/ads/impl/pc1;Ljava/util/List;Lwh1;)V

    iput-object p1, v0, Lcom/yandex/mobile/ads/impl/oc1;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lnk1;

    check-cast p2, Lwh1;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/mobile/ads/impl/oc1;->create(Ljava/lang/Object;Lwh1;)Lwh1;

    move-result-object p0

    check-cast p0, Lcom/yandex/mobile/ads/impl/oc1;

    sget-object p1, Lzfb;->a:Lzfb;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/oc1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/yandex/mobile/ads/impl/oc1;->b:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/oc1;->c:Ljava/lang/Object;

    check-cast p1, Lnk1;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/oc1;->d:Ljava/util/List;

    iget-object v9, p0, Lcom/yandex/mobile/ads/impl/oc1;->e:Lcom/yandex/mobile/ads/impl/pc1;

    new-instance v10, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v10, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yandex/mobile/ads/impl/zb2;

    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/zb2;->g()Lcom/yandex/mobile/ads/impl/mb2;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yandex/mobile/ads/impl/mb2;->o()Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v6, Lcom/yandex/mobile/ads/impl/oc1$a;

    const/4 v4, 0x0

    invoke-direct {v6, v9, v3, v4}, Lcom/yandex/mobile/ads/impl/oc1$a;-><init>(Lcom/yandex/mobile/ads/impl/pc1;Lcom/yandex/mobile/ads/impl/zb2;Lwh1;)V

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v5, 0x0

    move-object v3, p1

    invoke-static/range {v3 .. v8}, Lcl0;->b(Lnk1;Lkotlin/coroutines/d;Lkotlinx/coroutines/CoroutineStart;Ls74;ILjava/lang/Object;)Ld72;

    move-result-object v3

    goto :goto_1

    :cond_2
    invoke-static {v3}, Lx71;->e(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lkb1;->a(Ljava/lang/Object;)Lib1;

    move-result-object v3

    :goto_1
    invoke-interface {v10, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    iput v2, p0, Lcom/yandex/mobile/ads/impl/oc1;->b:I

    invoke-static {v10, p0}, Lx30;->a(Ljava/util/Collection;Lwh1;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    :cond_4
    :goto_2
    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lz71;->x(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

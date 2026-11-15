.class final Lcom/yandex/mobile/ads/impl/x41;
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
    c = "com.monetization.ads.nativeads.creator.videowrapper.NativeAdBlockVideoWrapperLoader$updateNativeAdsWithWrappers$2"
    f = "NativeAdBlockVideoWrapperLoader.kt"
    l = {
        0x2f
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field b:Lcom/yandex/mobile/ads/impl/w41;

.field c:Ljava/util/Collection;

.field d:Ljava/util/Iterator;

.field e:Lcom/yandex/mobile/ads/impl/g41;

.field f:Ljava/util/Collection;

.field g:I

.field private synthetic h:Ljava/lang/Object;

.field final synthetic i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yandex/mobile/ads/impl/g41;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic j:Lcom/yandex/mobile/ads/impl/w41;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/yandex/mobile/ads/impl/w41;Lwh1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yandex/mobile/ads/impl/g41;",
            ">;",
            "Lcom/yandex/mobile/ads/impl/w41;",
            "Lwh1<",
            "-",
            "Lcom/yandex/mobile/ads/impl/x41;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/x41;->i:Ljava/util/List;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/x41;->j:Lcom/yandex/mobile/ads/impl/w41;

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

    new-instance v0, Lcom/yandex/mobile/ads/impl/x41;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/x41;->i:Ljava/util/List;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/x41;->j:Lcom/yandex/mobile/ads/impl/w41;

    invoke-direct {v0, v1, p0, p2}, Lcom/yandex/mobile/ads/impl/x41;-><init>(Ljava/util/List;Lcom/yandex/mobile/ads/impl/w41;Lwh1;)V

    iput-object p1, v0, Lcom/yandex/mobile/ads/impl/x41;->h:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lnk1;

    check-cast p2, Lwh1;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/mobile/ads/impl/x41;->create(Ljava/lang/Object;Lwh1;)Lwh1;

    move-result-object p0

    check-cast p0, Lcom/yandex/mobile/ads/impl/x41;

    sget-object p1, Lzfb;->a:Lzfb;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/x41;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/yandex/mobile/ads/impl/x41;->g:I

    const/16 v3, 0xa

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_1

    if-ne v2, v4, :cond_0

    iget-object v2, v0, Lcom/yandex/mobile/ads/impl/x41;->f:Ljava/util/Collection;

    iget-object v6, v0, Lcom/yandex/mobile/ads/impl/x41;->e:Lcom/yandex/mobile/ads/impl/g41;

    iget-object v7, v0, Lcom/yandex/mobile/ads/impl/x41;->d:Ljava/util/Iterator;

    iget-object v8, v0, Lcom/yandex/mobile/ads/impl/x41;->c:Ljava/util/Collection;

    iget-object v9, v0, Lcom/yandex/mobile/ads/impl/x41;->b:Lcom/yandex/mobile/ads/impl/w41;

    iget-object v10, v0, Lcom/yandex/mobile/ads/impl/x41;->h:Ljava/lang/Object;

    check-cast v10, Lnk1;

    invoke-static/range {p1 .. p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    move-object/from16 v3, p1

    goto/16 :goto_6

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/yandex/mobile/ads/impl/x41;->h:Ljava/lang/Object;

    check-cast v2, Lnk1;

    iget-object v6, v0, Lcom/yandex/mobile/ads/impl/x41;->i:Ljava/util/List;

    iget-object v7, v0, Lcom/yandex/mobile/ads/impl/x41;->j:Lcom/yandex/mobile/ads/impl/w41;

    new-instance v8, Ljava/util/ArrayList;

    invoke-static {v6, v3}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v9, v7

    move-object v7, v6

    move-object v6, v2

    move-object v2, v8

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/yandex/mobile/ads/impl/g41;

    invoke-virtual {v8}, Lcom/yandex/mobile/ads/impl/g41;->b()Ljava/util/List;

    move-result-object v10

    new-instance v15, Ljava/util/ArrayList;

    invoke-static {v10, v3}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v11

    invoke-direct {v15, v11}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/yandex/mobile/ads/impl/ig;

    invoke-static {v9}, Lcom/yandex/mobile/ads/impl/w41;->a(Lcom/yandex/mobile/ads/impl/w41;)Lcom/yandex/mobile/ads/impl/lc1;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v11, "asset"

    invoke-static {v10, v11}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v10}, Lcom/yandex/mobile/ads/impl/ig;->d()Ljava/lang/Object;

    move-result-object v11

    instance-of v11, v11, Lcom/yandex/mobile/ads/impl/ex0;

    if-eqz v11, :cond_2

    move-object v11, v10

    goto :goto_2

    :cond_2
    move-object v11, v5

    :goto_2
    if-eqz v11, :cond_3

    invoke-virtual {v11}, Lcom/yandex/mobile/ads/impl/ig;->d()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/yandex/mobile/ads/impl/ex0;

    if-eqz v11, :cond_3

    invoke-virtual {v11}, Lcom/yandex/mobile/ads/impl/ex0;->c()Lcom/yandex/mobile/ads/impl/lb2;

    move-result-object v11

    if-eqz v11, :cond_3

    invoke-virtual {v11}, Lcom/yandex/mobile/ads/impl/lb2;->c()Ljava/util/List;

    move-result-object v11

    if-eqz v11, :cond_3

    invoke-interface {v11}, Ljava/util/Collection;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_4

    :cond_3
    move-object v3, v15

    goto :goto_4

    :cond_4
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/yandex/mobile/ads/impl/zb2;

    invoke-virtual {v12}, Lcom/yandex/mobile/ads/impl/zb2;->g()Lcom/yandex/mobile/ads/impl/mb2;

    move-result-object v12

    invoke-virtual {v12}, Lcom/yandex/mobile/ads/impl/mb2;->o()Z

    move-result v12

    if-eqz v12, :cond_5

    new-instance v13, Lcom/yandex/mobile/ads/impl/x41$a;

    invoke-direct {v13, v9, v10, v5}, Lcom/yandex/mobile/ads/impl/x41$a;-><init>(Lcom/yandex/mobile/ads/impl/w41;Lcom/yandex/mobile/ads/impl/ig;Lwh1;)V

    const/4 v14, 0x3

    const/16 v17, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v10, v6

    move-object v3, v15

    move-object/from16 v15, v17

    invoke-static/range {v10 .. v15}, Lcl0;->b(Lnk1;Lkotlin/coroutines/d;Lkotlinx/coroutines/CoroutineStart;Ls74;ILjava/lang/Object;)Ld72;

    move-result-object v10

    goto :goto_5

    :cond_5
    const/16 v3, 0xa

    goto :goto_3

    :goto_4
    invoke-static {v10}, Lkb1;->a(Ljava/lang/Object;)Lib1;

    move-result-object v10

    :goto_5
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v15, v3

    const/16 v3, 0xa

    goto :goto_1

    :cond_6
    move-object v3, v15

    iput-object v6, v0, Lcom/yandex/mobile/ads/impl/x41;->h:Ljava/lang/Object;

    iput-object v9, v0, Lcom/yandex/mobile/ads/impl/x41;->b:Lcom/yandex/mobile/ads/impl/w41;

    iput-object v2, v0, Lcom/yandex/mobile/ads/impl/x41;->c:Ljava/util/Collection;

    iput-object v7, v0, Lcom/yandex/mobile/ads/impl/x41;->d:Ljava/util/Iterator;

    iput-object v8, v0, Lcom/yandex/mobile/ads/impl/x41;->e:Lcom/yandex/mobile/ads/impl/g41;

    iput-object v2, v0, Lcom/yandex/mobile/ads/impl/x41;->f:Ljava/util/Collection;

    iput v4, v0, Lcom/yandex/mobile/ads/impl/x41;->g:I

    invoke-static {v3, v0}, Lx30;->a(Ljava/util/Collection;Lwh1;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v1, :cond_7

    return-object v1

    :cond_7
    move-object v10, v6

    move-object v6, v8

    move-object v8, v2

    :goto_6
    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Li81;->l0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v11

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v12

    if-eq v3, v12, :cond_8

    return-object v5

    :cond_8
    invoke-static {v6, v11}, Lcom/yandex/mobile/ads/impl/g41;->a(Lcom/yandex/mobile/ads/impl/g41;Ljava/util/List;)Lcom/yandex/mobile/ads/impl/g41;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object v2, v8

    move-object v6, v10

    const/16 v3, 0xa

    goto/16 :goto_0

    :cond_9
    check-cast v2, Ljava/util/List;

    return-object v2
.end method

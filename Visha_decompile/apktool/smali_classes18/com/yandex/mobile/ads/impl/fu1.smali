.class final Lcom/yandex/mobile/ads/impl/fu1;
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
    c = "com.monetization.ads.base.bidder.SdkBidderTokenLoader$loadBidderToken$1"
    f = "SdkBidderTokenLoader.kt"
    l = {
        0x6a,
        0x4b,
        0x50
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field b:Lcom/yandex/mobile/ads/impl/f5;

.field c:Lcom/yandex/mobile/ads/impl/gu1;

.field d:Lcom/yandex/mobile/ads/impl/dl;

.field e:I

.field private synthetic f:Ljava/lang/Object;

.field final synthetic g:Lcom/yandex/mobile/ads/impl/gu1;

.field final synthetic h:Lcom/yandex/mobile/ads/impl/dl;

.field final synthetic i:Lcom/yandex/mobile/ads/impl/at;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/gu1;Lcom/yandex/mobile/ads/impl/dl;Lcom/yandex/mobile/ads/impl/at;Lwh1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/gu1;",
            "Lcom/yandex/mobile/ads/impl/dl;",
            "Lcom/yandex/mobile/ads/impl/at;",
            "Lwh1<",
            "-",
            "Lcom/yandex/mobile/ads/impl/fu1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/fu1;->g:Lcom/yandex/mobile/ads/impl/gu1;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/fu1;->h:Lcom/yandex/mobile/ads/impl/dl;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/fu1;->i:Lcom/yandex/mobile/ads/impl/at;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILwh1;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lwh1;)Lwh1;
    .locals 3
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

    new-instance v0, Lcom/yandex/mobile/ads/impl/fu1;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/fu1;->g:Lcom/yandex/mobile/ads/impl/gu1;

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/fu1;->h:Lcom/yandex/mobile/ads/impl/dl;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/fu1;->i:Lcom/yandex/mobile/ads/impl/at;

    invoke-direct {v0, v1, v2, p0, p2}, Lcom/yandex/mobile/ads/impl/fu1;-><init>(Lcom/yandex/mobile/ads/impl/gu1;Lcom/yandex/mobile/ads/impl/dl;Lcom/yandex/mobile/ads/impl/at;Lwh1;)V

    iput-object p1, v0, Lcom/yandex/mobile/ads/impl/fu1;->f:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lnk1;

    check-cast p2, Lwh1;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/mobile/ads/impl/fu1;->create(Ljava/lang/Object;Lwh1;)Lwh1;

    move-result-object p0

    check-cast p0, Lcom/yandex/mobile/ads/impl/fu1;

    sget-object p1, Lzfb;->a:Lzfb;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/fu1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/yandex/mobile/ads/impl/fu1;->e:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v5, :cond_2

    if-eq v2, v4, :cond_1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    invoke-static/range {p1 .. p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_2
    iget-object v2, v0, Lcom/yandex/mobile/ads/impl/fu1;->d:Lcom/yandex/mobile/ads/impl/dl;

    iget-object v5, v0, Lcom/yandex/mobile/ads/impl/fu1;->c:Lcom/yandex/mobile/ads/impl/gu1;

    iget-object v7, v0, Lcom/yandex/mobile/ads/impl/fu1;->b:Lcom/yandex/mobile/ads/impl/f5;

    iget-object v8, v0, Lcom/yandex/mobile/ads/impl/fu1;->f:Ljava/lang/Object;

    check-cast v8, Lcom/yandex/mobile/ads/impl/g5;

    invoke-static/range {p1 .. p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    move-object v11, v2

    move-object v14, v7

    move-object v13, v8

    move-object/from16 v2, p1

    goto/16 :goto_1

    :cond_3
    invoke-static/range {p1 .. p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/yandex/mobile/ads/impl/fu1;->f:Ljava/lang/Object;

    check-cast v2, Lnk1;

    iget-object v7, v0, Lcom/yandex/mobile/ads/impl/fu1;->g:Lcom/yandex/mobile/ads/impl/gu1;

    invoke-static {v7}, Lcom/yandex/mobile/ads/impl/gu1;->h(Lcom/yandex/mobile/ads/impl/gu1;)Lcom/yandex/mobile/ads/impl/j32;

    move-result-object v7

    sget-object v8, Lcom/yandex/mobile/ads/impl/xq0;->b:Lcom/yandex/mobile/ads/impl/xq0;

    iget-object v9, v0, Lcom/yandex/mobile/ads/impl/fu1;->g:Lcom/yandex/mobile/ads/impl/gu1;

    invoke-virtual {v7, v8, v9}, Lcom/yandex/mobile/ads/impl/j32;->b(Lcom/yandex/mobile/ads/impl/xq0;Ljava/lang/Object;)V

    iget-object v7, v0, Lcom/yandex/mobile/ads/impl/fu1;->g:Lcom/yandex/mobile/ads/impl/gu1;

    invoke-static {v7}, Lcom/yandex/mobile/ads/impl/gu1;->a(Lcom/yandex/mobile/ads/impl/gu1;)Lcom/yandex/mobile/ads/impl/g5;

    move-result-object v13

    sget-object v14, Lcom/yandex/mobile/ads/impl/f5;->z:Lcom/yandex/mobile/ads/impl/f5;

    iget-object v15, v0, Lcom/yandex/mobile/ads/impl/fu1;->g:Lcom/yandex/mobile/ads/impl/gu1;

    iget-object v12, v0, Lcom/yandex/mobile/ads/impl/fu1;->h:Lcom/yandex/mobile/ads/impl/dl;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v7, "adLoadingPhaseType"

    invoke-static {v14, v7}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v13, v14, v6}, Lcom/yandex/mobile/ads/impl/g5;->a(Lcom/yandex/mobile/ads/impl/f5;Lcom/yandex/mobile/ads/impl/ha2;)V

    new-instance v11, Lkotlinx/coroutines/selects/SelectImplementation;

    invoke-virtual/range {p0 .. p0}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;->getContext()Lkotlin/coroutines/d;

    move-result-object v7

    invoke-direct {v11, v7}, Lkotlinx/coroutines/selects/SelectImplementation;-><init>(Lkotlin/coroutines/d;)V

    new-instance v10, Lcom/yandex/mobile/ads/impl/fu1$c;

    invoke-direct {v10, v6}, Lcom/yandex/mobile/ads/impl/fu1$c;-><init>(Lwh1;)V

    const/16 v16, 0x3

    const/16 v17, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v7, v2

    move-object v3, v11

    move/from16 v11, v16

    move-object v4, v12

    move-object/from16 v12, v17

    invoke-static/range {v7 .. v12}, Lcl0;->d(Lnk1;Lkotlin/coroutines/d;Lkotlinx/coroutines/CoroutineStart;Ls74;ILjava/lang/Object;)Lkotlinx/coroutines/j;

    move-result-object v7

    invoke-interface {v7}, Lkotlinx/coroutines/j;->getOnJoin()Lsa9;

    move-result-object v7

    new-instance v8, Lcom/yandex/mobile/ads/impl/fu1$d;

    invoke-direct {v8, v6}, Lcom/yandex/mobile/ads/impl/fu1$d;-><init>(Lwh1;)V

    invoke-virtual {v3, v7, v8}, Lkotlinx/coroutines/selects/SelectImplementation;->q(Lsa9;Le74;)V

    new-instance v10, Lcom/yandex/mobile/ads/impl/fu1$e;

    invoke-direct {v10, v15, v6}, Lcom/yandex/mobile/ads/impl/fu1$e;-><init>(Lcom/yandex/mobile/ads/impl/gu1;Lwh1;)V

    const/4 v11, 0x3

    const/4 v12, 0x0

    const/4 v8, 0x0

    move-object v7, v2

    invoke-static/range {v7 .. v12}, Lcl0;->b(Lnk1;Lkotlin/coroutines/d;Lkotlinx/coroutines/CoroutineStart;Ls74;ILjava/lang/Object;)Ld72;

    move-result-object v2

    invoke-interface {v2}, Ld72;->n()Lua9;

    move-result-object v2

    new-instance v7, Lcom/yandex/mobile/ads/impl/fu1$f;

    invoke-direct {v7, v6}, Lcom/yandex/mobile/ads/impl/fu1$f;-><init>(Lwh1;)V

    invoke-virtual {v3, v2, v7}, Lkotlinx/coroutines/selects/SelectImplementation;->r(Lua9;Ls74;)V

    iput-object v13, v0, Lcom/yandex/mobile/ads/impl/fu1;->f:Ljava/lang/Object;

    iput-object v14, v0, Lcom/yandex/mobile/ads/impl/fu1;->b:Lcom/yandex/mobile/ads/impl/f5;

    iput-object v15, v0, Lcom/yandex/mobile/ads/impl/fu1;->c:Lcom/yandex/mobile/ads/impl/gu1;

    iput-object v4, v0, Lcom/yandex/mobile/ads/impl/fu1;->d:Lcom/yandex/mobile/ads/impl/dl;

    iput v5, v0, Lcom/yandex/mobile/ads/impl/fu1;->e:I

    invoke-virtual {v3, v0}, Lkotlinx/coroutines/selects/SelectImplementation;->l(Lwh1;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_4

    return-object v1

    :cond_4
    move-object v11, v4

    move-object v5, v15

    :goto_1
    check-cast v2, Lcom/yandex/mobile/ads/impl/hu1;

    invoke-static {v5}, Lcom/yandex/mobile/ads/impl/gu1;->d(Lcom/yandex/mobile/ads/impl/gu1;)Lcom/yandex/mobile/ads/impl/eu1;

    move-result-object v7

    invoke-static {v5}, Lcom/yandex/mobile/ads/impl/gu1;->c(Lcom/yandex/mobile/ads/impl/gu1;)Landroid/content/Context;

    move-result-object v8

    invoke-static {v5}, Lcom/yandex/mobile/ads/impl/gu1;->b(Lcom/yandex/mobile/ads/impl/gu1;)Lcom/yandex/mobile/ads/impl/jc;

    move-result-object v9

    invoke-static {v5}, Lcom/yandex/mobile/ads/impl/gu1;->e(Lcom/yandex/mobile/ads/impl/gu1;)Lcom/yandex/mobile/ads/impl/p50;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/p50;->c()Lcom/yandex/mobile/ads/impl/o50;

    move-result-object v10

    move-object v12, v2

    invoke-virtual/range {v7 .. v12}, Lcom/yandex/mobile/ads/impl/eu1;->a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/jc;Lcom/yandex/mobile/ads/impl/o50;Lcom/yandex/mobile/ads/impl/dl;Lcom/yandex/mobile/ads/impl/hu1;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/yandex/mobile/ads/impl/s52;

    invoke-direct {v4, v3, v2}, Lcom/yandex/mobile/ads/impl/s52;-><init>(Ljava/lang/String;Lcom/yandex/mobile/ads/impl/hu1;)V

    invoke-virtual {v13, v14}, Lcom/yandex/mobile/ads/impl/g5;->a(Lcom/yandex/mobile/ads/impl/f5;)V

    invoke-virtual {v4}, Lcom/yandex/mobile/ads/impl/s52;->a()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v2, v0, Lcom/yandex/mobile/ads/impl/fu1;->g:Lcom/yandex/mobile/ads/impl/gu1;

    invoke-static {v2}, Lcom/yandex/mobile/ads/impl/gu1;->f(Lcom/yandex/mobile/ads/impl/gu1;)Lcom/yandex/mobile/ads/impl/ef1;

    move-result-object v2

    iget-object v3, v0, Lcom/yandex/mobile/ads/impl/fu1;->h:Lcom/yandex/mobile/ads/impl/dl;

    invoke-virtual {v4}, Lcom/yandex/mobile/ads/impl/s52;->b()Lcom/yandex/mobile/ads/impl/hu1;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lcom/yandex/mobile/ads/impl/ef1;->a(Lcom/yandex/mobile/ads/impl/dl;Lcom/yandex/mobile/ads/impl/hu1;)V

    invoke-static {}, Lcom/yandex/mobile/ads/impl/qu;->b()Lrx5;

    move-result-object v2

    new-instance v3, Lcom/yandex/mobile/ads/impl/fu1$a;

    iget-object v5, v0, Lcom/yandex/mobile/ads/impl/fu1;->i:Lcom/yandex/mobile/ads/impl/at;

    invoke-direct {v3, v5, v4, v6}, Lcom/yandex/mobile/ads/impl/fu1$a;-><init>(Lcom/yandex/mobile/ads/impl/at;Lcom/yandex/mobile/ads/impl/s52;Lwh1;)V

    iput-object v6, v0, Lcom/yandex/mobile/ads/impl/fu1;->f:Ljava/lang/Object;

    iput-object v6, v0, Lcom/yandex/mobile/ads/impl/fu1;->b:Lcom/yandex/mobile/ads/impl/f5;

    iput-object v6, v0, Lcom/yandex/mobile/ads/impl/fu1;->c:Lcom/yandex/mobile/ads/impl/gu1;

    iput-object v6, v0, Lcom/yandex/mobile/ads/impl/fu1;->d:Lcom/yandex/mobile/ads/impl/dl;

    const/4 v4, 0x2

    iput v4, v0, Lcom/yandex/mobile/ads/impl/fu1;->e:I

    invoke-static {v2, v3, v0}, Lcl0;->g(Lkotlin/coroutines/d;Ls74;Lwh1;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_6

    return-object v1

    :cond_5
    iget-object v2, v0, Lcom/yandex/mobile/ads/impl/fu1;->g:Lcom/yandex/mobile/ads/impl/gu1;

    invoke-static {v2}, Lcom/yandex/mobile/ads/impl/gu1;->f(Lcom/yandex/mobile/ads/impl/gu1;)Lcom/yandex/mobile/ads/impl/ef1;

    move-result-object v2

    iget-object v3, v0, Lcom/yandex/mobile/ads/impl/fu1;->h:Lcom/yandex/mobile/ads/impl/dl;

    invoke-virtual {v2, v3}, Lcom/yandex/mobile/ads/impl/ef1;->a(Lcom/yandex/mobile/ads/impl/dl;)V

    invoke-static {}, Lcom/yandex/mobile/ads/impl/qu;->b()Lrx5;

    move-result-object v2

    new-instance v3, Lcom/yandex/mobile/ads/impl/fu1$b;

    iget-object v4, v0, Lcom/yandex/mobile/ads/impl/fu1;->i:Lcom/yandex/mobile/ads/impl/at;

    invoke-direct {v3, v4, v6}, Lcom/yandex/mobile/ads/impl/fu1$b;-><init>(Lcom/yandex/mobile/ads/impl/at;Lwh1;)V

    iput-object v6, v0, Lcom/yandex/mobile/ads/impl/fu1;->f:Ljava/lang/Object;

    iput-object v6, v0, Lcom/yandex/mobile/ads/impl/fu1;->b:Lcom/yandex/mobile/ads/impl/f5;

    iput-object v6, v0, Lcom/yandex/mobile/ads/impl/fu1;->c:Lcom/yandex/mobile/ads/impl/gu1;

    iput-object v6, v0, Lcom/yandex/mobile/ads/impl/fu1;->d:Lcom/yandex/mobile/ads/impl/dl;

    const/4 v4, 0x3

    iput v4, v0, Lcom/yandex/mobile/ads/impl/fu1;->e:I

    invoke-static {v2, v3, v0}, Lcl0;->g(Lkotlin/coroutines/d;Ls74;Lwh1;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_6

    return-object v1

    :cond_6
    :goto_2
    iget-object v1, v0, Lcom/yandex/mobile/ads/impl/fu1;->g:Lcom/yandex/mobile/ads/impl/gu1;

    invoke-static {v1}, Lcom/yandex/mobile/ads/impl/gu1;->h(Lcom/yandex/mobile/ads/impl/gu1;)Lcom/yandex/mobile/ads/impl/j32;

    move-result-object v1

    sget-object v2, Lcom/yandex/mobile/ads/impl/xq0;->b:Lcom/yandex/mobile/ads/impl/xq0;

    iget-object v0, v0, Lcom/yandex/mobile/ads/impl/fu1;->g:Lcom/yandex/mobile/ads/impl/gu1;

    invoke-virtual {v1, v2, v0}, Lcom/yandex/mobile/ads/impl/j32;->a(Lcom/yandex/mobile/ads/impl/xq0;Ljava/lang/Object;)V

    sget-object v0, Lzfb;->a:Lzfb;

    return-object v0
.end method

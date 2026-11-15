.class final Lcom/yandex/mobile/ads/impl/p91;
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
    c = "com.monetization.ads.nativeads.creator.NativeMediaLoader$loadMedia$2"
    f = "NativeMediaLoader.kt"
    l = {
        0x27,
        0x28,
        0x29,
        0x2b
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field b:Ld72;

.field c:I

.field private synthetic d:Ljava/lang/Object;

.field final synthetic e:Lcom/yandex/mobile/ads/impl/o3;

.field final synthetic f:Lcom/yandex/mobile/ads/impl/q91;

.field final synthetic g:Landroid/content/Context;

.field final synthetic h:Lcom/yandex/mobile/ads/impl/s41;

.field final synthetic i:Lcom/yandex/mobile/ads/impl/dw;

.field final synthetic j:Lcom/yandex/mobile/ads/impl/sj0;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/q91;Landroid/content/Context;Lcom/yandex/mobile/ads/impl/s41;Lcom/yandex/mobile/ads/impl/dw;Lcom/yandex/mobile/ads/impl/sj0;Lwh1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/o3;",
            "Lcom/yandex/mobile/ads/impl/q91;",
            "Landroid/content/Context;",
            "Lcom/yandex/mobile/ads/impl/s41;",
            "Lcom/yandex/mobile/ads/impl/dw;",
            "Lcom/yandex/mobile/ads/impl/sj0;",
            "Lwh1<",
            "-",
            "Lcom/yandex/mobile/ads/impl/p91;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/p91;->e:Lcom/yandex/mobile/ads/impl/o3;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/p91;->f:Lcom/yandex/mobile/ads/impl/q91;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/p91;->g:Landroid/content/Context;

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/p91;->h:Lcom/yandex/mobile/ads/impl/s41;

    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/p91;->i:Lcom/yandex/mobile/ads/impl/dw;

    iput-object p6, p0, Lcom/yandex/mobile/ads/impl/p91;->j:Lcom/yandex/mobile/ads/impl/sj0;

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

    new-instance v8, Lcom/yandex/mobile/ads/impl/p91;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/p91;->e:Lcom/yandex/mobile/ads/impl/o3;

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/p91;->f:Lcom/yandex/mobile/ads/impl/q91;

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/p91;->g:Landroid/content/Context;

    iget-object v4, p0, Lcom/yandex/mobile/ads/impl/p91;->h:Lcom/yandex/mobile/ads/impl/s41;

    iget-object v5, p0, Lcom/yandex/mobile/ads/impl/p91;->i:Lcom/yandex/mobile/ads/impl/dw;

    iget-object v6, p0, Lcom/yandex/mobile/ads/impl/p91;->j:Lcom/yandex/mobile/ads/impl/sj0;

    move-object v0, v8

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/yandex/mobile/ads/impl/p91;-><init>(Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/q91;Landroid/content/Context;Lcom/yandex/mobile/ads/impl/s41;Lcom/yandex/mobile/ads/impl/dw;Lcom/yandex/mobile/ads/impl/sj0;Lwh1;)V

    iput-object p1, v8, Lcom/yandex/mobile/ads/impl/p91;->d:Ljava/lang/Object;

    return-object v8
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lnk1;

    check-cast p2, Lwh1;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/mobile/ads/impl/p91;->create(Ljava/lang/Object;Lwh1;)Lwh1;

    move-result-object p0

    check-cast p0, Lcom/yandex/mobile/ads/impl/p91;

    sget-object p1, Lzfb;->a:Lzfb;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/p91;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/yandex/mobile/ads/impl/p91;->c:I

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v1, :cond_4

    if-eq v1, v5, :cond_3

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_2
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/p91;->d:Ljava/lang/Object;

    check-cast v1, Ld72;

    invoke-static {p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_3
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/p91;->b:Ld72;

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/p91;->d:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/j;

    invoke-static {p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    invoke-static {p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/p91;->d:Ljava/lang/Object;

    check-cast p1, Lnk1;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/p91;->e:Lcom/yandex/mobile/ads/impl/o3;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/o3;->u()Z

    move-result v1

    if-eqz v1, :cond_8

    new-instance v10, Lcom/yandex/mobile/ads/impl/p91$a;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/p91;->f:Lcom/yandex/mobile/ads/impl/q91;

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/p91;->h:Lcom/yandex/mobile/ads/impl/s41;

    iget-object v7, p0, Lcom/yandex/mobile/ads/impl/p91;->j:Lcom/yandex/mobile/ads/impl/sj0;

    invoke-direct {v10, v1, v2, v7, v6}, Lcom/yandex/mobile/ads/impl/p91$a;-><init>(Lcom/yandex/mobile/ads/impl/q91;Lcom/yandex/mobile/ads/impl/s41;Lcom/yandex/mobile/ads/impl/sj0;Lwh1;)V

    const/4 v11, 0x3

    const/4 v12, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v7, p1

    invoke-static/range {v7 .. v12}, Lcl0;->d(Lnk1;Lkotlin/coroutines/d;Lkotlinx/coroutines/CoroutineStart;Ls74;ILjava/lang/Object;)Lkotlinx/coroutines/j;

    move-result-object v1

    new-instance v10, Lcom/yandex/mobile/ads/impl/p91$c;

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/p91;->f:Lcom/yandex/mobile/ads/impl/q91;

    iget-object v7, p0, Lcom/yandex/mobile/ads/impl/p91;->g:Landroid/content/Context;

    iget-object v8, p0, Lcom/yandex/mobile/ads/impl/p91;->h:Lcom/yandex/mobile/ads/impl/s41;

    invoke-direct {v10, v2, v7, v8, v6}, Lcom/yandex/mobile/ads/impl/p91$c;-><init>(Lcom/yandex/mobile/ads/impl/q91;Landroid/content/Context;Lcom/yandex/mobile/ads/impl/s41;Lwh1;)V

    const/4 v8, 0x0

    move-object v7, p1

    invoke-static/range {v7 .. v12}, Lcl0;->d(Lnk1;Lkotlin/coroutines/d;Lkotlinx/coroutines/CoroutineStart;Ls74;ILjava/lang/Object;)Lkotlinx/coroutines/j;

    move-result-object v2

    new-instance v13, Lcom/yandex/mobile/ads/impl/p91$b;

    iget-object v8, p0, Lcom/yandex/mobile/ads/impl/p91;->f:Lcom/yandex/mobile/ads/impl/q91;

    iget-object v9, p0, Lcom/yandex/mobile/ads/impl/p91;->g:Landroid/content/Context;

    iget-object v10, p0, Lcom/yandex/mobile/ads/impl/p91;->h:Lcom/yandex/mobile/ads/impl/s41;

    iget-object v11, p0, Lcom/yandex/mobile/ads/impl/p91;->i:Lcom/yandex/mobile/ads/impl/dw;

    move-object v7, v13

    invoke-direct/range {v7 .. v12}, Lcom/yandex/mobile/ads/impl/p91$b;-><init>(Lcom/yandex/mobile/ads/impl/q91;Landroid/content/Context;Lcom/yandex/mobile/ads/impl/s41;Lcom/yandex/mobile/ads/impl/dw;Lwh1;)V

    const/4 v11, 0x3

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v7, p1

    move-object v10, v13

    invoke-static/range {v7 .. v12}, Lcl0;->b(Lnk1;Lkotlin/coroutines/d;Lkotlinx/coroutines/CoroutineStart;Ls74;ILjava/lang/Object;)Ld72;

    move-result-object p1

    iput-object v2, p0, Lcom/yandex/mobile/ads/impl/p91;->d:Ljava/lang/Object;

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/p91;->b:Ld72;

    iput v5, p0, Lcom/yandex/mobile/ads/impl/p91;->c:I

    invoke-interface {v1, p0}, Lkotlinx/coroutines/j;->join(Lwh1;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_5

    return-object v0

    :cond_5
    move-object v1, p1

    :goto_0
    iput-object v1, p0, Lcom/yandex/mobile/ads/impl/p91;->d:Ljava/lang/Object;

    iput-object v6, p0, Lcom/yandex/mobile/ads/impl/p91;->b:Ld72;

    iput v4, p0, Lcom/yandex/mobile/ads/impl/p91;->c:I

    invoke-interface {v2, p0}, Lkotlinx/coroutines/j;->join(Lwh1;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6

    return-object v0

    :cond_6
    :goto_1
    iput-object v6, p0, Lcom/yandex/mobile/ads/impl/p91;->d:Ljava/lang/Object;

    iput v3, p0, Lcom/yandex/mobile/ads/impl/p91;->c:I

    invoke-interface {v1, p0}, Ld72;->o(Lwh1;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_7

    return-object v0

    :cond_7
    :goto_2
    return-object p1

    :cond_8
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/p91;->f:Lcom/yandex/mobile/ads/impl/q91;

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/q91;->b(Lcom/yandex/mobile/ads/impl/q91;)Lcom/yandex/mobile/ads/impl/eb1;

    move-result-object v3

    iget-object v5, p0, Lcom/yandex/mobile/ads/impl/p91;->g:Landroid/content/Context;

    iget-object v6, p0, Lcom/yandex/mobile/ads/impl/p91;->h:Lcom/yandex/mobile/ads/impl/s41;

    iget-object v7, p0, Lcom/yandex/mobile/ads/impl/p91;->i:Lcom/yandex/mobile/ads/impl/dw;

    iput v2, p0, Lcom/yandex/mobile/ads/impl/p91;->c:I

    const/4 v4, 0x0

    move-object v8, p0

    invoke-virtual/range {v3 .. v8}, Lcom/yandex/mobile/ads/impl/eb1;->a(ZLandroid/content/Context;Lcom/yandex/mobile/ads/impl/s41;Lcom/yandex/mobile/ads/impl/dw;Lwh1;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_9

    return-object v0

    :cond_9
    :goto_3
    return-object p1
.end method

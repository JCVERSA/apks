.class final Lcom/yandex/mobile/ads/impl/w91;
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
    c = "com.monetization.ads.nativeads.creator.NativeResourcesLoader$load$1"
    f = "NativeResourcesLoader.kt"
    l = {
        0x35,
        0x37
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field b:Ld72;

.field c:I

.field private synthetic d:Ljava/lang/Object;

.field final synthetic e:Landroid/content/Context;

.field final synthetic f:Lcom/yandex/mobile/ads/impl/g51;

.field final synthetic g:Lcom/yandex/mobile/ads/impl/v91$a;

.field final synthetic h:Lcom/yandex/mobile/ads/impl/v91;

.field final synthetic i:Lcom/yandex/mobile/ads/impl/o3;

.field final synthetic j:Lcom/yandex/mobile/ads/impl/s41;

.field final synthetic k:Lcom/yandex/mobile/ads/impl/dw;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/g51;Lcom/yandex/mobile/ads/impl/v91$a;Lcom/yandex/mobile/ads/impl/v91;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/s41;Lcom/yandex/mobile/ads/impl/dw;Lwh1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/yandex/mobile/ads/impl/g51;",
            "Lcom/yandex/mobile/ads/impl/v91$a;",
            "Lcom/yandex/mobile/ads/impl/v91;",
            "Lcom/yandex/mobile/ads/impl/o3;",
            "Lcom/yandex/mobile/ads/impl/s41;",
            "Lcom/yandex/mobile/ads/impl/dw;",
            "Lwh1<",
            "-",
            "Lcom/yandex/mobile/ads/impl/w91;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/w91;->e:Landroid/content/Context;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/w91;->f:Lcom/yandex/mobile/ads/impl/g51;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/w91;->g:Lcom/yandex/mobile/ads/impl/v91$a;

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/w91;->h:Lcom/yandex/mobile/ads/impl/v91;

    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/w91;->i:Lcom/yandex/mobile/ads/impl/o3;

    iput-object p6, p0, Lcom/yandex/mobile/ads/impl/w91;->j:Lcom/yandex/mobile/ads/impl/s41;

    iput-object p7, p0, Lcom/yandex/mobile/ads/impl/w91;->k:Lcom/yandex/mobile/ads/impl/dw;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p8}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILwh1;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lwh1;)Lwh1;
    .locals 10
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

    new-instance v9, Lcom/yandex/mobile/ads/impl/w91;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/w91;->e:Landroid/content/Context;

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/w91;->f:Lcom/yandex/mobile/ads/impl/g51;

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/w91;->g:Lcom/yandex/mobile/ads/impl/v91$a;

    iget-object v4, p0, Lcom/yandex/mobile/ads/impl/w91;->h:Lcom/yandex/mobile/ads/impl/v91;

    iget-object v5, p0, Lcom/yandex/mobile/ads/impl/w91;->i:Lcom/yandex/mobile/ads/impl/o3;

    iget-object v6, p0, Lcom/yandex/mobile/ads/impl/w91;->j:Lcom/yandex/mobile/ads/impl/s41;

    iget-object v7, p0, Lcom/yandex/mobile/ads/impl/w91;->k:Lcom/yandex/mobile/ads/impl/dw;

    move-object v0, v9

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lcom/yandex/mobile/ads/impl/w91;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/g51;Lcom/yandex/mobile/ads/impl/v91$a;Lcom/yandex/mobile/ads/impl/v91;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/s41;Lcom/yandex/mobile/ads/impl/dw;Lwh1;)V

    iput-object p1, v9, Lcom/yandex/mobile/ads/impl/w91;->d:Ljava/lang/Object;

    return-object v9
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lnk1;

    check-cast p2, Lwh1;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/mobile/ads/impl/w91;->create(Ljava/lang/Object;Lwh1;)Lwh1;

    move-result-object p0

    check-cast p0, Lcom/yandex/mobile/ads/impl/w91;

    sget-object p1, Lzfb;->a:Lzfb;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/w91;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/yandex/mobile/ads/impl/w91;->c:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v4, :cond_1

    if-ne v1, v3, :cond_0

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/w91;->d:Ljava/lang/Object;

    check-cast v0, Lcom/yandex/mobile/ads/impl/yk1;

    invoke-static {p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/w91;->b:Ld72;

    iget-object v4, p0, Lcom/yandex/mobile/ads/impl/w91;->d:Ljava/lang/Object;

    check-cast v4, Lcom/yandex/mobile/ads/impl/yk1;

    invoke-static {p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    move-object v11, v1

    move-object v1, v4

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/w91;->d:Ljava/lang/Object;

    check-cast p1, Lnk1;

    new-instance v1, Lcom/yandex/mobile/ads/impl/yk1;

    iget-object v5, p0, Lcom/yandex/mobile/ads/impl/w91;->e:Landroid/content/Context;

    invoke-direct {v1, v5}, Lcom/yandex/mobile/ads/impl/yk1;-><init>(Landroid/content/Context;)V

    new-instance v13, Lcom/yandex/mobile/ads/impl/w91$b;

    iget-object v6, p0, Lcom/yandex/mobile/ads/impl/w91;->h:Lcom/yandex/mobile/ads/impl/v91;

    iget-object v7, p0, Lcom/yandex/mobile/ads/impl/w91;->i:Lcom/yandex/mobile/ads/impl/o3;

    iget-object v8, p0, Lcom/yandex/mobile/ads/impl/w91;->e:Landroid/content/Context;

    iget-object v9, p0, Lcom/yandex/mobile/ads/impl/w91;->j:Lcom/yandex/mobile/ads/impl/s41;

    iget-object v11, p0, Lcom/yandex/mobile/ads/impl/w91;->k:Lcom/yandex/mobile/ads/impl/dw;

    const/4 v12, 0x0

    move-object v5, v13

    move-object v10, v1

    invoke-direct/range {v5 .. v12}, Lcom/yandex/mobile/ads/impl/w91$b;-><init>(Lcom/yandex/mobile/ads/impl/v91;Lcom/yandex/mobile/ads/impl/o3;Landroid/content/Context;Lcom/yandex/mobile/ads/impl/s41;Lcom/yandex/mobile/ads/impl/yk1;Lcom/yandex/mobile/ads/impl/dw;Lwh1;)V

    const/4 v9, 0x3

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v5, p1

    move-object v8, v13

    invoke-static/range {v5 .. v10}, Lcl0;->b(Lnk1;Lkotlin/coroutines/d;Lkotlinx/coroutines/CoroutineStart;Ls74;ILjava/lang/Object;)Ld72;

    move-result-object v11

    new-instance v8, Lcom/yandex/mobile/ads/impl/w91$a;

    iget-object v5, p0, Lcom/yandex/mobile/ads/impl/w91;->h:Lcom/yandex/mobile/ads/impl/v91;

    iget-object v6, p0, Lcom/yandex/mobile/ads/impl/w91;->j:Lcom/yandex/mobile/ads/impl/s41;

    invoke-direct {v8, v5, v6, v2}, Lcom/yandex/mobile/ads/impl/w91$a;-><init>(Lcom/yandex/mobile/ads/impl/v91;Lcom/yandex/mobile/ads/impl/s41;Lwh1;)V

    const/4 v6, 0x0

    move-object v5, p1

    invoke-static/range {v5 .. v10}, Lcl0;->d(Lnk1;Lkotlin/coroutines/d;Lkotlinx/coroutines/CoroutineStart;Ls74;ILjava/lang/Object;)Lkotlinx/coroutines/j;

    move-result-object p1

    iput-object v1, p0, Lcom/yandex/mobile/ads/impl/w91;->d:Ljava/lang/Object;

    iput-object v11, p0, Lcom/yandex/mobile/ads/impl/w91;->b:Ld72;

    iput v4, p0, Lcom/yandex/mobile/ads/impl/w91;->c:I

    invoke-interface {p1, p0}, Lkotlinx/coroutines/j;->join(Lwh1;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    :goto_0
    iput-object v1, p0, Lcom/yandex/mobile/ads/impl/w91;->d:Ljava/lang/Object;

    iput-object v2, p0, Lcom/yandex/mobile/ads/impl/w91;->b:Ld72;

    iput v3, p0, Lcom/yandex/mobile/ads/impl/w91;->c:I

    invoke-interface {v11, p0}, Ld72;->o(Lwh1;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    :cond_4
    move-object v0, v1

    :goto_1
    check-cast p1, Lcom/yandex/mobile/ads/impl/s41;

    if-nez p1, :cond_5

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/w91;->f:Lcom/yandex/mobile/ads/impl/g51;

    invoke-static {}, Lcom/yandex/mobile/ads/impl/w7;->d()Lcom/yandex/mobile/ads/impl/w3;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/yandex/mobile/ads/impl/g51;->a(Lcom/yandex/mobile/ads/impl/w3;)V

    goto :goto_2

    :cond_5
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/w91;->g:Lcom/yandex/mobile/ads/impl/v91$a;

    invoke-interface {p0, v0, p1}, Lcom/yandex/mobile/ads/impl/v91$a;->a(Lcom/yandex/mobile/ads/impl/yk1;Lcom/yandex/mobile/ads/impl/s41;)V

    :goto_2
    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

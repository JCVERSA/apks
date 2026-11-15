.class final Lcom/yandex/mobile/ads/impl/ov1$b;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Ls74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/mobile/ads/impl/ov1;->a(Lcom/yandex/mobile/ads/impl/gl0;Lcom/yandex/mobile/ads/impl/ov1$a;)V
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
    c = "com.monetization.ads.core.initializer.SdkInitializer$initialize$1"
    f = "SdkInitializer.kt"
    l = {
        0x68,
        0x6a,
        0x6c,
        0x6d
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field b:Lcom/yandex/mobile/ads/impl/f5;

.field c:Lcom/yandex/mobile/ads/impl/ov1;

.field d:Lcom/yandex/mobile/ads/impl/gl0;

.field e:Lkotlinx/coroutines/j;

.field f:I

.field private synthetic g:Ljava/lang/Object;

.field final synthetic h:Lcom/yandex/mobile/ads/impl/ov1;

.field final synthetic i:Lcom/yandex/mobile/ads/impl/gl0;

.field final synthetic j:Lcom/yandex/mobile/ads/impl/ov1$a;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/ov1;Lcom/yandex/mobile/ads/impl/gl0;Lcom/yandex/mobile/ads/impl/ov1$a;Lwh1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/ov1;",
            "Lcom/yandex/mobile/ads/impl/gl0;",
            "Lcom/yandex/mobile/ads/impl/ov1$a;",
            "Lwh1<",
            "-",
            "Lcom/yandex/mobile/ads/impl/ov1$b;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ov1$b;->h:Lcom/yandex/mobile/ads/impl/ov1;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/ov1$b;->i:Lcom/yandex/mobile/ads/impl/gl0;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/ov1$b;->j:Lcom/yandex/mobile/ads/impl/ov1$a;

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

    new-instance v0, Lcom/yandex/mobile/ads/impl/ov1$b;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/ov1$b;->h:Lcom/yandex/mobile/ads/impl/ov1;

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/ov1$b;->i:Lcom/yandex/mobile/ads/impl/gl0;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ov1$b;->j:Lcom/yandex/mobile/ads/impl/ov1$a;

    invoke-direct {v0, v1, v2, p0, p2}, Lcom/yandex/mobile/ads/impl/ov1$b;-><init>(Lcom/yandex/mobile/ads/impl/ov1;Lcom/yandex/mobile/ads/impl/gl0;Lcom/yandex/mobile/ads/impl/ov1$a;Lwh1;)V

    iput-object p1, v0, Lcom/yandex/mobile/ads/impl/ov1$b;->g:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lnk1;

    check-cast p2, Lwh1;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/mobile/ads/impl/ov1$b;->create(Ljava/lang/Object;Lwh1;)Lwh1;

    move-result-object p0

    check-cast p0, Lcom/yandex/mobile/ads/impl/ov1$b;

    sget-object p1, Lzfb;->a:Lzfb;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/ov1$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/yandex/mobile/ads/impl/ov1$b;->f:I

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v2, :cond_4

    if-eq v2, v6, :cond_3

    if-eq v2, v5, :cond_2

    if-eq v2, v4, :cond_1

    if-ne v2, v3, :cond_0

    iget-object v1, v0, Lcom/yandex/mobile/ads/impl/ov1$b;->b:Lcom/yandex/mobile/ads/impl/f5;

    iget-object v2, v0, Lcom/yandex/mobile/ads/impl/ov1$b;->g:Ljava/lang/Object;

    check-cast v2, Lcom/yandex/mobile/ads/impl/g5;

    invoke-static/range {p1 .. p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    move-object/from16 v3, p1

    goto/16 :goto_4

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v2, v0, Lcom/yandex/mobile/ads/impl/ov1$b;->d:Lcom/yandex/mobile/ads/impl/gl0;

    iget-object v4, v0, Lcom/yandex/mobile/ads/impl/ov1$b;->c:Lcom/yandex/mobile/ads/impl/ov1;

    iget-object v5, v0, Lcom/yandex/mobile/ads/impl/ov1$b;->b:Lcom/yandex/mobile/ads/impl/f5;

    iget-object v6, v0, Lcom/yandex/mobile/ads/impl/ov1$b;->g:Ljava/lang/Object;

    check-cast v6, Lcom/yandex/mobile/ads/impl/g5;

    invoke-static/range {p1 .. p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    move-object v3, v2

    move-object v2, v6

    goto/16 :goto_3

    :cond_2
    iget-object v2, v0, Lcom/yandex/mobile/ads/impl/ov1$b;->e:Lkotlinx/coroutines/j;

    iget-object v5, v0, Lcom/yandex/mobile/ads/impl/ov1$b;->d:Lcom/yandex/mobile/ads/impl/gl0;

    iget-object v6, v0, Lcom/yandex/mobile/ads/impl/ov1$b;->c:Lcom/yandex/mobile/ads/impl/ov1;

    iget-object v8, v0, Lcom/yandex/mobile/ads/impl/ov1$b;->b:Lcom/yandex/mobile/ads/impl/f5;

    iget-object v9, v0, Lcom/yandex/mobile/ads/impl/ov1$b;->g:Ljava/lang/Object;

    check-cast v9, Lcom/yandex/mobile/ads/impl/g5;

    invoke-static/range {p1 .. p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_3
    iget-object v2, v0, Lcom/yandex/mobile/ads/impl/ov1$b;->e:Lkotlinx/coroutines/j;

    iget-object v6, v0, Lcom/yandex/mobile/ads/impl/ov1$b;->d:Lcom/yandex/mobile/ads/impl/gl0;

    iget-object v8, v0, Lcom/yandex/mobile/ads/impl/ov1$b;->c:Lcom/yandex/mobile/ads/impl/ov1;

    iget-object v9, v0, Lcom/yandex/mobile/ads/impl/ov1$b;->b:Lcom/yandex/mobile/ads/impl/f5;

    iget-object v10, v0, Lcom/yandex/mobile/ads/impl/ov1$b;->g:Ljava/lang/Object;

    check-cast v10, Lcom/yandex/mobile/ads/impl/g5;

    invoke-static/range {p1 .. p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    move-object v15, v9

    move-object v9, v10

    goto :goto_1

    :cond_4
    invoke-static/range {p1 .. p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/yandex/mobile/ads/impl/ov1$b;->g:Ljava/lang/Object;

    move-object v8, v2

    check-cast v8, Lnk1;

    iget-object v2, v0, Lcom/yandex/mobile/ads/impl/ov1$b;->h:Lcom/yandex/mobile/ads/impl/ov1;

    invoke-static {v2}, Lcom/yandex/mobile/ads/impl/ov1;->i(Lcom/yandex/mobile/ads/impl/ov1;)Lcom/yandex/mobile/ads/impl/pw1;

    move-result-object v2

    iget-object v9, v0, Lcom/yandex/mobile/ads/impl/ov1$b;->h:Lcom/yandex/mobile/ads/impl/ov1;

    invoke-static {v9}, Lcom/yandex/mobile/ads/impl/ov1;->e(Lcom/yandex/mobile/ads/impl/ov1;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v2, v9}, Lcom/yandex/mobile/ads/impl/pw1;->a(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/ju1;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/ju1;->K()Z

    move-result v2

    goto :goto_0

    :cond_5
    const/4 v2, 0x0

    :goto_0
    iget-object v9, v0, Lcom/yandex/mobile/ads/impl/ov1$b;->h:Lcom/yandex/mobile/ads/impl/ov1;

    invoke-static {v9}, Lcom/yandex/mobile/ads/impl/ov1;->b(Lcom/yandex/mobile/ads/impl/ov1;)Lcom/yandex/mobile/ads/impl/g5;

    move-result-object v14

    sget-object v15, Lcom/yandex/mobile/ads/impl/f5;->j:Lcom/yandex/mobile/ads/impl/f5;

    iget-object v13, v0, Lcom/yandex/mobile/ads/impl/ov1$b;->h:Lcom/yandex/mobile/ads/impl/ov1;

    iget-object v12, v0, Lcom/yandex/mobile/ads/impl/ov1$b;->i:Lcom/yandex/mobile/ads/impl/gl0;

    const-string v9, "adLoadingPhaseType"

    invoke-static {v14, v15, v9, v15, v7}, Lcom/yandex/mobile/ads/impl/bk;->a(Lcom/yandex/mobile/ads/impl/g5;Lcom/yandex/mobile/ads/impl/f5;Ljava/lang/String;Lcom/yandex/mobile/ads/impl/f5;Lcom/yandex/mobile/ads/impl/ha2;)V

    invoke-static {v13}, Lcom/yandex/mobile/ads/impl/ov1;->l(Lcom/yandex/mobile/ads/impl/ov1;)V

    invoke-static {v13}, Lcom/yandex/mobile/ads/impl/ov1;->m(Lcom/yandex/mobile/ads/impl/ov1;)V

    invoke-static {v13}, Lcom/yandex/mobile/ads/impl/ov1;->k(Lcom/yandex/mobile/ads/impl/ov1;)V

    new-instance v11, Lcom/yandex/mobile/ads/impl/ov1$b$a;

    invoke-direct {v11, v2, v13, v7}, Lcom/yandex/mobile/ads/impl/ov1$b$a;-><init>(ZLcom/yandex/mobile/ads/impl/ov1;Lwh1;)V

    const/4 v2, 0x3

    const/16 v16, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v3, v12

    move v12, v2

    move-object v2, v13

    move-object/from16 v13, v16

    invoke-static/range {v8 .. v13}, Lcl0;->d(Lnk1;Lkotlin/coroutines/d;Lkotlinx/coroutines/CoroutineStart;Ls74;ILjava/lang/Object;)Lkotlinx/coroutines/j;

    move-result-object v8

    iput-object v14, v0, Lcom/yandex/mobile/ads/impl/ov1$b;->g:Ljava/lang/Object;

    iput-object v15, v0, Lcom/yandex/mobile/ads/impl/ov1$b;->b:Lcom/yandex/mobile/ads/impl/f5;

    iput-object v2, v0, Lcom/yandex/mobile/ads/impl/ov1$b;->c:Lcom/yandex/mobile/ads/impl/ov1;

    iput-object v3, v0, Lcom/yandex/mobile/ads/impl/ov1$b;->d:Lcom/yandex/mobile/ads/impl/gl0;

    iput-object v8, v0, Lcom/yandex/mobile/ads/impl/ov1$b;->e:Lkotlinx/coroutines/j;

    iput v6, v0, Lcom/yandex/mobile/ads/impl/ov1$b;->f:I

    invoke-static {v2, v0}, Lcom/yandex/mobile/ads/impl/ov1;->a(Lcom/yandex/mobile/ads/impl/ov1;Lwh1;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v1, :cond_6

    return-object v1

    :cond_6
    move-object v6, v3

    move-object v9, v14

    move-object/from16 v17, v8

    move-object v8, v2

    move-object/from16 v2, v17

    :goto_1
    invoke-static {v8}, Lcom/yandex/mobile/ads/impl/ov1;->n(Lcom/yandex/mobile/ads/impl/ov1;)V

    iput-object v9, v0, Lcom/yandex/mobile/ads/impl/ov1$b;->g:Ljava/lang/Object;

    iput-object v15, v0, Lcom/yandex/mobile/ads/impl/ov1$b;->b:Lcom/yandex/mobile/ads/impl/f5;

    iput-object v8, v0, Lcom/yandex/mobile/ads/impl/ov1$b;->c:Lcom/yandex/mobile/ads/impl/ov1;

    iput-object v6, v0, Lcom/yandex/mobile/ads/impl/ov1$b;->d:Lcom/yandex/mobile/ads/impl/gl0;

    iput-object v2, v0, Lcom/yandex/mobile/ads/impl/ov1$b;->e:Lkotlinx/coroutines/j;

    iput v5, v0, Lcom/yandex/mobile/ads/impl/ov1$b;->f:I

    invoke-static {v8, v0}, Lcom/yandex/mobile/ads/impl/ov1;->b(Lcom/yandex/mobile/ads/impl/ov1;Lwh1;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v1, :cond_7

    return-object v1

    :cond_7
    move-object v5, v6

    move-object v6, v8

    move-object v8, v15

    :goto_2
    iput-object v9, v0, Lcom/yandex/mobile/ads/impl/ov1$b;->g:Ljava/lang/Object;

    iput-object v8, v0, Lcom/yandex/mobile/ads/impl/ov1$b;->b:Lcom/yandex/mobile/ads/impl/f5;

    iput-object v6, v0, Lcom/yandex/mobile/ads/impl/ov1$b;->c:Lcom/yandex/mobile/ads/impl/ov1;

    iput-object v5, v0, Lcom/yandex/mobile/ads/impl/ov1$b;->d:Lcom/yandex/mobile/ads/impl/gl0;

    iput-object v7, v0, Lcom/yandex/mobile/ads/impl/ov1$b;->e:Lkotlinx/coroutines/j;

    iput v4, v0, Lcom/yandex/mobile/ads/impl/ov1$b;->f:I

    invoke-interface {v2, v0}, Lkotlinx/coroutines/j;->join(Lwh1;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_8

    return-object v1

    :cond_8
    move-object v3, v5

    move-object v4, v6

    move-object v5, v8

    move-object v2, v9

    :goto_3
    iput-object v2, v0, Lcom/yandex/mobile/ads/impl/ov1$b;->g:Ljava/lang/Object;

    iput-object v5, v0, Lcom/yandex/mobile/ads/impl/ov1$b;->b:Lcom/yandex/mobile/ads/impl/f5;

    iput-object v7, v0, Lcom/yandex/mobile/ads/impl/ov1$b;->c:Lcom/yandex/mobile/ads/impl/ov1;

    iput-object v7, v0, Lcom/yandex/mobile/ads/impl/ov1$b;->d:Lcom/yandex/mobile/ads/impl/gl0;

    const/4 v6, 0x4

    iput v6, v0, Lcom/yandex/mobile/ads/impl/ov1$b;->f:I

    invoke-static {v4, v3, v0}, Lcom/yandex/mobile/ads/impl/ov1;->a(Lcom/yandex/mobile/ads/impl/ov1;Lcom/yandex/mobile/ads/impl/gl0;Lwh1;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v1, :cond_9

    return-object v1

    :cond_9
    move-object v1, v5

    :goto_4
    check-cast v3, Lcom/yandex/mobile/ads/impl/yu1;

    invoke-virtual {v2, v1}, Lcom/yandex/mobile/ads/impl/g5;->a(Lcom/yandex/mobile/ads/impl/f5;)V

    instance-of v1, v3, Lcom/yandex/mobile/ads/impl/yu1$b;

    if-eqz v1, :cond_a

    iget-object v1, v0, Lcom/yandex/mobile/ads/impl/ov1$b;->h:Lcom/yandex/mobile/ads/impl/ov1;

    invoke-static {v1}, Lcom/yandex/mobile/ads/impl/ov1;->h(Lcom/yandex/mobile/ads/impl/ov1;)Lcom/yandex/mobile/ads/impl/tv1;

    move-result-object v1

    check-cast v3, Lcom/yandex/mobile/ads/impl/yu1$b;

    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/yu1$b;->b()Lcom/yandex/mobile/ads/impl/ju1;

    move-result-object v2

    iget-object v4, v0, Lcom/yandex/mobile/ads/impl/ov1$b;->i:Lcom/yandex/mobile/ads/impl/gl0;

    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/yu1$b;->a()Lcom/yandex/mobile/ads/impl/kr;

    move-result-object v3

    invoke-virtual {v1, v2, v4, v3}, Lcom/yandex/mobile/ads/impl/tv1;->a(Lcom/yandex/mobile/ads/impl/ju1;Lcom/yandex/mobile/ads/impl/gl0;Lcom/yandex/mobile/ads/impl/kr;)V

    iget-object v1, v0, Lcom/yandex/mobile/ads/impl/ov1$b;->h:Lcom/yandex/mobile/ads/impl/ov1;

    invoke-static {v1}, Lcom/yandex/mobile/ads/impl/ov1;->j(Lcom/yandex/mobile/ads/impl/ov1;)Lcom/yandex/mobile/ads/impl/yw1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/yw1;->a()V

    invoke-static {}, Lcom/yandex/mobile/ads/impl/t11;->a()V

    iget-object v1, v0, Lcom/yandex/mobile/ads/impl/ov1$b;->j:Lcom/yandex/mobile/ads/impl/ov1$a;

    iget-object v2, v0, Lcom/yandex/mobile/ads/impl/ov1$b;->h:Lcom/yandex/mobile/ads/impl/ov1;

    invoke-static {v2}, Lcom/yandex/mobile/ads/impl/ov1;->c(Lcom/yandex/mobile/ads/impl/ov1;)Lcom/yandex/mobile/ads/impl/jc;

    move-result-object v2

    iget-object v3, v0, Lcom/yandex/mobile/ads/impl/ov1$b;->h:Lcom/yandex/mobile/ads/impl/ov1;

    invoke-static {v3}, Lcom/yandex/mobile/ads/impl/ov1;->g(Lcom/yandex/mobile/ads/impl/ov1;)Lcom/yandex/mobile/ads/impl/p50;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/p50;->c()Lcom/yandex/mobile/ads/impl/o50;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/yandex/mobile/ads/impl/ov1$a;->a(Lcom/yandex/mobile/ads/impl/jc;Lcom/yandex/mobile/ads/impl/o50;)V

    goto :goto_6

    :cond_a
    instance-of v1, v3, Lcom/yandex/mobile/ads/impl/yu1$a;

    if-eqz v1, :cond_c

    iget-object v1, v0, Lcom/yandex/mobile/ads/impl/ov1$b;->h:Lcom/yandex/mobile/ads/impl/ov1;

    invoke-static {v1}, Lcom/yandex/mobile/ads/impl/ov1;->a(Lcom/yandex/mobile/ads/impl/ov1;)Lcom/yandex/mobile/ads/impl/s3;

    move-result-object v1

    check-cast v3, Lcom/yandex/mobile/ads/impl/yu1$a;

    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/yu1$a;->b()Lcom/yandex/mobile/ads/impl/si2;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "error"

    invoke-static {v2, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v1, v2, Lcom/yandex/mobile/ads/impl/r3;

    if-eqz v1, :cond_b

    check-cast v2, Lcom/yandex/mobile/ads/impl/r3;

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/r3;->a()Lcom/yandex/mobile/ads/impl/x3;

    move-result-object v1

    invoke-static {v7, v1}, Lcom/yandex/mobile/ads/impl/y3$a;->a(Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/x3;)Lcom/yandex/mobile/ads/impl/w3;

    move-result-object v1

    goto :goto_5

    :cond_b
    invoke-static {}, Lcom/yandex/mobile/ads/impl/w7;->m()Lcom/yandex/mobile/ads/impl/w3;

    move-result-object v1

    :goto_5
    iget-object v2, v0, Lcom/yandex/mobile/ads/impl/ov1$b;->h:Lcom/yandex/mobile/ads/impl/ov1;

    invoke-static {v2}, Lcom/yandex/mobile/ads/impl/ov1;->h(Lcom/yandex/mobile/ads/impl/ov1;)Lcom/yandex/mobile/ads/impl/tv1;

    move-result-object v2

    iget-object v4, v0, Lcom/yandex/mobile/ads/impl/ov1$b;->i:Lcom/yandex/mobile/ads/impl/gl0;

    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/yu1$a;->a()Lcom/yandex/mobile/ads/impl/kr;

    move-result-object v3

    invoke-virtual {v2, v1, v4, v3}, Lcom/yandex/mobile/ads/impl/tv1;->a(Lcom/yandex/mobile/ads/impl/w3;Lcom/yandex/mobile/ads/impl/gl0;Lcom/yandex/mobile/ads/impl/kr;)V

    iget-object v2, v0, Lcom/yandex/mobile/ads/impl/ov1$b;->j:Lcom/yandex/mobile/ads/impl/ov1$a;

    invoke-interface {v2, v1}, Lcom/yandex/mobile/ads/impl/ov1$a;->a(Lcom/yandex/mobile/ads/impl/w3;)V

    :cond_c
    :goto_6
    iget-object v0, v0, Lcom/yandex/mobile/ads/impl/ov1$b;->h:Lcom/yandex/mobile/ads/impl/ov1;

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/ov1;->d(Lcom/yandex/mobile/ads/impl/ov1;)Lcom/yandex/mobile/ads/impl/dg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/dg;->a()V

    sget-object v0, Lzfb;->a:Lzfb;

    return-object v0
.end method

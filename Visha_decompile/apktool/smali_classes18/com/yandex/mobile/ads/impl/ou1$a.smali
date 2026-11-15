.class final Lcom/yandex/mobile/ads/impl/ou1$a;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Ls74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/mobile/ads/impl/ou1;->a(Lcom/yandex/mobile/ads/impl/gl0;Lwh1;)Ljava/lang/Object;
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
    c = "com.monetization.ads.base.SdkConfigurationLoaderHolder$loadSdkConfiguration$2"
    f = "SdkConfigurationLoaderHolder.kt"
    l = {
        0x5d,
        0x60
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field b:Lnw6;

.field c:Lcom/yandex/mobile/ads/impl/ou1;

.field d:Lcom/yandex/mobile/ads/impl/gl0;

.field e:Ljava/lang/Object;

.field f:I

.field final synthetic g:Lcom/yandex/mobile/ads/impl/ou1;

.field final synthetic h:Lcom/yandex/mobile/ads/impl/gl0;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/ou1;Lcom/yandex/mobile/ads/impl/gl0;Lwh1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/ou1;",
            "Lcom/yandex/mobile/ads/impl/gl0;",
            "Lwh1<",
            "-",
            "Lcom/yandex/mobile/ads/impl/ou1$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ou1$a;->g:Lcom/yandex/mobile/ads/impl/ou1;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/ou1$a;->h:Lcom/yandex/mobile/ads/impl/gl0;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILwh1;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lwh1;)Lwh1;
    .locals 1
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

    new-instance p1, Lcom/yandex/mobile/ads/impl/ou1$a;

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ou1$a;->g:Lcom/yandex/mobile/ads/impl/ou1;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ou1$a;->h:Lcom/yandex/mobile/ads/impl/gl0;

    invoke-direct {p1, v0, p0, p2}, Lcom/yandex/mobile/ads/impl/ou1$a;-><init>(Lcom/yandex/mobile/ads/impl/ou1;Lcom/yandex/mobile/ads/impl/gl0;Lwh1;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lnk1;

    check-cast p2, Lwh1;

    new-instance p1, Lcom/yandex/mobile/ads/impl/ou1$a;

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ou1$a;->g:Lcom/yandex/mobile/ads/impl/ou1;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ou1$a;->h:Lcom/yandex/mobile/ads/impl/gl0;

    invoke-direct {p1, v0, p0, p2}, Lcom/yandex/mobile/ads/impl/ou1$a;-><init>(Lcom/yandex/mobile/ads/impl/ou1;Lcom/yandex/mobile/ads/impl/gl0;Lwh1;)V

    sget-object p0, Lzfb;->a:Lzfb;

    invoke-virtual {p1, p0}, Lcom/yandex/mobile/ads/impl/ou1$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/yandex/mobile/ads/impl/ou1$a;->f:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ou1$a;->b:Lnw6;

    :try_start_0
    invoke-static {p1}, Lkotlin/c;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_2

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/ou1$a;->d:Lcom/yandex/mobile/ads/impl/gl0;

    iget-object v5, p0, Lcom/yandex/mobile/ads/impl/ou1$a;->c:Lcom/yandex/mobile/ads/impl/ou1;

    iget-object v6, p0, Lcom/yandex/mobile/ads/impl/ou1$a;->b:Lnw6;

    invoke-static {p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    move-object p1, v6

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/ou1$a;->g:Lcom/yandex/mobile/ads/impl/ou1;

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/ou1;->a(Lcom/yandex/mobile/ads/impl/ou1;)Lcom/yandex/mobile/ads/impl/g5;

    move-result-object p1

    sget-object v1, Lcom/yandex/mobile/ads/impl/f5;->l:Lcom/yandex/mobile/ads/impl/f5;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v5, "adLoadingPhaseType"

    invoke-static {v1, v5}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1, v4}, Lcom/yandex/mobile/ads/impl/g5;->a(Lcom/yandex/mobile/ads/impl/f5;Lcom/yandex/mobile/ads/impl/ha2;)V

    invoke-static {}, Lcom/yandex/mobile/ads/impl/ou1;->a()Lnw6;

    move-result-object p1

    iget-object v5, p0, Lcom/yandex/mobile/ads/impl/ou1$a;->g:Lcom/yandex/mobile/ads/impl/ou1;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/ou1$a;->h:Lcom/yandex/mobile/ads/impl/gl0;

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ou1$a;->b:Lnw6;

    iput-object v5, p0, Lcom/yandex/mobile/ads/impl/ou1$a;->c:Lcom/yandex/mobile/ads/impl/ou1;

    iput-object v1, p0, Lcom/yandex/mobile/ads/impl/ou1$a;->d:Lcom/yandex/mobile/ads/impl/gl0;

    iput v3, p0, Lcom/yandex/mobile/ads/impl/ou1$a;->f:I

    invoke-interface {p1, v4, p0}, Lnw6;->c(Ljava/lang/Object;Lwh1;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v0, :cond_3

    return-object v0

    :cond_3
    :goto_0
    :try_start_1
    invoke-static {v5}, Lcom/yandex/mobile/ads/impl/ou1;->a(Lcom/yandex/mobile/ads/impl/ou1;)Lcom/yandex/mobile/ads/impl/g5;

    move-result-object v6

    sget-object v7, Lcom/yandex/mobile/ads/impl/f5;->l:Lcom/yandex/mobile/ads/impl/f5;

    invoke-virtual {v6, v7}, Lcom/yandex/mobile/ads/impl/g5;->a(Lcom/yandex/mobile/ads/impl/f5;)V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ou1$a;->b:Lnw6;

    iput-object v5, p0, Lcom/yandex/mobile/ads/impl/ou1$a;->c:Lcom/yandex/mobile/ads/impl/ou1;

    iput-object v1, p0, Lcom/yandex/mobile/ads/impl/ou1$a;->d:Lcom/yandex/mobile/ads/impl/gl0;

    iput v2, p0, Lcom/yandex/mobile/ads/impl/ou1$a;->f:I

    new-instance v2, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {p0}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt;->c(Lwh1;)Lwh1;

    move-result-object v6

    invoke-direct {v2, v6, v3}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lwh1;I)V

    invoke-virtual {v2}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    new-instance v3, Lcom/yandex/mobile/ads/impl/ou1$a$a;

    invoke-direct {v3, v5}, Lcom/yandex/mobile/ads/impl/ou1$a$a;-><init>(Lcom/yandex/mobile/ads/impl/ou1;)V

    invoke-virtual {v2, v3}, Lkotlinx/coroutines/CancellableContinuationImpl;->invokeOnCancellation(Le74;)V

    invoke-static {v5}, Lcom/yandex/mobile/ads/impl/ou1;->b(Lcom/yandex/mobile/ads/impl/ou1;)Lcom/yandex/mobile/ads/impl/nu1;

    move-result-object v3

    invoke-static {v5}, Lcom/yandex/mobile/ads/impl/ou1;->c(Lcom/yandex/mobile/ads/impl/ou1;)Lcom/yandex/mobile/ads/impl/kx1;

    move-result-object v5

    new-instance v6, Lcom/yandex/mobile/ads/impl/ou1$a$b;

    invoke-direct {v6, v2}, Lcom/yandex/mobile/ads/impl/ou1$a$b;-><init>(Lkotlinx/coroutines/CancellableContinuationImpl;)V

    invoke-virtual {v3, v5, v1, v6}, Lcom/yandex/mobile/ads/impl/nu1;->a(Lcom/yandex/mobile/ads/impl/kx1;Lcom/yandex/mobile/ads/impl/gl0;Lcom/yandex/mobile/ads/impl/ou1$a$b;)V

    invoke-virtual {v2}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object v1

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    move-result-object v2

    if-ne v1, v2, :cond_4

    invoke-static {p0}, Lpt1;->c(Lwh1;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_4
    if-ne v1, v0, :cond_5

    return-object v0

    :cond_5
    move-object p0, p1

    move-object p1, v1

    :goto_1
    :try_start_2
    check-cast p1, Lcom/yandex/mobile/ads/impl/yu1;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-interface {p0, v4}, Lnw6;->b(Ljava/lang/Object;)V

    return-object p1

    :catchall_1
    move-exception p0

    move-object v8, p1

    move-object p1, p0

    move-object p0, v8

    :goto_2
    invoke-interface {p0, v4}, Lnw6;->b(Ljava/lang/Object;)V

    throw p1
.end method

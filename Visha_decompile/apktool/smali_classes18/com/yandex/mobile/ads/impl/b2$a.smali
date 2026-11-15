.class final Lcom/yandex/mobile/ads/impl/b2$a;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Ls74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/mobile/ads/impl/b2;->a(Lwh1;)Ljava/lang/Object;
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
    c = "com.monetization.ads.base.aab.AdBlockerControllerImpl$detectAdBlocker$2"
    f = "AdBlockerControllerImpl.kt"
    l = {
        0x37
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field b:I

.field final synthetic c:Lcom/yandex/mobile/ads/impl/b2;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/b2;Lwh1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/b2;",
            "Lwh1<",
            "-",
            "Lcom/yandex/mobile/ads/impl/b2$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/b2$a;->c:Lcom/yandex/mobile/ads/impl/b2;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILwh1;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lwh1;)Lwh1;
    .locals 0
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

    new-instance p1, Lcom/yandex/mobile/ads/impl/b2$a;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/b2$a;->c:Lcom/yandex/mobile/ads/impl/b2;

    invoke-direct {p1, p0, p2}, Lcom/yandex/mobile/ads/impl/b2$a;-><init>(Lcom/yandex/mobile/ads/impl/b2;Lwh1;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lnk1;

    check-cast p2, Lwh1;

    new-instance p1, Lcom/yandex/mobile/ads/impl/b2$a;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/b2$a;->c:Lcom/yandex/mobile/ads/impl/b2;

    invoke-direct {p1, p0, p2}, Lcom/yandex/mobile/ads/impl/b2$a;-><init>(Lcom/yandex/mobile/ads/impl/b2;Lwh1;)V

    sget-object p0, Lzfb;->a:Lzfb;

    invoke-virtual {p1, p0}, Lcom/yandex/mobile/ads/impl/b2$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/yandex/mobile/ads/impl/b2$a;->b:I

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

    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/b2$a;->c:Lcom/yandex/mobile/ads/impl/b2;

    iput v2, p0, Lcom/yandex/mobile/ads/impl/b2$a;->b:I

    new-instance v1, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {p0}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt;->c(Lwh1;)Lwh1;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lwh1;I)V

    invoke-virtual {v1}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    new-instance v2, Lcom/yandex/mobile/ads/impl/b2$a$a;

    invoke-direct {v2, p1}, Lcom/yandex/mobile/ads/impl/b2$a$a;-><init>(Lcom/yandex/mobile/ads/impl/b2;)V

    invoke-virtual {v1, v2}, Lkotlinx/coroutines/CancellableContinuationImpl;->invokeOnCancellation(Le74;)V

    new-instance v2, Lcom/yandex/mobile/ads/impl/b2$a$b;

    invoke-direct {v2, v1}, Lcom/yandex/mobile/ads/impl/b2$a$b;-><init>(Lkotlinx/coroutines/CancellableContinuationImpl;)V

    invoke-static {p1, v2}, Lcom/yandex/mobile/ads/impl/b2;->a(Lcom/yandex/mobile/ads/impl/b2;Lcom/yandex/mobile/ads/impl/e2;)V

    invoke-virtual {v1}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    move-result-object v1

    if-ne p1, v1, :cond_2

    invoke-static {p0}, Lpt1;->c(Lwh1;)V

    :cond_2
    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    :goto_0
    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

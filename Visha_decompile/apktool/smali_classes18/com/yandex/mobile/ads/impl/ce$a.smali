.class final Lcom/yandex/mobile/ads/impl/ce$a;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Ls74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/mobile/ads/impl/ce;->c()V
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
    c = "com.monetization.ads.core.anr.AnrTracker$startTracking$1"
    f = "AnrTracker.kt"
    l = {
        0x1a,
        0x1b
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field b:I

.field final synthetic c:Lcom/yandex/mobile/ads/impl/ce;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/ce;Lwh1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/ce;",
            "Lwh1<",
            "-",
            "Lcom/yandex/mobile/ads/impl/ce$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ce$a;->c:Lcom/yandex/mobile/ads/impl/ce;

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

    new-instance p1, Lcom/yandex/mobile/ads/impl/ce$a;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ce$a;->c:Lcom/yandex/mobile/ads/impl/ce;

    invoke-direct {p1, p0, p2}, Lcom/yandex/mobile/ads/impl/ce$a;-><init>(Lcom/yandex/mobile/ads/impl/ce;Lwh1;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lnk1;

    check-cast p2, Lwh1;

    new-instance p1, Lcom/yandex/mobile/ads/impl/ce$a;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ce$a;->c:Lcom/yandex/mobile/ads/impl/ce;

    invoke-direct {p1, p0, p2}, Lcom/yandex/mobile/ads/impl/ce$a;-><init>(Lcom/yandex/mobile/ads/impl/ce;Lwh1;)V

    sget-object p0, Lzfb;->a:Lzfb;

    invoke-virtual {p1, p0}, Lcom/yandex/mobile/ads/impl/ce$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/yandex/mobile/ads/impl/ce$a;->b:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    :goto_0
    invoke-static {p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    :cond_3
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/ce$a;->c:Lcom/yandex/mobile/ads/impl/ce;

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/ce;->a(Lcom/yandex/mobile/ads/impl/ce;)Lcom/yandex/mobile/ads/impl/ae;

    move-result-object p1

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/ce$a;->c:Lcom/yandex/mobile/ads/impl/ce;

    invoke-static {v1}, Lcom/yandex/mobile/ads/impl/ce;->c(Lcom/yandex/mobile/ads/impl/ce;)J

    move-result-wide v4

    iput v3, p0, Lcom/yandex/mobile/ads/impl/ce$a;->b:I

    invoke-virtual {p1, v4, v5, p0}, Lcom/yandex/mobile/ads/impl/ae;->a(JLwh1;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    :cond_4
    :goto_1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/ce$a;->c:Lcom/yandex/mobile/ads/impl/ce;

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/ce;->b(Lcom/yandex/mobile/ads/impl/ce;)J

    move-result-wide v4

    iput v2, p0, Lcom/yandex/mobile/ads/impl/ce$a;->b:I

    invoke-static {v4, v5, p0}, Lkotlinx/coroutines/DelayKt;->b(JLwh1;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_5
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/ce$a;->c:Lcom/yandex/mobile/ads/impl/ce;

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/ce;->f(Lcom/yandex/mobile/ads/impl/ce;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ce$a;->c:Lcom/yandex/mobile/ads/impl/ce;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/ce;->d(Lcom/yandex/mobile/ads/impl/ce;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

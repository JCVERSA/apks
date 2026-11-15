.class final Lcom/yandex/mobile/ads/impl/r30$b;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Ls74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/mobile/ads/impl/r30;->a(Lwh1;)Ljava/lang/Object;
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
    c = "com.monetization.ads.base.dns.DnsPrefetcher$prefetch$2$1"
    f = "DnsPrefetcher.kt"
    l = {
        0x22
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field b:I

.field final synthetic c:Lcom/yandex/mobile/ads/impl/r30;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/r30;Lwh1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/r30;",
            "Lwh1<",
            "-",
            "Lcom/yandex/mobile/ads/impl/r30$b;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/r30$b;->c:Lcom/yandex/mobile/ads/impl/r30;

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

    new-instance p1, Lcom/yandex/mobile/ads/impl/r30$b;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/r30$b;->c:Lcom/yandex/mobile/ads/impl/r30;

    invoke-direct {p1, p0, p2}, Lcom/yandex/mobile/ads/impl/r30$b;-><init>(Lcom/yandex/mobile/ads/impl/r30;Lwh1;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lnk1;

    check-cast p2, Lwh1;

    new-instance p1, Lcom/yandex/mobile/ads/impl/r30$b;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/r30$b;->c:Lcom/yandex/mobile/ads/impl/r30;

    invoke-direct {p1, p0, p2}, Lcom/yandex/mobile/ads/impl/r30$b;-><init>(Lcom/yandex/mobile/ads/impl/r30;Lwh1;)V

    sget-object p0, Lzfb;->a:Lzfb;

    invoke-virtual {p1, p0}, Lcom/yandex/mobile/ads/impl/r30$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/yandex/mobile/ads/impl/r30$b;->b:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/r30$b;->c:Lcom/yandex/mobile/ads/impl/r30;

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/r30;->a(Lcom/yandex/mobile/ads/impl/r30;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/sp0;->a([Ljava/lang/Object;)V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0

    :cond_2
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/r30$b;->c:Lcom/yandex/mobile/ads/impl/r30;

    iput v2, p0, Lcom/yandex/mobile/ads/impl/r30$b;->b:I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/yandex/mobile/ads/impl/s30;

    const/4 v3, 0x0

    invoke-direct {v2, v1, p1, v3}, Lcom/yandex/mobile/ads/impl/s30;-><init>(Lcom/yandex/mobile/ads/impl/r30;Ljava/util/List;Lwh1;)V

    const-wide/16 v3, 0x9c4

    invoke-static {v3, v4, v2, p0}, Lkotlinx/coroutines/TimeoutKt;->c(JLs74;Lwh1;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_3

    goto :goto_0

    :cond_3
    sget-object p0, Lzfb;->a:Lzfb;

    :goto_0
    if-ne p0, v0, :cond_4

    return-object v0

    :cond_4
    :goto_1
    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

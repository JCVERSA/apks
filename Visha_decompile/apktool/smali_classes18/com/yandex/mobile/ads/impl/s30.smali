.class final Lcom/yandex/mobile/ads/impl/s30;
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
    c = "com.monetization.ads.base.dns.DnsPrefetcher$prefetchUrlList$2"
    f = "DnsPrefetcher.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field private synthetic b:Ljava/lang/Object;

.field final synthetic c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic d:Lcom/yandex/mobile/ads/impl/r30;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/r30;Ljava/util/List;Lwh1;)V
    .locals 0

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/s30;->c:Ljava/util/List;

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/s30;->d:Lcom/yandex/mobile/ads/impl/r30;

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

    new-instance v0, Lcom/yandex/mobile/ads/impl/s30;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/s30;->c:Ljava/util/List;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/s30;->d:Lcom/yandex/mobile/ads/impl/r30;

    invoke-direct {v0, p0, v1, p2}, Lcom/yandex/mobile/ads/impl/s30;-><init>(Lcom/yandex/mobile/ads/impl/r30;Ljava/util/List;Lwh1;)V

    iput-object p1, v0, Lcom/yandex/mobile/ads/impl/s30;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lnk1;

    check-cast p2, Lwh1;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/mobile/ads/impl/s30;->create(Ljava/lang/Object;Lwh1;)Lwh1;

    move-result-object p0

    check-cast p0, Lcom/yandex/mobile/ads/impl/s30;

    sget-object p1, Lzfb;->a:Lzfb;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/s30;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/s30;->b:Ljava/lang/Object;

    check-cast p1, Lnk1;

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/s30;->c:Ljava/util/List;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/s30;->d:Lcom/yandex/mobile/ads/impl/r30;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v3, Lcom/yandex/mobile/ads/impl/s30$a;

    const/4 v1, 0x0

    invoke-direct {v3, p0, v0, v1}, Lcom/yandex/mobile/ads/impl/s30$a;-><init>(Lcom/yandex/mobile/ads/impl/r30;Ljava/lang/String;Lwh1;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcl0;->d(Lnk1;Lkotlin/coroutines/d;Lkotlinx/coroutines/CoroutineStart;Ls74;ILjava/lang/Object;)Lkotlinx/coroutines/j;

    goto :goto_0

    :cond_0
    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

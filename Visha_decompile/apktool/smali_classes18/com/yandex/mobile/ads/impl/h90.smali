.class final Lcom/yandex/mobile/ads/impl/h90;
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
    c = "com.monetization.ads.feed.ui.FeedAdapterInternal$observePagedData$1"
    f = "FeedAdapterInternal.kt"
    l = {
        0x42
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field b:I

.field private synthetic c:Ljava/lang/Object;

.field final synthetic d:Lcom/yandex/mobile/ads/impl/g90;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/g90;Lwh1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/g90;",
            "Lwh1<",
            "-",
            "Lcom/yandex/mobile/ads/impl/h90;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/h90;->d:Lcom/yandex/mobile/ads/impl/g90;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILwh1;)V

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

    new-instance v0, Lcom/yandex/mobile/ads/impl/h90;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/h90;->d:Lcom/yandex/mobile/ads/impl/g90;

    invoke-direct {v0, p0, p2}, Lcom/yandex/mobile/ads/impl/h90;-><init>(Lcom/yandex/mobile/ads/impl/g90;Lwh1;)V

    iput-object p1, v0, Lcom/yandex/mobile/ads/impl/h90;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lnk1;

    check-cast p2, Lwh1;

    new-instance v0, Lcom/yandex/mobile/ads/impl/h90;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/h90;->d:Lcom/yandex/mobile/ads/impl/g90;

    invoke-direct {v0, p0, p2}, Lcom/yandex/mobile/ads/impl/h90;-><init>(Lcom/yandex/mobile/ads/impl/g90;Lwh1;)V

    iput-object p1, v0, Lcom/yandex/mobile/ads/impl/h90;->c:Ljava/lang/Object;

    sget-object p0, Lzfb;->a:Lzfb;

    invoke-virtual {v0, p0}, Lcom/yandex/mobile/ads/impl/h90;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/yandex/mobile/ads/impl/h90;->b:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-eq v1, v2, :cond_0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    invoke-static {p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/h90;->c:Ljava/lang/Object;

    check-cast p1, Lnk1;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/h90;->d:Lcom/yandex/mobile/ads/impl/g90;

    invoke-static {v1}, Lcom/yandex/mobile/ads/impl/g90;->access$getFeedViewModel$p(Lcom/yandex/mobile/ads/impl/g90;)Lcom/yandex/mobile/ads/impl/na0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/na0;->c()Lgx9;

    move-result-object v1

    new-instance v3, Lcom/yandex/mobile/ads/impl/h90$a;

    iget-object v4, p0, Lcom/yandex/mobile/ads/impl/h90;->d:Lcom/yandex/mobile/ads/impl/g90;

    invoke-direct {v3, v4, p1}, Lcom/yandex/mobile/ads/impl/h90$a;-><init>(Lcom/yandex/mobile/ads/impl/g90;Lnk1;)V

    iput v2, p0, Lcom/yandex/mobile/ads/impl/h90;->b:I

    invoke-interface {v1, v3, p0}, Lkg9;->collect(Loz3;Lwh1;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0
.end method

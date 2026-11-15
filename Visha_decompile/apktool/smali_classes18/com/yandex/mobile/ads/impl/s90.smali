.class final Lcom/yandex/mobile/ads/impl/s90;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lu74;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lu74;"
    }
.end annotation

.annotation runtime Lnt1;
    c = "com.monetization.ads.feed.domain.FeedItemListUseCase$feedStateStateFlow$1"
    f = "FeedItemListUseCase.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field synthetic b:Lcom/yandex/mobile/ads/impl/ea0;

.field synthetic c:Ljava/util/List;


# direct methods
.method public constructor <init>(Lwh1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwh1<",
            "-",
            "Lcom/yandex/mobile/ads/impl/s90;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILwh1;)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/yandex/mobile/ads/impl/ea0;

    check-cast p2, Ljava/util/List;

    check-cast p3, Lwh1;

    new-instance p0, Lcom/yandex/mobile/ads/impl/s90;

    invoke-direct {p0, p3}, Lcom/yandex/mobile/ads/impl/s90;-><init>(Lwh1;)V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/s90;->b:Lcom/yandex/mobile/ads/impl/ea0;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/s90;->c:Ljava/util/List;

    sget-object p1, Lzfb;->a:Lzfb;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/s90;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/s90;->b:Lcom/yandex/mobile/ads/impl/ea0;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/s90;->c:Ljava/util/List;

    new-instance v0, Lcom/yandex/mobile/ads/impl/la0;

    invoke-direct {v0, p1, p0}, Lcom/yandex/mobile/ads/impl/la0;-><init>(Lcom/yandex/mobile/ads/impl/ea0;Ljava/util/List;)V

    return-object v0
.end method

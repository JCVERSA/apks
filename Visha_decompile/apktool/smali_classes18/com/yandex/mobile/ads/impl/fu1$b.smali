.class final Lcom/yandex/mobile/ads/impl/fu1$b;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Ls74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/mobile/ads/impl/fu1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.monetization.ads.base.bidder.SdkBidderTokenLoader$loadBidderToken$1$2"
    f = "SdkBidderTokenLoader.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic b:Lcom/yandex/mobile/ads/impl/at;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/at;Lwh1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/at;",
            "Lwh1<",
            "-",
            "Lcom/yandex/mobile/ads/impl/fu1$b;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/fu1$b;->b:Lcom/yandex/mobile/ads/impl/at;

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

    new-instance p1, Lcom/yandex/mobile/ads/impl/fu1$b;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/fu1$b;->b:Lcom/yandex/mobile/ads/impl/at;

    invoke-direct {p1, p0, p2}, Lcom/yandex/mobile/ads/impl/fu1$b;-><init>(Lcom/yandex/mobile/ads/impl/at;Lwh1;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lnk1;

    check-cast p2, Lwh1;

    new-instance p1, Lcom/yandex/mobile/ads/impl/fu1$b;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/fu1$b;->b:Lcom/yandex/mobile/ads/impl/at;

    invoke-direct {p1, p0, p2}, Lcom/yandex/mobile/ads/impl/fu1$b;-><init>(Lcom/yandex/mobile/ads/impl/at;Lwh1;)V

    sget-object p0, Lzfb;->a:Lzfb;

    invoke-virtual {p1, p0}, Lcom/yandex/mobile/ads/impl/fu1$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/fu1$b;->b:Lcom/yandex/mobile/ads/impl/at;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/at;->a()V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

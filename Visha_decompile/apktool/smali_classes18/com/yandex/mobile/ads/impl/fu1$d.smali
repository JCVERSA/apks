.class final Lcom/yandex/mobile/ads/impl/fu1$d;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Le74;


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
        "Le74;"
    }
.end annotation

.annotation runtime Lnt1;
    c = "com.monetization.ads.base.bidder.SdkBidderTokenLoader$loadBidderToken$1$tokenResult$1$stubReason$1$2"
    f = "SdkBidderTokenLoader.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# direct methods
.method public constructor <init>(Lwh1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwh1<",
            "-",
            "Lcom/yandex/mobile/ads/impl/fu1$d;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILwh1;)V

    return-void
.end method


# virtual methods
.method public final create(Lwh1;)Lwh1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwh1<",
            "*>;)",
            "Lwh1<",
            "Lzfb;",
            ">;"
        }
    .end annotation

    new-instance p0, Lcom/yandex/mobile/ads/impl/fu1$d;

    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/fu1$d;-><init>(Lwh1;)V

    return-object p0
.end method

.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lwh1;

    new-instance p0, Lcom/yandex/mobile/ads/impl/fu1$d;

    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/fu1$d;-><init>(Lwh1;)V

    sget-object p0, Lzfb;->a:Lzfb;

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    invoke-static {p0}, Lkotlin/c;->b(Ljava/lang/Object;)V

    sget-object p0, Lcom/yandex/mobile/ads/impl/hu1;->d:Lcom/yandex/mobile/ads/impl/hu1;

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    sget-object p0, Lcom/yandex/mobile/ads/impl/hu1;->d:Lcom/yandex/mobile/ads/impl/hu1;

    return-object p0
.end method

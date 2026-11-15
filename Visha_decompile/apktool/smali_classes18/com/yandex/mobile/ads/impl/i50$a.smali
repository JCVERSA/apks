.class final Lcom/yandex/mobile/ads/impl/i50$a;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/mobile/ads/impl/i50;->a(Landroid/content/Context;Lwh1;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lnt1;
    c = "com.monetization.ads.base.mediation.bidding.EncodedHeaderBiddingDataLoader"
    f = "EncodedHeaderBiddingDataLoader.kt"
    l = {
        0x23,
        0x2c
    }
    m = "loadEncodedBiddingData"
.end annotation


# instance fields
.field b:Lcom/yandex/mobile/ads/impl/i50;

.field synthetic c:Ljava/lang/Object;

.field final synthetic d:Lcom/yandex/mobile/ads/impl/i50;

.field e:I


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/i50;Lwh1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/i50;",
            "Lwh1<",
            "-",
            "Lcom/yandex/mobile/ads/impl/i50$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/i50$a;->d:Lcom/yandex/mobile/ads/impl/i50;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lwh1;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/i50$a;->c:Ljava/lang/Object;

    iget p1, p0, Lcom/yandex/mobile/ads/impl/i50$a;->e:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/yandex/mobile/ads/impl/i50$a;->e:I

    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/i50$a;->d:Lcom/yandex/mobile/ads/impl/i50;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lcom/yandex/mobile/ads/impl/i50;->a(Landroid/content/Context;Lwh1;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

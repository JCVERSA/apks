.class final Lcom/yandex/mobile/ads/impl/nc1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# annotations
.annotation runtime Lnt1;
    c = "com.monetization.ads.nativeads.creator.videowrapper.NativeWrapperVideoLoader"
    f = "NativeWrapperVideoLoader.kt"
    l = {
        0x36
    }
    m = "loadWrapperVideoAdsInfo"
.end annotation


# instance fields
.field b:Lcom/yandex/mobile/ads/impl/pc1;

.field synthetic c:Ljava/lang/Object;

.field final synthetic d:Lcom/yandex/mobile/ads/impl/pc1;

.field e:I


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/pc1;Lwh1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/pc1;",
            "Lwh1<",
            "-",
            "Lcom/yandex/mobile/ads/impl/nc1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/nc1;->d:Lcom/yandex/mobile/ads/impl/pc1;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lwh1;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/nc1;->c:Ljava/lang/Object;

    iget p1, p0, Lcom/yandex/mobile/ads/impl/nc1;->e:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/yandex/mobile/ads/impl/nc1;->e:I

    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/nc1;->d:Lcom/yandex/mobile/ads/impl/pc1;

    const/4 v0, 0x0

    invoke-static {p1, v0, p0}, Lcom/yandex/mobile/ads/impl/pc1;->a(Lcom/yandex/mobile/ads/impl/pc1;Ljava/util/List;Lwh1;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

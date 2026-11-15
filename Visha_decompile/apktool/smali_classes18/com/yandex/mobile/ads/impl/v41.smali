.class final Lcom/yandex/mobile/ads/impl/v41;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# annotations
.annotation runtime Lnt1;
    c = "com.monetization.ads.nativeads.creator.videowrapper.NativeAdBlockVideoWrapperLoader"
    f = "NativeAdBlockVideoWrapperLoader.kt"
    l = {
        0x38
    }
    m = "loadVideoWrapperAsset"
.end annotation


# instance fields
.field b:Lcom/yandex/mobile/ads/impl/ig;

.field synthetic c:Ljava/lang/Object;

.field final synthetic d:Lcom/yandex/mobile/ads/impl/w41;

.field e:I


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/w41;Lwh1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/w41;",
            "Lwh1<",
            "-",
            "Lcom/yandex/mobile/ads/impl/v41;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/v41;->d:Lcom/yandex/mobile/ads/impl/w41;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lwh1;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/v41;->c:Ljava/lang/Object;

    iget p1, p0, Lcom/yandex/mobile/ads/impl/v41;->e:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/yandex/mobile/ads/impl/v41;->e:I

    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/v41;->d:Lcom/yandex/mobile/ads/impl/w41;

    const/4 v0, 0x0

    invoke-static {p1, v0, p0}, Lcom/yandex/mobile/ads/impl/w41;->a(Lcom/yandex/mobile/ads/impl/w41;Lcom/yandex/mobile/ads/impl/ig;Lwh1;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.class final Lcom/yandex/mobile/ads/impl/l7$b;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/mobile/ads/impl/l7;->a(Ljava/lang/Object;Lcom/yandex/mobile/ads/impl/o8;Lcom/monetization/ads/mediation/base/model/MediatedAdObjectInfo;Lwh1;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lnt1;
    c = "com.monetization.ads.base.quality.AdQualityVerifierController"
    f = "AdQualityVerifierController.kt"
    l = {
        0x2a
    }
    m = "verifyAd-BWLJW6A"
.end annotation


# instance fields
.field b:Lcom/yandex/mobile/ads/impl/l7;

.field synthetic c:Ljava/lang/Object;

.field final synthetic d:Lcom/yandex/mobile/ads/impl/l7;

.field e:I


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/l7;Lwh1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/l7;",
            "Lwh1<",
            "-",
            "Lcom/yandex/mobile/ads/impl/l7$b;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/l7$b;->d:Lcom/yandex/mobile/ads/impl/l7;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lwh1;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/l7$b;->c:Ljava/lang/Object;

    iget p1, p0, Lcom/yandex/mobile/ads/impl/l7$b;->e:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/yandex/mobile/ads/impl/l7$b;->e:I

    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/l7$b;->d:Lcom/yandex/mobile/ads/impl/l7;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, v0, p0}, Lcom/yandex/mobile/ads/impl/l7;->a(Ljava/lang/Object;Lcom/yandex/mobile/ads/impl/o8;Lcom/monetization/ads/mediation/base/model/MediatedAdObjectInfo;Lwh1;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    invoke-static {p0}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    move-result-object p0

    return-object p0
.end method

.class final Lcom/yandex/mobile/ads/impl/y6$a;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/mobile/ads/impl/y6;->a(Landroid/content/Context;Lcom/monetization/ads/quality/base/model/configuration/AdQualityVerificationAdConfiguration;Lwh1;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lnt1;
    c = "com.monetization.ads.base.quality.policy.AdQualitySdkVerifierWithPolicy"
    f = "AdQualitySdkVerifierWithPolicy.kt"
    l = {
        0x52
    }
    m = "verifyAdWithPolicy"
.end annotation


# instance fields
.field synthetic b:Ljava/lang/Object;

.field final synthetic c:Lcom/yandex/mobile/ads/impl/y6;

.field d:I


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/y6;Lwh1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/y6;",
            "Lwh1<",
            "-",
            "Lcom/yandex/mobile/ads/impl/y6$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/y6$a;->c:Lcom/yandex/mobile/ads/impl/y6;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lwh1;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/y6$a;->b:Ljava/lang/Object;

    iget p1, p0, Lcom/yandex/mobile/ads/impl/y6$a;->d:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/yandex/mobile/ads/impl/y6$a;->d:I

    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/y6$a;->c:Lcom/yandex/mobile/ads/impl/y6;

    invoke-static {p1, p0}, Lcom/yandex/mobile/ads/impl/y6;->a(Lcom/yandex/mobile/ads/impl/y6;Lwh1;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

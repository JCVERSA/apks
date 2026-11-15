.class final Lcom/yandex/mobile/ads/impl/qv1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# annotations
.annotation runtime Lnt1;
    c = "com.monetization.ads.core.initializer.SdkInitializer"
    f = "SdkInitializer.kt"
    l = {
        0xce
    }
    m = "loadSdkConfiguration"
.end annotation


# instance fields
.field b:Lcom/yandex/mobile/ads/impl/g5;

.field c:Lcom/yandex/mobile/ads/impl/f5;

.field synthetic d:Ljava/lang/Object;

.field final synthetic e:Lcom/yandex/mobile/ads/impl/ov1;

.field f:I


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/ov1;Lwh1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/ov1;",
            "Lwh1<",
            "-",
            "Lcom/yandex/mobile/ads/impl/qv1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/qv1;->e:Lcom/yandex/mobile/ads/impl/ov1;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lwh1;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/qv1;->d:Ljava/lang/Object;

    iget p1, p0, Lcom/yandex/mobile/ads/impl/qv1;->f:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/yandex/mobile/ads/impl/qv1;->f:I

    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/qv1;->e:Lcom/yandex/mobile/ads/impl/ov1;

    const/4 v0, 0x0

    invoke-static {p1, v0, p0}, Lcom/yandex/mobile/ads/impl/ov1;->a(Lcom/yandex/mobile/ads/impl/ov1;Lcom/yandex/mobile/ads/impl/gl0;Lwh1;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

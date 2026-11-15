.class final Lcom/yandex/mobile/ads/impl/ke0$a;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/mobile/ads/impl/ke0;->a(Ljava/lang/String;ZLwh1;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lnt1;
    c = "com.yandex.mobile.ads.features.debugpanel.domain.GetAdUnitDataUseCase"
    f = "GetAdUnitDataUseCase.kt"
    l = {
        0x11
    }
    m = "invoke"
.end annotation


# instance fields
.field b:Lcom/yandex/mobile/ads/impl/ke0;

.field c:Ljava/lang/String;

.field synthetic d:Ljava/lang/Object;

.field final synthetic e:Lcom/yandex/mobile/ads/impl/ke0;

.field f:I


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/ke0;Lwh1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/ke0;",
            "Lwh1<",
            "-",
            "Lcom/yandex/mobile/ads/impl/ke0$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ke0$a;->e:Lcom/yandex/mobile/ads/impl/ke0;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lwh1;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ke0$a;->d:Ljava/lang/Object;

    iget p1, p0, Lcom/yandex/mobile/ads/impl/ke0$a;->f:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/yandex/mobile/ads/impl/ke0$a;->f:I

    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/ke0$a;->e:Lcom/yandex/mobile/ads/impl/ke0;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p0}, Lcom/yandex/mobile/ads/impl/ke0;->a(Ljava/lang/String;ZLwh1;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

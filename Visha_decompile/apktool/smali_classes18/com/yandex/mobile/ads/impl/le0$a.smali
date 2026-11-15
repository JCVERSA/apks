.class final Lcom/yandex/mobile/ads/impl/le0$a;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/mobile/ads/impl/le0;->a(ZLwh1;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lnt1;
    c = "com.yandex.mobile.ads.features.debugpanel.domain.GetAdUnitsDataUseCase"
    f = "GetAdUnitsDataUseCase.kt"
    l = {
        0xc
    }
    m = "invoke"
.end annotation


# instance fields
.field synthetic b:Ljava/lang/Object;

.field final synthetic c:Lcom/yandex/mobile/ads/impl/le0;

.field d:I


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/le0;Lwh1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/le0;",
            "Lwh1<",
            "-",
            "Lcom/yandex/mobile/ads/impl/le0$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/le0$a;->c:Lcom/yandex/mobile/ads/impl/le0;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lwh1;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/le0$a;->b:Ljava/lang/Object;

    iget p1, p0, Lcom/yandex/mobile/ads/impl/le0$a;->d:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/yandex/mobile/ads/impl/le0$a;->d:I

    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/le0$a;->c:Lcom/yandex/mobile/ads/impl/le0;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lcom/yandex/mobile/ads/impl/le0;->a(ZLwh1;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

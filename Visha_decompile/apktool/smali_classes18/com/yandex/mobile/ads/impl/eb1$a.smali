.class final Lcom/yandex/mobile/ads/impl/eb1$a;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/mobile/ads/impl/eb1;->a(ZLandroid/content/Context;Lcom/yandex/mobile/ads/impl/s41;Lcom/yandex/mobile/ads/impl/dw;Lwh1;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lnt1;
    c = "com.monetization.ads.nativeads.video.cache.NativeVideoLoadController"
    f = "NativeVideoLoadController.kt"
    l = {
        0x26,
        0x2c
    }
    m = "loadVideo"
.end annotation


# instance fields
.field b:Ljava/lang/Object;

.field c:Landroid/content/Context;

.field d:Lcom/yandex/mobile/ads/impl/dw;

.field e:Z

.field synthetic f:Ljava/lang/Object;

.field final synthetic g:Lcom/yandex/mobile/ads/impl/eb1;

.field h:I


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/eb1;Lwh1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/eb1;",
            "Lwh1<",
            "-",
            "Lcom/yandex/mobile/ads/impl/eb1$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/eb1$a;->g:Lcom/yandex/mobile/ads/impl/eb1;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lwh1;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/eb1$a;->f:Ljava/lang/Object;

    iget p1, p0, Lcom/yandex/mobile/ads/impl/eb1$a;->h:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/yandex/mobile/ads/impl/eb1$a;->h:I

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/eb1$a;->g:Lcom/yandex/mobile/ads/impl/eb1;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/yandex/mobile/ads/impl/eb1;->a(ZLandroid/content/Context;Lcom/yandex/mobile/ads/impl/s41;Lcom/yandex/mobile/ads/impl/dw;Lwh1;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

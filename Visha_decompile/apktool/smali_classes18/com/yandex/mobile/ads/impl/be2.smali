.class public final Lcom/yandex/mobile/ads/impl/be2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/yd2;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/ya1;Lcom/yandex/mobile/ads/impl/qf1;)V
    .locals 6

    .line 1
    new-instance v5, Lcom/yandex/mobile/ads/impl/yd2;

    invoke-direct {v5, p1, p2, p3, p4}, Lcom/yandex/mobile/ads/impl/yd2;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/nd2;Lcom/yandex/mobile/ads/impl/ia2;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 2
    invoke-direct/range {v0 .. v5}, Lcom/yandex/mobile/ads/impl/be2;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/ya1;Lcom/yandex/mobile/ads/impl/qf1;Lcom/yandex/mobile/ads/impl/yd2;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/ya1;Lcom/yandex/mobile/ads/impl/qf1;Lcom/yandex/mobile/ads/impl/yd2;)V
    .locals 1

    .line 3
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "adConfiguration"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "reportParametersProvider"

    invoke-static {p3, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "requestConfigurationParametersProvider"

    invoke-static {p4, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "videoAdsResponseHandler"

    invoke-static {p5, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/be2;->a:Lcom/yandex/mobile/ads/impl/yd2;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/ArrayList;Lwh1;)Ljava/lang/Object;
    .locals 3

    new-instance v0, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {p2}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt;->c(Lwh1;)Lwh1;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lwh1;I)V

    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    new-instance v1, Lcom/yandex/mobile/ads/impl/ae2;

    invoke-direct {v1, v0}, Lcom/yandex/mobile/ads/impl/ae2;-><init>(Lkotlinx/coroutines/CancellableContinuationImpl;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/be2;->a:Lcom/yandex/mobile/ads/impl/yd2;

    invoke-virtual {p0, p1, v1}, Lcom/yandex/mobile/ads/impl/yd2;->a(Ljava/util/List;Lcom/yandex/mobile/ads/impl/dq1;)V

    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    invoke-static {p2}, Lpt1;->c(Lwh1;)V

    :cond_0
    return-object p0
.end method

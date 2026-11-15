.class public final Lcom/yandex/mobile/ads/impl/wv1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/ov1;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/en2;Lnk1;Lcom/yandex/mobile/ads/impl/g5;Lcom/yandex/mobile/ads/impl/p50;Lcom/yandex/mobile/ads/impl/jc;)V
    .locals 9

    .line 1
    new-instance v8, Lcom/yandex/mobile/ads/impl/ov1;

    const v7, 0x1fffc0

    move-object v0, v8

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/yandex/mobile/ads/impl/ov1;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/bv1;Lnk1;Lcom/yandex/mobile/ads/impl/g5;Lcom/yandex/mobile/ads/impl/p50;Lcom/yandex/mobile/ads/impl/jc;I)V

    move-object v0, p0

    move-object v7, v8

    .line 2
    invoke-direct/range {v0 .. v7}, Lcom/yandex/mobile/ads/impl/wv1;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/en2;Lnk1;Lcom/yandex/mobile/ads/impl/g5;Lcom/yandex/mobile/ads/impl/p50;Lcom/yandex/mobile/ads/impl/jc;Lcom/yandex/mobile/ads/impl/ov1;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/en2;Lnk1;Lcom/yandex/mobile/ads/impl/g5;Lcom/yandex/mobile/ads/impl/p50;Lcom/yandex/mobile/ads/impl/jc;Lcom/yandex/mobile/ads/impl/ov1;)V
    .locals 1

    .line 3
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "sdkEnvironmentModule"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "coroutineScope"

    invoke-static {p3, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "adLoadingPhasesManager"

    invoke-static {p4, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "environmentController"

    invoke-static {p5, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "advertisingConfiguration"

    invoke-static {p6, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "sdkInitializer"

    invoke-static {p7, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p7, p0, Lcom/yandex/mobile/ads/impl/wv1;->a:Lcom/yandex/mobile/ads/impl/ov1;

    return-void
.end method

.method public static final synthetic a(Lcom/yandex/mobile/ads/impl/wv1;)Lcom/yandex/mobile/ads/impl/ov1;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/wv1;->a:Lcom/yandex/mobile/ads/impl/ov1;

    return-object p0
.end method


# virtual methods
.method public final a(Lwh1;)Ljava/lang/Object;
    .locals 4

    .line 2
    sget-object v0, Lcom/yandex/mobile/ads/impl/gl0;->f:Lcom/yandex/mobile/ads/impl/gl0;

    .line 3
    new-instance v1, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {p1}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt;->c(Lwh1;)Lwh1;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lwh1;I)V

    .line 4
    invoke-virtual {v1}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 5
    new-instance v2, Lcom/yandex/mobile/ads/impl/uv1;

    invoke-direct {v2, p0}, Lcom/yandex/mobile/ads/impl/uv1;-><init>(Lcom/yandex/mobile/ads/impl/wv1;)V

    invoke-virtual {v1, v2}, Lkotlinx/coroutines/CancellableContinuationImpl;->invokeOnCancellation(Le74;)V

    .line 6
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/wv1;->a:Lcom/yandex/mobile/ads/impl/ov1;

    .line 7
    new-instance v2, Lcom/yandex/mobile/ads/impl/vv1;

    invoke-direct {v2, v1}, Lcom/yandex/mobile/ads/impl/vv1;-><init>(Lkotlinx/coroutines/CancellableContinuationImpl;)V

    .line 8
    invoke-virtual {p0, v0, v2}, Lcom/yandex/mobile/ads/impl/ov1;->a(Lcom/yandex/mobile/ads/impl/gl0;Lcom/yandex/mobile/ads/impl/ov1$a;)V

    .line 9
    invoke-virtual {v1}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object p0

    .line 10
    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    move-result-object v0

    if-ne p0, v0, :cond_0

    invoke-static {p1}, Lpt1;->c(Lwh1;)V

    :cond_0
    return-object p0
.end method

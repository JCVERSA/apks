.class public final Lcom/yandex/mobile/ads/impl/i91;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/g5;

.field private final b:Lcom/yandex/mobile/ads/impl/bh;

.field private final c:Lcom/yandex/mobile/ads/impl/ck0;

.field private final d:Lcom/yandex/mobile/ads/impl/kj0;

.field private final e:Lcom/yandex/mobile/ads/impl/hk0;

.field private final f:Le74;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le74;"
        }
    .end annotation
.end field


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/g5;)V
    .locals 8

    .line 1
    new-instance v3, Lcom/yandex/mobile/ads/impl/bh;

    invoke-direct {v3}, Lcom/yandex/mobile/ads/impl/bh;-><init>()V

    .line 2
    new-instance v4, Lcom/yandex/mobile/ads/impl/ck0;

    invoke-direct {v4}, Lcom/yandex/mobile/ads/impl/ck0;-><init>()V

    .line 3
    new-instance v5, Lcom/yandex/mobile/ads/impl/kj0;

    invoke-direct {v5, p1}, Lcom/yandex/mobile/ads/impl/kj0;-><init>(Landroid/content/Context;)V

    .line 4
    new-instance v6, Lcom/yandex/mobile/ads/impl/hk0;

    invoke-direct {v6}, Lcom/yandex/mobile/ads/impl/hk0;-><init>()V

    .line 5
    sget-object v7, Lcom/yandex/mobile/ads/impl/f91;->b:Lcom/yandex/mobile/ads/impl/f91;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 6
    invoke-direct/range {v0 .. v7}, Lcom/yandex/mobile/ads/impl/i91;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/g5;Lcom/yandex/mobile/ads/impl/bh;Lcom/yandex/mobile/ads/impl/ck0;Lcom/yandex/mobile/ads/impl/kj0;Lcom/yandex/mobile/ads/impl/hk0;Le74;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/g5;Lcom/yandex/mobile/ads/impl/bh;Lcom/yandex/mobile/ads/impl/ck0;Lcom/yandex/mobile/ads/impl/kj0;Lcom/yandex/mobile/ads/impl/hk0;Le74;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/yandex/mobile/ads/impl/g5;",
            "Lcom/yandex/mobile/ads/impl/bh;",
            "Lcom/yandex/mobile/ads/impl/ck0;",
            "Lcom/yandex/mobile/ads/impl/kj0;",
            "Lcom/yandex/mobile/ads/impl/hk0;",
            "Le74;",
            ")V"
        }
    .end annotation

    .line 7
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "adLoadingPhasesManager"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "assetsFilter"

    invoke-static {p3, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "imageValuesFilter"

    invoke-static {p4, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "imageLoadManager"

    invoke-static {p5, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "imagesForPreloadingProvider"

    invoke-static {p6, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "previewPreloadingFactory"

    invoke-static {p7, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/i91;->a:Lcom/yandex/mobile/ads/impl/g5;

    .line 10
    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/i91;->b:Lcom/yandex/mobile/ads/impl/bh;

    .line 11
    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/i91;->c:Lcom/yandex/mobile/ads/impl/ck0;

    .line 12
    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/i91;->d:Lcom/yandex/mobile/ads/impl/kj0;

    .line 13
    iput-object p6, p0, Lcom/yandex/mobile/ads/impl/i91;->e:Lcom/yandex/mobile/ads/impl/hk0;

    .line 14
    iput-object p7, p0, Lcom/yandex/mobile/ads/impl/i91;->f:Le74;

    return-void
.end method

.method public static final synthetic a(Lcom/yandex/mobile/ads/impl/i91;)Lcom/yandex/mobile/ads/impl/g5;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/i91;->a:Lcom/yandex/mobile/ads/impl/g5;

    return-object p0
.end method

.method public static final synthetic b(Lcom/yandex/mobile/ads/impl/i91;)Lcom/yandex/mobile/ads/impl/bh;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/i91;->b:Lcom/yandex/mobile/ads/impl/bh;

    return-object p0
.end method

.method public static final synthetic c(Lcom/yandex/mobile/ads/impl/i91;)Lcom/yandex/mobile/ads/impl/ck0;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/i91;->c:Lcom/yandex/mobile/ads/impl/ck0;

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/s41;Lcom/yandex/mobile/ads/impl/sj0;Lwh1;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/s41;",
            "Lcom/yandex/mobile/ads/impl/sj0;",
            "Lwh1<",
            "-",
            "Lzfb;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/i91;->f:Le74;

    invoke-interface {v0, p2}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/impl/rj0;

    .line 3
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/i91;->e:Lcom/yandex/mobile/ads/impl/hk0;

    invoke-virtual {v1, p1}, Lcom/yandex/mobile/ads/impl/hk0;->a(Lcom/yandex/mobile/ads/impl/s41;)Lcom/yandex/mobile/ads/impl/hk0$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/hk0$a;->a()Ljava/util/Set;

    move-result-object v2

    .line 4
    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/hk0$a;->b()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/hk0$a;->c()Ljava/util/Set;

    move-result-object v1

    .line 5
    invoke-virtual {v0, v3}, Lcom/yandex/mobile/ads/impl/rj0;->a(Ljava/util/Set;)V

    .line 6
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/s41;->b()Lcom/yandex/mobile/ads/impl/o8;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/o8;->E()Ljava/lang/String;

    move-result-object v0

    .line 7
    sget-object v3, Lcom/yandex/mobile/ads/impl/c91;->d:Lcom/yandex/mobile/ads/impl/c91;

    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/c91;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/i91;->d:Lcom/yandex/mobile/ads/impl/kj0;

    new-instance v3, Lcom/yandex/mobile/ads/impl/h91;

    invoke-direct {v3, p2}, Lcom/yandex/mobile/ads/impl/h91;-><init>(Lcom/yandex/mobile/ads/impl/sj0;)V

    invoke-virtual {v0, v1, v3}, Lcom/yandex/mobile/ads/impl/kj0;->a(Ljava/util/Set;Lcom/yandex/mobile/ads/impl/gk0;)V

    .line 9
    :cond_0
    new-instance v0, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {p3}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt;->c(Lwh1;)Lwh1;

    move-result-object v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lwh1;I)V

    .line 10
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 11
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 12
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->isActive()Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    sget-object p0, Lzfb;->a:Lzfb;

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->resumeWith(Ljava/lang/Object;)V

    goto :goto_0

    .line 13
    :cond_1
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/i91;->a:Lcom/yandex/mobile/ads/impl/g5;

    .line 14
    sget-object v3, Lcom/yandex/mobile/ads/impl/f5;->q:Lcom/yandex/mobile/ads/impl/f5;

    .line 15
    const-string v4, "adLoadingPhaseType"

    const/4 v5, 0x0

    invoke-static {v1, v3, v4, v3, v5}, Lcom/yandex/mobile/ads/impl/bk;->a(Lcom/yandex/mobile/ads/impl/g5;Lcom/yandex/mobile/ads/impl/f5;Ljava/lang/String;Lcom/yandex/mobile/ads/impl/f5;Lcom/yandex/mobile/ads/impl/ha2;)V

    .line 16
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/i91;->d:Lcom/yandex/mobile/ads/impl/kj0;

    .line 17
    new-instance v3, Lcom/yandex/mobile/ads/impl/g91;

    invoke-direct {v3, p0, p1, p2, v0}, Lcom/yandex/mobile/ads/impl/g91;-><init>(Lcom/yandex/mobile/ads/impl/i91;Lcom/yandex/mobile/ads/impl/s41;Lcom/yandex/mobile/ads/impl/sj0;Lkotlinx/coroutines/CancellableContinuationImpl;)V

    invoke-virtual {v1, v2, v3}, Lcom/yandex/mobile/ads/impl/kj0;->a(Ljava/util/Set;Lcom/yandex/mobile/ads/impl/gk0;)V

    .line 18
    :cond_2
    :goto_0
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object p0

    .line 19
    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_3

    invoke-static {p3}, Lpt1;->c(Lwh1;)V

    :cond_3
    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_4

    goto :goto_1

    .line 20
    :cond_4
    sget-object p0, Lzfb;->a:Lzfb;

    .line 21
    :goto_1
    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_5

    return-object p0

    :cond_5
    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

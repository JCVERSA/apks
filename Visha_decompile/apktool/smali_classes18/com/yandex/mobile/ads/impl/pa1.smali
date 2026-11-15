.class public final Lcom/yandex/mobile/ads/impl/pa1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/bb2;

.field private final b:Lcom/yandex/mobile/ads/impl/oa1;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/db2;)V
    .locals 2

    .line 1
    invoke-interface {p2, p1}, Lcom/yandex/mobile/ads/impl/db2;->a(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/kn2;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/yandex/mobile/ads/impl/oa1;

    invoke-direct {v1}, Lcom/yandex/mobile/ads/impl/oa1;-><init>()V

    .line 3
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/yandex/mobile/ads/impl/pa1;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/db2;Lcom/yandex/mobile/ads/impl/bb2;Lcom/yandex/mobile/ads/impl/oa1;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/db2;Lcom/yandex/mobile/ads/impl/bb2;Lcom/yandex/mobile/ads/impl/oa1;)V
    .locals 1

    .line 4
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "verificationResourcesLoaderProvider"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "verificationPresenceValidator"

    invoke-static {p4, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/pa1;->a:Lcom/yandex/mobile/ads/impl/bb2;

    .line 7
    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/pa1;->b:Lcom/yandex/mobile/ads/impl/oa1;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/s41;Lwh1;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/s41;",
            "Lwh1<",
            "-",
            "Lzfb;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    new-instance v0, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {p2}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt;->c(Lwh1;)Lwh1;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lwh1;I)V

    .line 3
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 4
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/pa1;->a:Lcom/yandex/mobile/ads/impl/bb2;

    if-eqz v1, :cond_0

    .line 5
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/pa1;->b:Lcom/yandex/mobile/ads/impl/oa1;

    .line 6
    invoke-virtual {v1, p1}, Lcom/yandex/mobile/ads/impl/oa1;->a(Lcom/yandex/mobile/ads/impl/s41;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 7
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/pa1;->a:Lcom/yandex/mobile/ads/impl/bb2;

    .line 8
    new-instance p1, Lcom/yandex/mobile/ads/impl/pa1$a;

    invoke-direct {p1, v0}, Lcom/yandex/mobile/ads/impl/pa1$a;-><init>(Lkotlinx/coroutines/CancellableContinuationImpl;)V

    invoke-interface {p0, p1}, Lcom/yandex/mobile/ads/impl/bb2;->a(Lcom/yandex/mobile/ads/impl/cb2;)V

    goto :goto_0

    .line 9
    :cond_0
    sget-object p0, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    sget-object p0, Lzfb;->a:Lzfb;

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->resumeWith(Ljava/lang/Object;)V

    .line 10
    :goto_0
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object p0

    .line 11
    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_1

    invoke-static {p2}, Lpt1;->c(Lwh1;)V

    :cond_1
    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_2

    return-object p0

    .line 12
    :cond_2
    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method public final a()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/pa1;->a:Lcom/yandex/mobile/ads/impl/bb2;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/bb2;->a()V

    :cond_0
    return-void
.end method

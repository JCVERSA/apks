.class public final Lcom/yandex/mobile/ads/impl/kc1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/kc1$a;,
        Lcom/yandex/mobile/ads/impl/kc1$b;
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/g5;

.field private final b:Lcom/yandex/mobile/ads/impl/uw0;

.field private final c:Lcom/yandex/mobile/ads/impl/c31;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/g5;)V
    .locals 1

    const-string v0, "adLoadingPhasesManager"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/kc1;->a:Lcom/yandex/mobile/ads/impl/g5;

    new-instance p1, Lcom/yandex/mobile/ads/impl/uw0;

    invoke-direct {p1}, Lcom/yandex/mobile/ads/impl/uw0;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/kc1;->b:Lcom/yandex/mobile/ads/impl/uw0;

    new-instance p1, Lcom/yandex/mobile/ads/impl/c31;

    invoke-direct {p1}, Lcom/yandex/mobile/ads/impl/c31;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/kc1;->c:Lcom/yandex/mobile/ads/impl/c31;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/s41;Lwh1;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/yandex/mobile/ads/impl/s41;",
            "Lwh1<",
            "-",
            "Lzfb;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v0, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {p3}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt;->c(Lwh1;)Lwh1;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lwh1;I)V

    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/kc1;->b:Lcom/yandex/mobile/ads/impl/uw0;

    invoke-virtual {v1, p2}, Lcom/yandex/mobile/ads/impl/uw0;->a(Lcom/yandex/mobile/ads/impl/s41;)Ljava/util/Set;

    move-result-object p2

    sget v1, Lcom/yandex/mobile/ads/impl/pw1;->l:I

    invoke-static {}, Lcom/yandex/mobile/ads/impl/pw1$a;->a()Lcom/yandex/mobile/ads/impl/pw1;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/yandex/mobile/ads/impl/pw1;->a(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/ju1;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/ju1;->D()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/oa;->a(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_2

    :cond_1
    new-instance v1, Lcom/yandex/mobile/ads/impl/kc1$b;

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/kc1;->a:Lcom/yandex/mobile/ads/impl/g5;

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v3

    new-instance v4, Lcom/yandex/mobile/ads/impl/kc1$c;

    invoke-direct {v4, v0}, Lcom/yandex/mobile/ads/impl/kc1$c;-><init>(Lkotlinx/coroutines/CancellableContinuationImpl;)V

    invoke-direct {v1, v2, v3, v4}, Lcom/yandex/mobile/ads/impl/kc1$b;-><init>(Lcom/yandex/mobile/ads/impl/g5;ILcom/yandex/mobile/ads/impl/kc1$c;)V

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/kc1;->a:Lcom/yandex/mobile/ads/impl/g5;

    sget-object v3, Lcom/yandex/mobile/ads/impl/f5;->s:Lcom/yandex/mobile/ads/impl/f5;

    const-string v4, "adLoadingPhaseType"

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v3, v5}, Lcom/yandex/mobile/ads/impl/bk;->a(Lcom/yandex/mobile/ads/impl/g5;Lcom/yandex/mobile/ads/impl/f5;Ljava/lang/String;Lcom/yandex/mobile/ads/impl/f5;Lcom/yandex/mobile/ads/impl/ha2;)V

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yandex/mobile/ads/impl/wu0;

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/kc1;->c:Lcom/yandex/mobile/ads/impl/c31;

    invoke-virtual {v3, p1, v2, v1}, Lcom/yandex/mobile/ads/impl/c31;->a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/wu0;Lcom/yandex/mobile/ads/impl/c31$a;)V

    goto :goto_1

    :cond_2
    :goto_2
    sget-object p0, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    sget-object p0, Lzfb;->a:Lzfb;

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->resumeWith(Ljava/lang/Object;)V

    :cond_3
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_4

    invoke-static {p3}, Lpt1;->c(Lwh1;)V

    :cond_4
    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_5

    return-object p0

    :cond_5
    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

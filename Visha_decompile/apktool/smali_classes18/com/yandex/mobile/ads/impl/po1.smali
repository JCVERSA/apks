.class public final Lcom/yandex/mobile/ads/impl/po1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/oo1;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/yandex/mobile/ads/impl/hq1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/hq1<",
            "Lcom/yandex/mobile/ads/impl/rx;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/yandex/mobile/ads/impl/jy;

.field private final d:Lcom/yandex/mobile/ads/impl/ol0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/hq1;Lcom/yandex/mobile/ads/impl/jy;Lcom/yandex/mobile/ads/impl/ol0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/yandex/mobile/ads/impl/hq1<",
            "Lcom/yandex/mobile/ads/impl/rx;",
            ">;",
            "Lcom/yandex/mobile/ads/impl/jy;",
            "Lcom/yandex/mobile/ads/impl/ol0;",
            ")V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestPolicy"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "urlConfigurator"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "responseListenerCreator"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/po1;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/po1;->b:Lcom/yandex/mobile/ads/impl/hq1;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/po1;->c:Lcom/yandex/mobile/ads/impl/jy;

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/po1;->d:Lcom/yandex/mobile/ads/impl/ol0;

    return-void
.end method


# virtual methods
.method public final a(Lwh1;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwh1<",
            "-",
            "Lkotlin/Result<",
            "Lcom/yandex/mobile/ads/impl/rx;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/yandex/mobile/ads/impl/po1$a;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/yandex/mobile/ads/impl/po1$a;

    iget v1, v0, Lcom/yandex/mobile/ads/impl/po1$a;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/yandex/mobile/ads/impl/po1$a;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/yandex/mobile/ads/impl/po1$a;

    invoke-direct {v0, p0, p1}, Lcom/yandex/mobile/ads/impl/po1$a;-><init>(Lcom/yandex/mobile/ads/impl/po1;Lwh1;)V

    :goto_0
    iget-object p1, v0, Lcom/yandex/mobile/ads/impl/po1$a;->b:Ljava/lang/Object;

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/yandex/mobile/ads/impl/po1$a;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    iput v3, v0, Lcom/yandex/mobile/ads/impl/po1$a;->d:I

    new-instance p1, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {v0}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt;->c(Lwh1;)Lwh1;

    move-result-object v2

    invoke-direct {p1, v2, v3}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lwh1;I)V

    invoke-virtual {p1}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/po1;->d:Lcom/yandex/mobile/ads/impl/ol0;

    new-instance v3, Lcom/yandex/mobile/ads/impl/po1$b;

    invoke-direct {v3, p1}, Lcom/yandex/mobile/ads/impl/po1$b;-><init>(Lkotlinx/coroutines/CancellableContinuationImpl;)V

    new-instance v4, Lcom/yandex/mobile/ads/impl/po1$c;

    invoke-direct {v4, p1}, Lcom/yandex/mobile/ads/impl/po1$c;-><init>(Lkotlinx/coroutines/CancellableContinuationImpl;)V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "onSuccess"

    invoke-static {v3, v2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "onError"

    invoke-static {v4, v2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v10, Lcom/yandex/mobile/ads/impl/nl0;

    invoke-direct {v10, v3, v4}, Lcom/yandex/mobile/ads/impl/nl0;-><init>(Le74;Le74;)V

    new-instance v2, Lcom/yandex/mobile/ads/impl/cp0;

    iget-object v6, p0, Lcom/yandex/mobile/ads/impl/po1;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/po1;->c:Lcom/yandex/mobile/ads/impl/jy;

    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/jy;->a()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/yandex/mobile/ads/impl/po1;->b:Lcom/yandex/mobile/ads/impl/hq1;

    invoke-static {}, Lkotlin/collections/a;->l()Ljava/util/Map;

    move-result-object v9

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/yandex/mobile/ads/impl/cp0;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/yandex/mobile/ads/impl/hq1;Ljava/util/Map;Lcom/yandex/mobile/ads/impl/nl0;)V

    sget v3, Lcom/yandex/mobile/ads/impl/gq1;->c:I

    invoke-static {}, Lcom/yandex/mobile/ads/impl/gq1$a;->a()Lcom/yandex/mobile/ads/impl/gq1;

    move-result-object v3

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/po1;->a:Landroid/content/Context;

    monitor-enter v3

    :try_start_0
    const-string v4, "context"

    invoke-static {p0, v4}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "request"

    invoke-static {v2, v4}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/hd1;->a(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/iq1;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/yandex/mobile/ads/impl/iq1;->a(Lcom/yandex/mobile/ads/impl/up1;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    invoke-virtual {p1}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    move-result-object p0

    if-ne p1, p0, :cond_3

    invoke-static {v0}, Lpt1;->c(Lwh1;)V

    :cond_3
    if-ne p1, v1, :cond_4

    return-object v1

    :cond_4
    :goto_1
    check-cast p1, Lkotlin/Result;

    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v3

    throw p0
.end method

.class public final Lcom/yandex/mobile/ads/impl/gk1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/o3;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/o3;)V
    .locals 1

    const-string v0, "adConfiguration"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/gk1;->a:Lcom/yandex/mobile/ads/impl/o3;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/fl;Lwh1;)Ljava/lang/Object;
    .locals 11
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/yandex/mobile/ads/impl/fl;",
            "Lwh1<",
            "-",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lcom/yandex/mobile/ads/impl/gk1$a;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/yandex/mobile/ads/impl/gk1$a;

    iget v1, v0, Lcom/yandex/mobile/ads/impl/gk1$a;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/yandex/mobile/ads/impl/gk1$a;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/yandex/mobile/ads/impl/gk1$a;

    invoke-direct {v0, p0, p3}, Lcom/yandex/mobile/ads/impl/gk1$a;-><init>(Lcom/yandex/mobile/ads/impl/gk1;Lwh1;)V

    :goto_0
    iget-object p3, v0, Lcom/yandex/mobile/ads/impl/gk1$a;->b:Ljava/lang/Object;

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/yandex/mobile/ads/impl/gk1$a;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p3}, Lkotlin/c;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p3}, Lkotlin/c;->b(Ljava/lang/Object;)V

    new-instance p3, Lcom/yandex/mobile/ads/impl/j50;

    iget-object v5, p0, Lcom/yandex/mobile/ads/impl/gk1;->a:Lcom/yandex/mobile/ads/impl/o3;

    new-instance v7, Lcom/yandex/mobile/ads/impl/ea;

    invoke-direct {v7, p2}, Lcom/yandex/mobile/ads/impl/ea;-><init>(Lcom/yandex/mobile/ads/impl/fl;)V

    new-instance v8, Lcom/yandex/mobile/ads/impl/gy0;

    const/4 p0, 0x0

    invoke-direct {v8, v5, p0}, Lcom/yandex/mobile/ads/impl/gy0;-><init>(Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/o8;)V

    new-instance v9, Lcom/yandex/mobile/ads/impl/rk1;

    invoke-direct {v9, v8}, Lcom/yandex/mobile/ads/impl/rk1;-><init>(Lcom/yandex/mobile/ads/impl/gy0;)V

    sget-object p0, Lcom/yandex/mobile/ads/impl/vq0;->a:Lcom/yandex/mobile/ads/impl/vq0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/yandex/mobile/ads/impl/vq0;->a()Lu95;

    move-result-object v10

    move-object v4, p3

    move-object v6, p2

    invoke-direct/range {v4 .. v10}, Lcom/yandex/mobile/ads/impl/j50;-><init>(Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/fl;Lcom/yandex/mobile/ads/impl/ea;Lcom/yandex/mobile/ads/impl/gy0;Lcom/yandex/mobile/ads/impl/rk1;Lu95;)V

    iput v3, v0, Lcom/yandex/mobile/ads/impl/gk1$a;->d:I

    invoke-virtual {p3, p1, v0}, Lcom/yandex/mobile/ads/impl/j50;->a(Landroid/content/Context;Lwh1;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p3, Ljava/lang/String;

    return-object p3
.end method

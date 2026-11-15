.class public final Lcom/yandex/mobile/ads/impl/j50;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/o3;

.field private final b:Lcom/yandex/mobile/ads/impl/ea;

.field private final c:Lcom/yandex/mobile/ads/impl/rk1;

.field private final d:Lu95;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/fl;Lcom/yandex/mobile/ads/impl/ea;Lcom/yandex/mobile/ads/impl/gy0;Lcom/yandex/mobile/ads/impl/rk1;Lu95;)V
    .locals 1

    const-string v0, "adConfiguration"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "biddingSettings"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "adUnitIdMediationPrefetchSettingsProvider"

    invoke-static {p3, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "mediatedAdapterReporter"

    invoke-static {p4, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "prefetchedMediationNetworksDataLoader"

    invoke-static {p5, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "jsonEncoder"

    invoke-static {p6, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/j50;->a:Lcom/yandex/mobile/ads/impl/o3;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/j50;->b:Lcom/yandex/mobile/ads/impl/ea;

    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/j50;->c:Lcom/yandex/mobile/ads/impl/rk1;

    iput-object p6, p0, Lcom/yandex/mobile/ads/impl/j50;->d:Lu95;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lwh1;)Ljava/lang/Object;
    .locals 11
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lwh1<",
            "-",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/yandex/mobile/ads/impl/j50$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/yandex/mobile/ads/impl/j50$a;

    iget v1, v0, Lcom/yandex/mobile/ads/impl/j50$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/yandex/mobile/ads/impl/j50$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/yandex/mobile/ads/impl/j50$a;

    invoke-direct {v0, p0, p2}, Lcom/yandex/mobile/ads/impl/j50$a;-><init>(Lcom/yandex/mobile/ads/impl/j50;Lwh1;)V

    :goto_0
    iget-object p2, v0, Lcom/yandex/mobile/ads/impl/j50$a;->c:Ljava/lang/Object;

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/yandex/mobile/ads/impl/j50$a;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lcom/yandex/mobile/ads/impl/j50$a;->b:Lcom/yandex/mobile/ads/impl/j50;

    invoke-static {p2}, Lkotlin/c;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, Lkotlin/c;->b(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/yandex/mobile/ads/impl/j50;->a:Lcom/yandex/mobile/ads/impl/o3;

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/o3;->c()Ljava/lang/String;

    move-result-object p2

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/j50;->b:Lcom/yandex/mobile/ads/impl/ea;

    invoke-virtual {v2, p2}, Lcom/yandex/mobile/ads/impl/ea;->a(Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/f01;

    move-result-object p2

    if-nez p2, :cond_3

    const/4 p0, 0x0

    return-object p0

    :cond_3
    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/f01;->b()Ljava/util/List;

    move-result-object v8

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/f01;->a()J

    move-result-wide v4

    iget-object p2, p0, Lcom/yandex/mobile/ads/impl/j50;->a:Lcom/yandex/mobile/ads/impl/o3;

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/o3;->r()Lcom/yandex/mobile/ads/impl/gz1;

    move-result-object v6

    iget-object v7, p0, Lcom/yandex/mobile/ads/impl/j50;->c:Lcom/yandex/mobile/ads/impl/rk1;

    iput-object p0, v0, Lcom/yandex/mobile/ads/impl/j50$a;->b:Lcom/yandex/mobile/ads/impl/j50;

    iput v3, v0, Lcom/yandex/mobile/ads/impl/j50$a;->e:I

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/yandex/mobile/ads/impl/qu;->b()Lrx5;

    move-result-object p2

    new-instance v10, Lcom/yandex/mobile/ads/impl/nk1;

    const/4 v9, 0x0

    move-object v2, v10

    move-wide v3, v4

    move-object v5, p1

    invoke-direct/range {v2 .. v9}, Lcom/yandex/mobile/ads/impl/nk1;-><init>(JLandroid/content/Context;Lcom/yandex/mobile/ads/impl/gz1;Lcom/yandex/mobile/ads/impl/rk1;Ljava/util/List;Lwh1;)V

    invoke-static {p2, v10, v0}, Lcl0;->g(Lkotlin/coroutines/d;Ls74;Lwh1;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    return-object v1

    :cond_4
    :goto_1
    check-cast p2, Lcom/yandex/mobile/ads/impl/fk1;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/j50;->d:Lu95;

    invoke-interface {p0}, Lhd9;->a()Ltd9;

    sget-object p1, Lcom/yandex/mobile/ads/impl/fk1;->Companion:Lcom/yandex/mobile/ads/impl/fk1$b;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/fk1$b;->serializer()Lef5;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Llz9;->b(Lnd9;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

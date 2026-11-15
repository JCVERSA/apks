.class public final Lcom/yandex/mobile/ads/impl/na0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/o3;

.field private final b:Lkw6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkw6;"
        }
    .end annotation
.end field

.field private final c:Lnk1;

.field private d:Lcom/yandex/mobile/ads/impl/bt;

.field private final e:Lgx9;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgx9;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/en2;Lcom/yandex/mobile/ads/impl/v7;Lcom/yandex/mobile/ads/impl/k90;Lcom/yandex/mobile/ads/impl/l90;Lcom/yandex/mobile/ads/impl/o3;Lkw6;Lcom/yandex/mobile/ads/impl/w90;Lcom/yandex/mobile/ads/impl/x90;Lcom/yandex/mobile/ads/impl/ba0;Lcom/yandex/mobile/ads/impl/j01;Lcom/yandex/mobile/ads/impl/y90;Lcom/yandex/mobile/ads/impl/da0;Lcom/yandex/mobile/ads/impl/t90;Lnk1;)V
    .locals 6

    move-object v0, p0

    move-object v1, p6

    move-object v2, p7

    move-object/from16 v3, p15

    const-string v4, "appContext"

    move-object v5, p1

    invoke-static {p1, v4}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "sdkEnvironmentModule"

    move-object v5, p2

    invoke-static {p2, v4}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "adRequestData"

    move-object v5, p3

    invoke-static {p3, v4}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "divContextProvider"

    move-object v5, p4

    invoke-static {p4, v4}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "divViewPreloader"

    move-object v5, p5

    invoke-static {p5, v4}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "adConfiguration"

    invoke-static {p6, v4}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "feedInputEventFlow"

    invoke-static {p7, v4}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "feedItemLoadControllerCreator"

    move-object v5, p8

    invoke-static {p8, v4}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "feedItemLoadDataSource"

    move-object v5, p9

    invoke-static {p9, v4}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "feedItemPreloadDataSource"

    move-object/from16 v5, p10

    invoke-static {v5, v4}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "memoryUtils"

    move-object/from16 v5, p11

    invoke-static {v5, v4}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "loadEnoughMemoryValidator"

    move-object/from16 v5, p12

    invoke-static {v5, v4}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "feedItemsRepository"

    move-object/from16 v5, p13

    invoke-static {v5, v4}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "feedItemListUseCase"

    move-object/from16 v5, p14

    invoke-static {v5, v4}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "coroutineScope"

    invoke-static {v3, v4}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/yandex/mobile/ads/impl/na0;->a:Lcom/yandex/mobile/ads/impl/o3;

    iput-object v2, v0, Lcom/yandex/mobile/ads/impl/na0;->b:Lkw6;

    iput-object v3, v0, Lcom/yandex/mobile/ads/impl/na0;->c:Lnk1;

    invoke-virtual/range {p14 .. p14}, Lcom/yandex/mobile/ads/impl/t90;->a()Lgx9;

    move-result-object v1

    iput-object v1, v0, Lcom/yandex/mobile/ads/impl/na0;->e:Lgx9;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, v0, Lcom/yandex/mobile/ads/impl/na0;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/na0;->e()V

    return-void
.end method

.method public static final synthetic a(Lcom/yandex/mobile/ads/impl/na0;)Lkw6;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/na0;->b:Lkw6;

    return-object p0
.end method

.method private final e()V
    .locals 6

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/na0;->c:Lnk1;

    new-instance v3, Lcom/yandex/mobile/ads/impl/na0$a;

    const/4 v1, 0x0

    invoke-direct {v3, p0, v1}, Lcom/yandex/mobile/ads/impl/na0$a;-><init>(Lcom/yandex/mobile/ads/impl/na0;Lwh1;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lcl0;->d(Lnk1;Lkotlin/coroutines/d;Lkotlinx/coroutines/CoroutineStart;Ls74;ILjava/lang/Object;)Lkotlinx/coroutines/j;

    return-void
.end method


# virtual methods
.method public final a()Lcom/yandex/mobile/ads/impl/o3;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/na0;->a:Lcom/yandex/mobile/ads/impl/o3;

    return-object p0
.end method

.method public final a(I)V
    .locals 6

    .line 3
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/na0;->e:Lgx9;

    invoke-interface {v0}, Lgx9;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/impl/la0;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/la0;->c()Lcom/yandex/mobile/ads/impl/ea0;

    move-result-object v0

    instance-of v0, v0, Lcom/yandex/mobile/ads/impl/ea0$a;

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/na0;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 5
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/na0;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 6
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/na0;->c:Lnk1;

    new-instance v3, Lcom/yandex/mobile/ads/impl/na0$b;

    const/4 p1, 0x0

    invoke-direct {v3, p0, p1}, Lcom/yandex/mobile/ads/impl/na0$b;-><init>(Lcom/yandex/mobile/ads/impl/na0;Lwh1;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lcl0;->d(Lnk1;Lkotlin/coroutines/d;Lkotlinx/coroutines/CoroutineStart;Ls74;ILjava/lang/Object;)Lkotlinx/coroutines/j;

    :cond_0
    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/d90;)V
    .locals 0

    .line 7
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/na0;->d:Lcom/yandex/mobile/ads/impl/bt;

    return-void
.end method

.method public final b()Lcom/yandex/mobile/ads/impl/bt;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/na0;->d:Lcom/yandex/mobile/ads/impl/bt;

    return-object p0
.end method

.method public final c()Lgx9;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lgx9;"
        }
    .end annotation

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/na0;->e:Lgx9;

    return-object p0
.end method

.method public final d()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/na0;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method public final f()V
    .locals 7

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/na0;->e:Lgx9;

    invoke-interface {v0}, Lgx9;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/impl/la0;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/la0;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/na0;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/na0;->e:Lgx9;

    invoke-interface {v0}, Lgx9;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/impl/la0;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/la0;->c()Lcom/yandex/mobile/ads/impl/ea0;

    move-result-object v0

    instance-of v0, v0, Lcom/yandex/mobile/ads/impl/ea0$a;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/na0;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/na0;->c:Lnk1;

    new-instance v4, Lcom/yandex/mobile/ads/impl/na0$c;

    const/4 v0, 0x0

    invoke-direct {v4, p0, v0}, Lcom/yandex/mobile/ads/impl/na0$c;-><init>(Lcom/yandex/mobile/ads/impl/na0;Lwh1;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lcl0;->d(Lnk1;Lkotlin/coroutines/d;Lkotlinx/coroutines/CoroutineStart;Ls74;ILjava/lang/Object;)Lkotlinx/coroutines/j;

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {}, Lcom/yandex/mobile/ads/impl/w7;->s()Lcom/yandex/mobile/ads/impl/w3;

    move-result-object v0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/na0;->d:Lcom/yandex/mobile/ads/impl/bt;

    if-eqz p0, :cond_2

    invoke-interface {p0, v0}, Lcom/yandex/mobile/ads/impl/bt;->a(Lcom/yandex/mobile/ads/impl/w3;)V

    :cond_2
    :goto_1
    return-void
.end method

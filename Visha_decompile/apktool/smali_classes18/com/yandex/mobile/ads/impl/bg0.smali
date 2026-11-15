.class public final Lcom/yandex/mobile/ads/impl/bg0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/dg0;

.field private final b:Lcom/yandex/mobile/ads/impl/ag0;

.field private final c:Ljava/util/concurrent/Executor;


# direct methods
.method public synthetic constructor <init>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/yandex/mobile/ads/impl/dg0;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/dg0;-><init>()V

    .line 2
    new-instance v1, Lcom/yandex/mobile/ads/impl/ag0;

    invoke-direct {v1}, Lcom/yandex/mobile/ads/impl/ag0;-><init>()V

    .line 3
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    const-string v3, "newSingleThreadExecutor(...)"

    invoke-static {v2, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, v0, v1, v2}, Lcom/yandex/mobile/ads/impl/bg0;-><init>(Lcom/yandex/mobile/ads/impl/dg0;Lcom/yandex/mobile/ads/impl/ag0;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/dg0;Lcom/yandex/mobile/ads/impl/ag0;Ljava/util/concurrent/Executor;)V
    .locals 1

    .line 5
    const-string v0, "hostAccessCheckRequester"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hostAccessAdBlockerDetectionValidator"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "singleThreadExecutor"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/bg0;->a:Lcom/yandex/mobile/ads/impl/dg0;

    .line 8
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/bg0;->b:Lcom/yandex/mobile/ads/impl/ag0;

    .line 9
    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/bg0;->c:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private final a(Lcom/yandex/mobile/ads/impl/ct;)Ljava/lang/Boolean;
    .locals 5

    .line 7
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/bg0;->a:Lcom/yandex/mobile/ads/impl/dg0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "yandex.ru"

    const-string v1, "host"

    invoke-static {v0, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "hostAccessChecker"

    invoke-static {p1, v2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    new-instance v3, Lcom/yandex/mobile/ads/impl/fg0;

    .line 9
    new-instance v4, Lcom/yandex/mobile/ads/impl/hg0;

    invoke-direct {v4, p1}, Lcom/yandex/mobile/ads/impl/hg0;-><init>(Lcom/yandex/mobile/ads/impl/ct;)V

    .line 10
    invoke-direct {v3, v0, p1, v4}, Lcom/yandex/mobile/ads/impl/fg0;-><init>(Ljava/lang/String;Lcom/yandex/mobile/ads/impl/ct;Lcom/yandex/mobile/ads/impl/hg0;)V

    .line 11
    new-instance v0, Ljava/util/concurrent/FutureTask;

    invoke-direct {v0, v3}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 12
    new-instance v3, Ljava/lang/Thread;

    invoke-direct {v3, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 13
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 14
    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/bg0;->a:Lcom/yandex/mobile/ads/impl/dg0;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "mobile.yandexadexchange.net"

    invoke-static {v3, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    new-instance v1, Lcom/yandex/mobile/ads/impl/fg0;

    .line 16
    new-instance v2, Lcom/yandex/mobile/ads/impl/hg0;

    invoke-direct {v2, p1}, Lcom/yandex/mobile/ads/impl/hg0;-><init>(Lcom/yandex/mobile/ads/impl/ct;)V

    .line 17
    invoke-direct {v1, v3, p1, v2}, Lcom/yandex/mobile/ads/impl/fg0;-><init>(Ljava/lang/String;Lcom/yandex/mobile/ads/impl/ct;Lcom/yandex/mobile/ads/impl/hg0;)V

    .line 18
    new-instance p1, Ljava/util/concurrent/FutureTask;

    invoke-direct {p1, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 19
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 20
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 21
    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/impl/eg0;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/eg0;->a()Z

    move-result v0

    .line 22
    invoke-virtual {p1}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yandex/mobile/ads/impl/eg0;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/eg0;->a()Z

    move-result p1

    .line 23
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/bg0;->b:Lcom/yandex/mobile/ads/impl/ag0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez p1, :cond_0

    if-eqz v0, :cond_0

    .line 24
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    if-nez v0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    .line 25
    :cond_1
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    return-object p0
.end method

.method private static final a(Lcom/yandex/mobile/ads/impl/bg0;Lcom/yandex/mobile/ads/impl/ct;Lcom/yandex/mobile/ads/impl/cg0;)V
    .locals 1

    .line 3
    const-string v0, "this$0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$hostAccessChecker"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$listener"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    :try_start_0
    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/bg0;->a(Lcom/yandex/mobile/ads/impl/ct;)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 p0, 0x0

    .line 5
    new-array p0, p0, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/sp0;->c([Ljava/lang/Object;)V

    const/4 p0, 0x0

    .line 6
    :goto_0
    invoke-interface {p2, p0}, Lcom/yandex/mobile/ads/impl/cg0;->a(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic b(Lcom/yandex/mobile/ads/impl/bg0;Lcom/yandex/mobile/ads/impl/ct;Lcom/yandex/mobile/ads/impl/cg0;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/yandex/mobile/ads/impl/bg0;->a(Lcom/yandex/mobile/ads/impl/bg0;Lcom/yandex/mobile/ads/impl/ct;Lcom/yandex/mobile/ads/impl/cg0;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/cg0;Lcom/yandex/mobile/ads/impl/ct;)V
    .locals 2

    .line 1
    const-string v0, "listener"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hostAccessChecker"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/bg0;->c:Ljava/util/concurrent/Executor;

    new-instance v1, Lh7d;

    invoke-direct {v1, p0, p2, p1}, Lh7d;-><init>(Lcom/yandex/mobile/ads/impl/bg0;Lcom/yandex/mobile/ads/impl/ct;Lcom/yandex/mobile/ads/impl/cg0;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

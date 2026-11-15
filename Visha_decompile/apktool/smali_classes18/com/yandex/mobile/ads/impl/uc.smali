.class public final Lcom/yandex/mobile/ads/impl/uc;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/concurrent/Executor;

.field private final b:Lcom/yandex/mobile/ads/impl/qc;

.field private final c:Lcom/yandex/mobile/ads/impl/qc;

.field private final d:Lcom/yandex/mobile/ads/impl/se0;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .locals 8

    .line 1
    new-instance v0, Lcom/yandex/mobile/ads/impl/f41;

    sget-object v1, Lcom/yandex/mobile/ads/impl/f41;->d:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/yandex/mobile/ads/impl/f41;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v4

    const-string v0, "newSingleThreadExecutor(...)"

    invoke-static {v4, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v5, Lcom/yandex/mobile/ads/impl/ue0;

    invoke-direct {v5, p1}, Lcom/yandex/mobile/ads/impl/ue0;-><init>(Landroid/content/Context;)V

    .line 4
    new-instance v6, Lcom/yandex/mobile/ads/impl/uf0;

    invoke-direct {v6, p1}, Lcom/yandex/mobile/ads/impl/uf0;-><init>(Landroid/content/Context;)V

    .line 5
    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/te0;->a(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/se0;

    move-result-object v7

    move-object v2, p0

    move-object v3, p1

    .line 6
    invoke-direct/range {v2 .. v7}, Lcom/yandex/mobile/ads/impl/uc;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/yandex/mobile/ads/impl/qc;Lcom/yandex/mobile/ads/impl/qc;Lcom/yandex/mobile/ads/impl/se0;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/yandex/mobile/ads/impl/qc;Lcom/yandex/mobile/ads/impl/qc;Lcom/yandex/mobile/ads/impl/se0;)V
    .locals 1

    .line 7
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "executor"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "gmsAdvertisingInfoProvider"

    invoke-static {p3, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "hmsAdvertisingInfoProvider"

    invoke-static {p4, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "gmsAdvertisingIdStorage"

    invoke-static {p5, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/uc;->a:Ljava/util/concurrent/Executor;

    .line 10
    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/uc;->b:Lcom/yandex/mobile/ads/impl/qc;

    .line 11
    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/uc;->c:Lcom/yandex/mobile/ads/impl/qc;

    .line 12
    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/uc;->d:Lcom/yandex/mobile/ads/impl/se0;

    return-void
.end method

.method private static final a(Lcom/yandex/mobile/ads/impl/uc;Lcom/yandex/mobile/ads/impl/sc;)V
    .locals 3

    .line 3
    const-string v0, "this$0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$listener"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/uc;->b:Lcom/yandex/mobile/ads/impl/qc;

    .line 5
    invoke-interface {v0}, Lcom/yandex/mobile/ads/impl/qc;->a()Lcom/yandex/mobile/ads/impl/lc;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/uc;->c:Lcom/yandex/mobile/ads/impl/qc;

    invoke-interface {v1}, Lcom/yandex/mobile/ads/impl/qc;->a()Lcom/yandex/mobile/ads/impl/lc;

    move-result-object v1

    .line 7
    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/uc;->d:Lcom/yandex/mobile/ads/impl/se0;

    invoke-virtual {v2, v0}, Lcom/yandex/mobile/ads/impl/se0;->b(Lcom/yandex/mobile/ads/impl/lc;)V

    .line 8
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/uc;->d:Lcom/yandex/mobile/ads/impl/se0;

    invoke-virtual {p0, v0}, Lcom/yandex/mobile/ads/impl/se0;->a(Lcom/yandex/mobile/ads/impl/lc;)Z

    move-result p0

    .line 9
    new-instance v2, Lcom/yandex/mobile/ads/impl/nc;

    invoke-direct {v2, v0, v1, p0}, Lcom/yandex/mobile/ads/impl/nc;-><init>(Lcom/yandex/mobile/ads/impl/lc;Lcom/yandex/mobile/ads/impl/lc;Z)V

    .line 10
    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/nc;->a()Lcom/yandex/mobile/ads/impl/lc;

    move-result-object p0

    if-nez p0, :cond_1

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/nc;->c()Lcom/yandex/mobile/ads/impl/lc;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 11
    :cond_0
    invoke-interface {p1}, Lcom/yandex/mobile/ads/impl/sc;->a()V

    goto :goto_1

    .line 12
    :cond_1
    :goto_0
    invoke-interface {p1, v2}, Lcom/yandex/mobile/ads/impl/sc;->a(Lcom/yandex/mobile/ads/impl/nc;)V

    :goto_1
    return-void
.end method

.method public static synthetic b(Lcom/yandex/mobile/ads/impl/uc;Lcom/yandex/mobile/ads/impl/sc;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/yandex/mobile/ads/impl/uc;->a(Lcom/yandex/mobile/ads/impl/uc;Lcom/yandex/mobile/ads/impl/sc;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/sc;)V
    .locals 2

    .line 1
    const-string v0, "listener"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/uc;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Lavd;

    invoke-direct {v1, p0, p1}, Lavd;-><init>(Lcom/yandex/mobile/ads/impl/uc;Lcom/yandex/mobile/ads/impl/sc;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

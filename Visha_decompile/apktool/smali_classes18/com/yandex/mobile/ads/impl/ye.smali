.class public final Lcom/yandex/mobile/ads/impl/ye;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/concurrent/Executor;

.field private final b:Lcom/yandex/mobile/ads/impl/ue;


# direct methods
.method public synthetic constructor <init>()V
    .locals 2

    .line 1
    sget v0, Lcom/yandex/mobile/ads/impl/ms0;->f:I

    invoke-static {}, Lcom/yandex/mobile/ads/impl/ms0$a;->a()Lcom/yandex/mobile/ads/impl/ms0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ms0;->c()Ljava/util/concurrent/Executor;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/yandex/mobile/ads/impl/ve;->a()Lcom/yandex/mobile/ads/impl/pf;

    move-result-object v1

    .line 3
    invoke-direct {p0, v0, v1}, Lcom/yandex/mobile/ads/impl/ye;-><init>(Ljava/util/concurrent/Executor;Lcom/yandex/mobile/ads/impl/ue;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/yandex/mobile/ads/impl/ue;)V
    .locals 1

    .line 4
    const-string v0, "executor"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appMetricaAdapter"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ye;->a:Ljava/util/concurrent/Executor;

    .line 7
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/ye;->b:Lcom/yandex/mobile/ads/impl/ue;

    return-void
.end method

.method private static final a(Lcom/yandex/mobile/ads/impl/ye;Lcom/yandex/mobile/ads/impl/xe;)V
    .locals 1

    .line 3
    const-string v0, "this$0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$listener"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ye;->b:Lcom/yandex/mobile/ads/impl/ue;

    invoke-interface {p0, p1}, Lcom/yandex/mobile/ads/impl/ue;->a(Lcom/yandex/mobile/ads/impl/xe;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/yandex/mobile/ads/impl/xe;->a(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static synthetic b(Lcom/yandex/mobile/ads/impl/ye;Lcom/yandex/mobile/ads/impl/xe;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/yandex/mobile/ads/impl/ye;->a(Lcom/yandex/mobile/ads/impl/ye;Lcom/yandex/mobile/ads/impl/xe;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/xe;)V
    .locals 2

    .line 1
    const-string v0, "listener"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ye;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Lgyd;

    invoke-direct {v1, p0, p1}, Lgyd;-><init>(Lcom/yandex/mobile/ads/impl/ye;Lcom/yandex/mobile/ads/impl/xe;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

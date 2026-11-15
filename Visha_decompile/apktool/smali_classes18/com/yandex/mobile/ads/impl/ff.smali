.class public final Lcom/yandex/mobile/ads/impl/ff;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/nf;


# static fields
.field private static final g:J


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/ef;

.field private final b:Lcom/yandex/mobile/ads/impl/ue;

.field private final c:Landroid/os/Handler;

.field private final d:Lcom/yandex/mobile/ads/impl/bf;

.field private e:Z

.field private final f:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/yandex/mobile/ads/impl/ff;->g:J

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/ef;Lcom/yandex/mobile/ads/impl/ue;)V
    .locals 1

    const-string v0, "appMetricaIdentifiersChangedObservable"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appMetricaAdapter"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ff;->a:Lcom/yandex/mobile/ads/impl/ef;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/ff;->b:Lcom/yandex/mobile/ads/impl/ue;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ff;->c:Landroid/os/Handler;

    new-instance p1, Lcom/yandex/mobile/ads/impl/bf;

    invoke-direct {p1}, Lcom/yandex/mobile/ads/impl/bf;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ff;->d:Lcom/yandex/mobile/ads/impl/bf;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ff;->f:Ljava/lang/Object;

    return-void
.end method

.method public static final synthetic a(Lcom/yandex/mobile/ads/impl/ff;)Lcom/yandex/mobile/ads/impl/bf;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ff;->d:Lcom/yandex/mobile/ads/impl/bf;

    return-object p0
.end method

.method private final a()V
    .locals 4

    .line 29
    new-instance v0, Lcom/yandex/mobile/ads/impl/ff$a;

    invoke-direct {v0, p0}, Lcom/yandex/mobile/ads/impl/ff$a;-><init>(Lcom/yandex/mobile/ads/impl/ff;)V

    .line 30
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ff;->c:Landroid/os/Handler;

    new-instance v1, Lbfd;

    invoke-direct {v1, v0}, Lbfd;-><init>(Lc74;)V

    sget-wide v2, Lcom/yandex/mobile/ads/impl/ff;->g:J

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private static final a(Lc74;)V
    .locals 1

    .line 31
    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-interface {p0}, Lc74;->invoke()Ljava/lang/Object;

    return-void
.end method

.method private final b()V
    .locals 3

    .line 5
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ff;->f:Ljava/lang/Object;

    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/ff;->c:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/4 v1, 0x0

    .line 7
    iput-boolean v1, p0, Lcom/yandex/mobile/ads/impl/ff;->e:Z

    .line 8
    sget-object p0, Lzfb;->a:Lzfb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 10
    monitor-exit v0

    throw p0
.end method

.method public static synthetic b(Lc74;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/ff;->a(Lc74;)V

    return-void
.end method

.method public static final b(Lcom/yandex/mobile/ads/impl/ff;)V
    .locals 1

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    .line 3
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/sp0;->b([Ljava/lang/Object;)V

    .line 4
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ff;->a:Lcom/yandex/mobile/ads/impl/ef;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/ef;->a()V

    return-void
.end method

.method public static final synthetic c(Lcom/yandex/mobile/ads/impl/ff;)V
    .locals 0

    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/ff;->b()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/aj0;)V
    .locals 3

    .line 2
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "observer"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ff;->a:Lcom/yandex/mobile/ads/impl/ef;

    invoke-virtual {v0, p2}, Lcom/yandex/mobile/ads/impl/ef;->a(Lcom/yandex/mobile/ads/impl/aj0;)V

    const/4 p2, 0x0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ff;->f:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    :try_start_1
    iget-boolean v1, p0, Lcom/yandex/mobile/ads/impl/ff;->e:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 6
    iput-boolean v1, p0, Lcom/yandex/mobile/ads/impl/ff;->e:Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    move v1, p2

    .line 7
    :goto_0
    sget-object v2, Lzfb;->a:Lzfb;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    :try_start_2
    monitor-exit v0

    if-eqz v1, :cond_1

    .line 9
    new-array v0, p2, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/sp0;->a([Ljava/lang/Object;)V

    .line 10
    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/ff;->a()V

    .line 11
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ff;->b:Lcom/yandex/mobile/ads/impl/ue;

    invoke-interface {v0, p1, p0}, Lcom/yandex/mobile/ads/impl/ue;->a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/nf;)V

    goto :goto_2

    .line 12
    :goto_1
    monitor-exit v0

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 13
    :catchall_1
    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/ff;->b()V

    .line 14
    new-array p0, p2, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/sp0;->c([Ljava/lang/Object;)V

    :cond_1
    :goto_2
    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/lf;)V
    .locals 3

    .line 20
    const-string v0, "params"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/sp0;->d([Ljava/lang/Object;)V

    .line 22
    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/ff;->b()V

    .line 23
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ff;->a:Lcom/yandex/mobile/ads/impl/ef;

    .line 24
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/lf;->c()Ljava/lang/String;

    move-result-object v0

    .line 25
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/lf;->a()Ljava/lang/String;

    move-result-object v1

    .line 26
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/lf;->b()Ljava/lang/String;

    move-result-object p1

    .line 27
    new-instance v2, Lcom/yandex/mobile/ads/impl/df;

    invoke-direct {v2, p1, v1, v0}, Lcom/yandex/mobile/ads/impl/df;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    invoke-virtual {p0, v2}, Lcom/yandex/mobile/ads/impl/ef;->a(Lcom/yandex/mobile/ads/impl/df;)V

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/mf;)V
    .locals 1

    .line 15
    const-string v0, "error"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/ff;->b()V

    .line 17
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ff;->d:Lcom/yandex/mobile/ads/impl/bf;

    invoke-virtual {v0, p1}, Lcom/yandex/mobile/ads/impl/bf;->a(Lcom/yandex/mobile/ads/impl/mf;)Ljava/lang/String;

    const/4 p1, 0x0

    .line 18
    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/sp0;->b([Ljava/lang/Object;)V

    .line 19
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ff;->a:Lcom/yandex/mobile/ads/impl/ef;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/ef;->a()V

    return-void
.end method

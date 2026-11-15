.class public final Luz6;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Luz6;

.field public static b:Z

.field public static c:Z

.field public static d:Z

.field public static e:Z

.field public static f:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Luz6;

    invoke-direct {v0}, Luz6;-><init>()V

    sput-object v0, Luz6;->a:Luz6;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()V
    .locals 0

    invoke-static {}, Luz6;->m()V

    return-void
.end method

.method public static final c(Landroid/app/Application;Z)V
    .locals 1

    const-string v0, "application"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p0, v0, p1}, Luz6;->d(Landroid/app/Application;[Ljava/lang/String;Z)V

    return-void
.end method

.method public static final d(Landroid/app/Application;[Ljava/lang/String;Z)V
    .locals 3

    const-string v0, "application"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hosts"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sput-boolean p2, Luz6;->b:Z

    const/16 v0, 0x716

    const/4 v1, 0x0

    const-string v2, "NetworkMonitor"

    invoke-static {p0, v2, v0, p2, v1}, Lcom/transsion/ga/AthenaAnalytics;->P(Landroid/content/Context;Ljava/lang/String;IZZ)V

    sget-object p2, Lyr4;->a:Lyr4;

    invoke-virtual {p2, p1}, Lyr4;->e([Ljava/lang/String;)V

    sget-object p1, Luz6;->a:Luz6;

    invoke-virtual {p1, p0}, Luz6;->h(Landroid/content/Context;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sput-wide v0, Luz6;->f:J

    invoke-virtual {p1}, Luz6;->l()V

    return-void
.end method

.method public static final m()V
    .locals 4

    sget-boolean v0, Luz6;->c:Z

    if-eqz v0, :cond_0

    const-string v0, "0"

    goto :goto_0

    :cond_0
    const-string v0, "1"

    :goto_0
    sget-boolean v1, Luz6;->d:Z

    if-eqz v1, :cond_1

    const-string v0, "2"

    :cond_1
    new-instance v1, Lwj;

    const-string v2, "monitor_init"

    const/16 v3, 0x716

    invoke-direct {v1, v2, v3}, Lwj;-><init>(Ljava/lang/String;I)V

    const-string v2, "net_status"

    invoke-static {v2, v0}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    filled-new-array {v0}, [Lkotlin/Pair;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/os/BundleKt;->bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lwj;->c(Landroid/os/Bundle;Landroid/os/Bundle;)Lwj;

    move-result-object v0

    invoke-virtual {v0}, Lwj;->b()V

    return-void
.end method


# virtual methods
.method public final b()J
    .locals 2

    sget-wide v0, Luz6;->f:J

    return-wide v0
.end method

.method public final e()Z
    .locals 0

    sget-boolean p0, Luz6;->d:Z

    return p0
.end method

.method public final f()Z
    .locals 0

    sget-boolean p0, Luz6;->e:Z

    return p0
.end method

.method public final g()Z
    .locals 0

    sget-boolean p0, Luz6;->c:Z

    return p0
.end method

.method public final h(Landroid/content/Context;)V
    .locals 1

    const-string p0, "connectivity"

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Landroid/net/ConnectivityManager;

    if-eqz p1, :cond_0

    check-cast p0, Landroid/net/ConnectivityManager;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    return-void

    :cond_1
    new-instance p1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {p1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    invoke-virtual {p1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object p1

    new-instance v0, Luz6$a;

    invoke-direct {v0}, Luz6$a;-><init>()V

    invoke-virtual {p0, p1, v0}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    return-void
.end method

.method public final i(Z)V
    .locals 0

    sput-boolean p1, Luz6;->d:Z

    return-void
.end method

.method public final j(Z)V
    .locals 0

    sput-boolean p1, Luz6;->e:Z

    return-void
.end method

.method public final k(Z)V
    .locals 0

    sput-boolean p1, Luz6;->c:Z

    return-void
.end method

.method public final l()V
    .locals 3

    :try_start_0
    new-instance p0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Ltz6;

    invoke-direct {v0}, Ltz6;-><init>()V

    const-wide/16 v1, 0x1388

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v0, Lwlb;->a:Lcom/transsion/core/log/ObjectLogUtils;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "NetworkMonitor"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/core/log/ObjectLogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

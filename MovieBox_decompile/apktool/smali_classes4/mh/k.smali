.class public final Lmh/k;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final a:Lmh/k;

.field private static b:Z

.field private static c:Z

.field private static d:Z

.field private static e:Z

.field private static f:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lmh/k;

    .line 2
    .line 3
    invoke-direct {v0}, Lmh/k;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lmh/k;->a:Lmh/k;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic a()V
    .locals 0

    .line 1
    invoke-static {}, Lmh/k;->m()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final c(Landroid/app/Application;Z)V
    .locals 1

    .line 1
    const-string v0, "application"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    new-array v0, v0, [Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {p0, v0, p1}, Lmh/k;->d(Landroid/app/Application;[Ljava/lang/String;Z)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public static final d(Landroid/app/Application;[Ljava/lang/String;Z)V
    .locals 3

    .line 1
    const-string v0, "application"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "hosts"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sput-boolean p2, Lmh/k;->b:Z

    .line 12
    .line 13
    const/16 v0, 0x716

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    const-string v2, "NetworkMonitor"

    .line 17
    .line 18
    invoke-static {p0, v2, v0, p2, v1}, Lcom/transsion/ga/AthenaAnalytics;->Q(Landroid/content/Context;Ljava/lang/String;IZZ)V

    .line 19
    .line 20
    .line 21
    sget-object p2, Lmh/d;->a:Lmh/d;

    .line 22
    .line 23
    invoke-virtual {p2, p1}, Lmh/d;->e([Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    sget-object p1, Lmh/k;->a:Lmh/k;

    .line 27
    .line 28
    invoke-direct {p1, p0}, Lmh/k;->h(Landroid/content/Context;)V

    .line 29
    .line 30
    .line 31
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 32
    .line 33
    .line 34
    move-result-wide v0

    .line 35
    sput-wide v0, Lmh/k;->f:J

    .line 36
    .line 37
    invoke-direct {p1}, Lmh/k;->l()V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method private final h(Landroid/content/Context;)V
    .locals 2

    .line 1
    const-string v0, "connectivity"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    instance-of v0, p1, Landroid/net/ConnectivityManager;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    check-cast p1, Landroid/net/ConnectivityManager;

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    :goto_0
    if-nez p1, :cond_1

    .line 16
    .line 17
    return-void

    .line 18
    :cond_1
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    .line 19
    .line 20
    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    new-instance v1, Lmh/k$a;

    .line 28
    .line 29
    invoke-direct {v1}, Lmh/k$a;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v0, v1}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method private final l()V
    .locals 4

    .line 1
    :try_start_0
    new-instance v0, Landroid/os/Handler;

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Lmh/j;

    .line 11
    .line 12
    invoke-direct {v1}, Lmh/j;-><init>()V

    .line 13
    .line 14
    .line 15
    const-wide/16 v2, 0x1388

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catch_0
    move-exception v0

    .line 22
    sget-object v1, Lmh/o;->a:Lcom/transsion/core/log/ObjectLogUtils;

    .line 23
    .line 24
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const/4 v2, 0x1

    .line 29
    new-array v2, v2, [Ljava/lang/Object;

    .line 30
    .line 31
    const/4 v3, 0x0

    .line 32
    aput-object v0, v2, v3

    .line 33
    .line 34
    const-string v0, "NetworkMonitor"

    .line 35
    .line 36
    invoke-virtual {v1, v0, v2}, Lcom/transsion/core/log/ObjectLogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    :goto_0
    return-void
.end method

.method private static final m()V
    .locals 4

    .line 1
    sget-boolean v0, Lmh/k;->c:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "0"

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const-string v0, "1"

    .line 9
    .line 10
    :goto_0
    sget-boolean v1, Lmh/k;->d:Z

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    const-string v0, "2"

    .line 15
    .line 16
    :cond_1
    new-instance v1, Lhi/a;

    .line 17
    .line 18
    const-string v2, "monitor_init"

    .line 19
    .line 20
    const/16 v3, 0x716

    .line 21
    .line 22
    invoke-direct {v1, v2, v3}, Lhi/a;-><init>(Ljava/lang/String;I)V

    .line 23
    .line 24
    .line 25
    const-string v2, "net_status"

    .line 26
    .line 27
    invoke-static {v2, v0}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const/4 v2, 0x1

    .line 32
    new-array v2, v2, [Lkotlin/Pair;

    .line 33
    .line 34
    const/4 v3, 0x0

    .line 35
    aput-object v0, v2, v3

    .line 36
    .line 37
    invoke-static {v2}, Landroidx/core/os/d;->b([Lkotlin/Pair;)Landroid/os/Bundle;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    const/4 v2, 0x0

    .line 42
    invoke-virtual {v1, v0, v2}, Lhi/a;->c(Landroid/os/Bundle;Landroid/os/Bundle;)Lhi/a;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {v0}, Lhi/a;->b()V

    .line 47
    .line 48
    .line 49
    return-void
.end method


# virtual methods
.method public final b()J
    .locals 2

    .line 1
    sget-wide v0, Lmh/k;->f:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final e()Z
    .locals 1

    .line 1
    sget-boolean v0, Lmh/k;->d:Z

    .line 2
    .line 3
    return v0
.end method

.method public final f()Z
    .locals 1

    .line 1
    sget-boolean v0, Lmh/k;->e:Z

    .line 2
    .line 3
    return v0
.end method

.method public final g()Z
    .locals 1

    .line 1
    sget-boolean v0, Lmh/k;->c:Z

    .line 2
    .line 3
    return v0
.end method

.method public final i(Z)V
    .locals 0

    .line 1
    sput-boolean p1, Lmh/k;->d:Z

    .line 2
    .line 3
    return-void
.end method

.method public final j(Z)V
    .locals 0

    .line 1
    sput-boolean p1, Lmh/k;->e:Z

    .line 2
    .line 3
    return-void
.end method

.method public final k(Z)V
    .locals 0

    .line 1
    sput-boolean p1, Lmh/k;->c:Z

    .line 2
    .line 3
    return-void
.end method

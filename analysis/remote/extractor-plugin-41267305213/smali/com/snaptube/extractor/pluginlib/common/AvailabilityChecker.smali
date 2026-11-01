.class public Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;
.super Ljava/lang/Object;

# interfaces
.implements Lo/ma3;


# static fields
.field private static final MAX_DELAY_IN_SECONDS:I = 0x200

.field public static final METHOD_IS_AVAILABLE:Ljava/lang/String; = "isAvailable"

.field public static final METHOD_SETLOGGER:Ljava/lang/String; = "setLogger"

.field public static final METHOD_WITH:Ljava/lang/String; = "with"

.field public static final TAG:Ljava/lang/String; = "AvailabilityChecker"

.field private static volatile instance:Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;

.field public static sHttpStatus:I


# instance fields
.field private checkDelayFactor:I

.field private final checkDone:Ljava/lang/Runnable;

.field private checkInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final checkRemote:Ljava/lang/Runnable;

.field private final checkStart:Ljava/lang/Runnable;

.field private volatile context:Landroid/content/Context;

.field private countDownLatch:Ljava/util/concurrent/CountDownLatch;

.field private final handler:Landroid/os/Handler;

.field private pluginChecker:Ljava/lang/Object;

.field private remoteCheckStartTime:J

.field private volatile result:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->checkInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker$a;

    invoke-direct {v0, p0}, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker$a;-><init>(Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;)V

    iput-object v0, p0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->checkStart:Ljava/lang/Runnable;

    new-instance v0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker$b;

    invoke-direct {v0, p0}, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker$b;-><init>(Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;)V

    iput-object v0, p0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->checkRemote:Ljava/lang/Runnable;

    new-instance v0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker$c;

    invoke-direct {v0, p0}, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker$c;-><init>(Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;)V

    iput-object v0, p0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->checkDone:Ljava/lang/Runnable;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->handler:Landroid/os/Handler;

    const/4 v0, 0x1

    iput v0, p0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->checkDelayFactor:I

    iget-object v1, p0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->checkInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v1, p0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->check()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->context:Landroid/content/Context;

    :cond_0
    return-void
.end method

.method public static synthetic access$000(Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->checkInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;)Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->result:Ljava/lang/Boolean;

    return-object p0
.end method

.method public static synthetic access$1000(Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;)Ljava/util/concurrent/CountDownLatch;
    .locals 0

    iget-object p0, p0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method public static synthetic access$102(Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    iput-object p1, p0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->result:Ljava/lang/Boolean;

    return-object p1
.end method

.method public static synthetic access$200(Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;)V
    .locals 0

    invoke-direct {p0}, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->doCheck()V

    return-void
.end method

.method public static synthetic access$300(Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$400(Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->context:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;IJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->logSuc(IJ)V

    return-void
.end method

.method public static synthetic access$600(Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->logFail(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$700(Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->checkDone:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic access$800(Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic access$900(Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;)V
    .locals 0

    invoke-direct {p0}, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->scheduleNextCheck()V

    return-void
.end method

.method private calculateRemoteCheckDuration()J
    .locals 4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->remoteCheckStartTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method private doCheck()V
    .locals 3

    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->context:Landroid/content/Context;

    invoke-static {v1, v0}, Lo/ld2;->v(Landroid/content/Context;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->result:Ljava/lang/Boolean;

    invoke-direct {p0}, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->isSessionNeedRefresh()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->checkDone:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    iget-object v1, p0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    iget-object v1, p0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->checkInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->remoteCheckStartTime:J

    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->checkRemote:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private getNetworkCountryIso()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->context:Landroid/content/Context;

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->context:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v1

    const-string v1, "TR"

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v0

    const-string v0, "TR"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lo/xm3;->d()Lo/xm3;

    move-result-object v1

    invoke-virtual {v1}, Lo/xm3;->f()Lo/kd3;

    move-result-object v1

    invoke-interface {v1}, Lo/kd3;->e()Ljava/lang/String;

    move-result-object v1

    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    move-object v0, v1

    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lo/xm3;->d()Lo/xm3;

    move-result-object v0

    invoke-virtual {v0}, Lo/xm3;->f()Lo/kd3;

    move-result-object v0

    invoke-interface {v0}, Lo/kd3;->k()Ljava/lang/String;

    move-result-object v0

    :cond_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    :cond_4
    return-object v0
.end method

.method private getResultFormPlugin()Ljava/lang/Boolean;
    .locals 3

    iget-object v0, p0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->pluginChecker:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const-class v0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    iget-object v2, p0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->pluginChecker:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    if-ne v0, v2, :cond_1

    return-object v1

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->pluginChecker:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "isAvailable"

    invoke-virtual {v0, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v2, p0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->pluginChecker:Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    return-object v1
.end method

.method private isSessionNeedRefresh()Z
    .locals 10

    iget-object v0, p0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->context:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->context:Landroid/content/Context;

    invoke-static {v0}, Lo/ld2;->r(Landroid/content/Context;)J

    move-result-wide v4

    iget-object v0, p0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->context:Landroid/content/Context;

    invoke-static {v0}, Lo/ld2;->q(Landroid/content/Context;)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v0, v4, v8

    if-lez v0, :cond_1

    cmp-long v0, v6, v8

    if-lez v0, :cond_1

    sub-long/2addr v4, v2

    const-wide/16 v2, 0x2

    div-long/2addr v6, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v0, v4, v6

    if-gez v0, :cond_1

    const/4 v1, 0x1

    :catchall_0
    :cond_1
    return v1
.end method

.method private logFail(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->calculateRemoteCheckDuration()J

    move-result-wide v0

    invoke-static {p1, p2, p3, v0, v1}, Lo/qz;->a(ILjava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method private logSuc(IJ)V
    .locals 2

    invoke-direct {p0}, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->calculateRemoteCheckDuration()J

    move-result-wide v0

    invoke-static {p1, p2, p3, v0, v1}, Lo/qz;->b(IJJ)V

    return-void
.end method

.method private scheduleNextCheck()V
    .locals 5

    iget v0, p0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->checkDelayFactor:I

    mul-int/lit8 v0, v0, 0x2

    const/16 v1, 0x200

    if-le v0, v1, :cond_0

    const/16 v0, 0x200

    :cond_0
    iput v0, p0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->checkDelayFactor:I

    iget-object v1, p0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->checkStart:Ljava/lang/Runnable;

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private updateContext(Landroid/content/Context;)V
    .locals 1

    iget-object v0, p0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->context:Landroid/content/Context;

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->context:Landroid/content/Context;

    :cond_1
    :goto_0
    return-void
.end method

.method public static with(Landroid/content/Context;)Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    sget-object v0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->instance:Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;

    if-nez v0, :cond_1

    const-class v0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->instance:Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;

    if-nez v1, :cond_0

    new-instance v1, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;

    invoke-direct {v1, p0}, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->instance:Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_2
    sget-object v0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->instance:Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;

    invoke-direct {v0, p0}, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->updateContext(Landroid/content/Context;)V

    sget-object p0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->instance:Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;

    return-object p0
.end method


# virtual methods
.method public check()V
    .locals 2

    iget-object v0, p0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->result:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->checkStart:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public checkAndWait(J)Z
    .locals 2

    iget-object v0, p0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->result:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-virtual {p0}, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->check()V

    :try_start_0
    iget-object v0, p0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method public forceCheck()V
    .locals 2

    iget-object v0, p0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->result:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->result:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->checkStart:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public getLastHttpStatusCode()I
    .locals 1

    sget v0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->sHttpStatus:I

    return v0
.end method

.method public isAvailable()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->context:Landroid/content/Context;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->context:Landroid/content/Context;

    invoke-static {v0}, Lo/ja9;->c(Landroid/content/Context;)Z

    move-result v0

    xor-int/2addr v1, v0

    :cond_0
    invoke-virtual {p0, v1}, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->isAvailable(Z)Z

    move-result v0

    return v0
.end method

.method public isAvailable(Z)Z
    .locals 1

    invoke-direct {p0}, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->getResultFormPlugin()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_0
    iget-object v0, p0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->result:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    return p1

    :cond_1
    iget-object p1, p0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->result:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public loadPluginImpl(Ljava/lang/ClassLoader;)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    const-class v2, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const-string v2, "with"

    new-array v3, v1, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    aput-object v4, v3, v0

    invoke-virtual {p1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iget-object v2, p0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->context:Landroid/content/Context;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v0

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->pluginChecker:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onStoragePermissionGranted()V
    .locals 5

    iget-object v0, p0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->context:Landroid/content/Context;

    invoke-static {v0}, Lo/ld2;->r(Landroid/content/Context;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    iget-object v2, p0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->context:Landroid/content/Context;

    invoke-static {v2, v0, v1}, Lo/ld2;->C(Landroid/content/Context;J)V

    :cond_0
    return-void
.end method

.method public setLogger(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

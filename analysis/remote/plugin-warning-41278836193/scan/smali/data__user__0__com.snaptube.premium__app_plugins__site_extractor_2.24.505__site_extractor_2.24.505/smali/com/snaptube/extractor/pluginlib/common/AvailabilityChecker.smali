.class public Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt/a;


# static fields
.field public static final AVAILABILITY_BASE_URL:Ljava/lang/String; = "https://misc.api.thejeu.com/availability"

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

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->checkInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 10
    .line 11
    new-instance v0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker$a;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker$a;-><init>(Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->checkStart:Ljava/lang/Runnable;

    .line 17
    .line 18
    new-instance v0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker$b;

    .line 19
    .line 20
    invoke-direct {v0, p0}, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker$b;-><init>(Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->checkRemote:Ljava/lang/Runnable;

    .line 24
    .line 25
    new-instance v0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker$c;

    .line 26
    .line 27
    invoke-direct {v0, p0}, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker$c;-><init>(Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;)V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->checkDone:Ljava/lang/Runnable;

    .line 31
    .line 32
    new-instance v0, Landroid/os/Handler;

    .line 33
    .line 34
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 39
    .line 40
    .line 41
    iput-object v0, p0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->handler:Landroid/os/Handler;

    .line 42
    .line 43
    const/4 v0, 0x1

    .line 44
    iput v0, p0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->checkDelayFactor:I

    .line 45
    .line 46
    iget-object v1, p0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->checkInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 47
    .line 48
    const/4 v2, 0x0

    .line 49
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 50
    .line 51
    .line 52
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    .line 53
    .line 54
    invoke-direct {v1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 55
    .line 56
    .line 57
    iput-object v1, p0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    .line 58
    .line 59
    invoke-virtual {p0}, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->check()V

    .line 60
    .line 61
    .line 62
    if-eqz p1, :cond_0

    .line 63
    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    iput-object p1, p0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->context:Landroid/content/Context;

    .line 69
    .line 70
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->checkInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$100(Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->result:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1000(Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;)Ljava/util/concurrent/CountDownLatch;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$102(Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->result:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$200(Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->doCheck()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$300(Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->getNetworkCountryIso()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic access$400(Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->context:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$500(Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;IJ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->logSuc(IJ)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$600(Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->logFail(ILjava/lang/String;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$700(Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->checkDone:Ljava/lang/Runnable;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$800(Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->handler:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$900(Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->scheduleNextCheck()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private calculateRemoteCheckDuration()J
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-wide v2, p0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->remoteCheckStartTime:J

    .line 6
    .line 7
    sub-long/2addr v0, v2

    .line 8
    return-wide v0
.end method

.method private doCheck()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->context:Landroid/content/Context;

    .line 3
    .line 4
    invoke-static {v1, v0}, Ll/d;->w(Landroid/content/Context;Z)Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 11
    .line 12
    iput-object v1, p0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->result:Ljava/lang/Boolean;

    .line 13
    .line 14
    invoke-direct {p0}, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->isSessionNeedRefresh()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    iget-object v1, p0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->handler:Landroid/os/Handler;

    .line 21
    .line 22
    iget-object v2, p0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->checkDone:Ljava/lang/Runnable;

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    iget-object v1, p0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    .line 32
    .line 33
    :catch_0
    :cond_1
    iget-object v1, p0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->checkInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 34
    .line 35
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 36
    .line 37
    .line 38
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 39
    .line 40
    .line 41
    move-result-wide v0

    .line 42
    iput-wide v0, p0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->remoteCheckStartTime:J

    .line 43
    .line 44
    new-instance v0, Ljava/lang/Thread;

    .line 45
    .line 46
    iget-object v1, p0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->checkRemote:Ljava/lang/Runnable;

    .line 47
    .line 48
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method private getNetworkCountryIso()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->context:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-object v1

    .line 8
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->context:Landroid/content/Context;

    .line 9
    .line 10
    const-string v2, "phone"

    .line 11
    .line 12
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    const/4 v0, 0x0

    .line 28
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-eqz v2, :cond_1

    .line 33
    .line 34
    invoke-static {}, Lj/c;->d()Lj/c;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v1}, Lj/c;->f()Lj/a;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-interface {v1}, Lj/a;->i()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    if-eqz v2, :cond_2

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_2
    move-object v0, v1

    .line 54
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    if-eqz v1, :cond_3

    .line 59
    .line 60
    invoke-static {}, Lj/c;->d()Lj/c;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {v0}, Lj/c;->f()Lj/a;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-interface {v0}, Lj/a;->d()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    :cond_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    if-nez v1, :cond_4

    .line 77
    .line 78
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    :cond_4
    return-object v0
.end method

.method private getResultFormPlugin()Ljava/lang/Boolean;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->pluginChecker:Ljava/lang/Object;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return-object v1

    .line 7
    :cond_0
    const-class v0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v2, p0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->pluginChecker:Ljava/lang/Object;

    .line 14
    .line 15
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    if-ne v0, v2, :cond_1

    .line 24
    .line 25
    return-object v1

    .line 26
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->pluginChecker:Ljava/lang/Object;

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const-string v2, "isAvailable"

    .line 33
    .line 34
    invoke-virtual {v0, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iget-object v2, p0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->pluginChecker:Ljava/lang/Object;

    .line 39
    .line 40
    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    check-cast v0, Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    .line 46
    return-object v0

    .line 47
    :catchall_0
    return-object v1
.end method

.method private isSessionNeedRefresh()Z
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->context:Landroid/content/Context;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 8
    .line 9
    .line 10
    move-result-wide v2

    .line 11
    iget-object v0, p0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->context:Landroid/content/Context;

    .line 12
    .line 13
    invoke-static {v0}, Ll/d;->t(Landroid/content/Context;)J

    .line 14
    .line 15
    .line 16
    move-result-wide v4

    .line 17
    iget-object v0, p0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->context:Landroid/content/Context;

    .line 18
    .line 19
    invoke-static {v0}, Ll/d;->s(Landroid/content/Context;)J

    .line 20
    .line 21
    .line 22
    move-result-wide v6

    .line 23
    const-wide/16 v8, 0x0

    .line 24
    .line 25
    cmp-long v0, v4, v8

    .line 26
    .line 27
    if-lez v0, :cond_1

    .line 28
    .line 29
    cmp-long v0, v6, v8

    .line 30
    .line 31
    if-lez v0, :cond_1

    .line 32
    .line 33
    sub-long/2addr v4, v2

    .line 34
    const-wide/16 v2, 0x2

    .line 35
    .line 36
    div-long/2addr v6, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    cmp-long v0, v4, v6

    .line 38
    .line 39
    if-gez v0, :cond_1

    .line 40
    .line 41
    const/4 v1, 0x1

    .line 42
    :catchall_0
    :cond_1
    return v1
.end method

.method private logFail(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->calculateRemoteCheckDuration()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-static {p1, p2, p3, v0, v1}, Lcom/snaptube/extractor/pluginlib/common/d;->a(ILjava/lang/String;Ljava/lang/String;J)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private logSuc(IJ)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->calculateRemoteCheckDuration()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-static {p1, p2, p3, v0, v1}, Lcom/snaptube/extractor/pluginlib/common/d;->b(IJJ)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private scheduleNextCheck()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->checkDelayFactor:I

    .line 2
    .line 3
    mul-int/lit8 v0, v0, 0x2

    .line 4
    .line 5
    const/16 v1, 0x200

    .line 6
    .line 7
    if-le v0, v1, :cond_0

    .line 8
    .line 9
    const/16 v0, 0x200

    .line 10
    .line 11
    :cond_0
    iput v0, p0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->checkDelayFactor:I

    .line 12
    .line 13
    iget-object v1, p0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->handler:Landroid/os/Handler;

    .line 14
    .line 15
    iget-object v2, p0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->checkStart:Ljava/lang/Runnable;

    .line 16
    .line 17
    mul-int/lit16 v0, v0, 0x3e8

    .line 18
    .line 19
    int-to-long v3, v0

    .line 20
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method private updateContext(Landroid/content/Context;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->context:Landroid/content/Context;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iput-object p1, p0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->context:Landroid/content/Context;

    .line 13
    .line 14
    :cond_1
    :goto_0
    return-void
.end method

.method public static with(Landroid/content/Context;)Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;
    .locals 2

    .line 1
    sget-object v0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->instance:Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->instance:Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;

    .line 13
    .line 14
    invoke-direct {v1, p0}, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;-><init>(Landroid/content/Context;)V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->instance:Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    :goto_0
    monitor-exit v0

    .line 23
    goto :goto_2

    .line 24
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0

    .line 26
    :cond_1
    :goto_2
    sget-object v0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->instance:Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;

    .line 27
    .line 28
    invoke-direct {v0, p0}, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->updateContext(Landroid/content/Context;)V

    .line 29
    .line 30
    .line 31
    sget-object p0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->instance:Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;

    .line 32
    .line 33
    return-object p0
.end method


# virtual methods
.method public check()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->result:Ljava/lang/Boolean;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->handler:Landroid/os/Handler;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->checkStart:Ljava/lang/Runnable;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public checkAndWait(J)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->result:Ljava/lang/Boolean;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    return p1

    .line 7
    :cond_0
    invoke-virtual {p0}, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->check()V

    .line 8
    .line 9
    .line 10
    :try_start_0
    iget-object v0, p0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    .line 11
    .line 12
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 13
    .line 14
    invoke-virtual {v0, p1, p2, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 15
    .line 16
    .line 17
    move-result p1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    return p1

    .line 19
    :catch_0
    const/4 p1, 0x0

    .line 20
    return p1
.end method

.method public forceCheck()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->result:Ljava/lang/Boolean;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->result:Ljava/lang/Boolean;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->handler:Landroid/os/Handler;

    .line 15
    .line 16
    iget-object v1, p0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->checkStart:Ljava/lang/Runnable;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public getLastHttpStatusCode()I
    .locals 1

    .line 1
    sget v0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->sHttpStatus:I

    .line 2
    .line 3
    return v0
.end method

.method public isAvailable()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->context:Landroid/content/Context;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->context:Landroid/content/Context;

    invoke-static {v0}, LI/a;->c(Landroid/content/Context;)Z

    move-result v0

    xor-int/2addr v1, v0

    .line 3
    :cond_0
    invoke-virtual {p0, v1}, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->isAvailable(Z)Z

    move-result v0

    return v0
.end method

.method public isAvailable(Z)Z
    .locals 1

    .line 4
    invoke-direct {p0}, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->getResultFormPlugin()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->result:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    return p1

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->result:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public loadPluginImpl(Ljava/lang/ClassLoader;)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    :try_start_0
    const-class v2, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;

    .line 4
    .line 5
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-virtual {p1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const-string v2, "with"

    .line 14
    .line 15
    new-array v3, v1, [Ljava/lang/Class;

    .line 16
    .line 17
    const-class v4, Landroid/content/Context;

    .line 18
    .line 19
    aput-object v4, v3, v0

    .line 20
    .line 21
    invoke-virtual {p1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iget-object v2, p0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->context:Landroid/content/Context;

    .line 26
    .line 27
    new-array v1, v1, [Ljava/lang/Object;

    .line 28
    .line 29
    aput-object v2, v1, v0

    .line 30
    .line 31
    const/4 v0, 0x0

    .line 32
    invoke-virtual {p1, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    iput-object p1, p0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->pluginChecker:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :catchall_0
    move-exception p1

    .line 40
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 41
    .line 42
    .line 43
    :goto_0
    return-void
.end method

.method public onStoragePermissionGranted()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->context:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Ll/d;->t(Landroid/content/Context;)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    const-wide/16 v2, 0x0

    .line 8
    .line 9
    cmp-long v4, v0, v2

    .line 10
    .line 11
    if-lez v4, :cond_0

    .line 12
    .line 13
    iget-object v2, p0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->context:Landroid/content/Context;

    .line 14
    .line 15
    invoke-static {v2, v0, v1}, Ll/d;->D(Landroid/content/Context;J)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public setLogger(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.class public final Lcom/transsion/push/PushManager;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/push/PushManager$c;
    }
.end annotation


# static fields
.field public static final SHOW_STATUS_FAIL_NOTI_CLOSE:I = 0x6

.field public static final SHOW_STATUS_FAIL_PRIORITY:I = 0xc

.field public static final SHOW_STATUS_FAIL_REPEAT:I = 0xb

.field public static final SHOW_STATUS_SUCCESS:I

.field private static c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static d:Z


# instance fields
.field private a:Lcom/transsion/push/broadcast/PushBroadcastReceiver;

.field private b:Lcom/transsion/push/TPushListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/transsion/push/PushManager;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 8
    .line 9
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/push/PushManager$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/push/PushManager;-><init>()V

    return-void
.end method

.method private a()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method private b()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/transsion/push/PushManager;->a()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    .line 9
    .line 10
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 11
    .line 12
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lcom/transsion/push/PushManager;->a:Lcom/transsion/push/broadcast/PushBroadcastReceiver;

    .line 16
    .line 17
    if-nez v1, :cond_1

    .line 18
    .line 19
    new-instance v1, Lcom/transsion/push/broadcast/PushBroadcastReceiver;

    .line 20
    .line 21
    invoke-direct {v1}, Lcom/transsion/push/broadcast/PushBroadcastReceiver;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object v1, p0, Lcom/transsion/push/PushManager;->a:Lcom/transsion/push/broadcast/PushBroadcastReceiver;

    .line 25
    .line 26
    :cond_1
    :try_start_0
    invoke-static {}, Lyj/a;->a()Landroid/content/Context;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    iget-object v2, p0, Lcom/transsion/push/PushManager;->a:Lcom/transsion/push/broadcast/PushBroadcastReceiver;

    .line 31
    .line 32
    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catch_0
    move-exception v0

    .line 37
    sget-object v1, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    .line 38
    .line 39
    new-instance v2, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .line 43
    .line 44
    const-string v3, "registerReceiver fail, e:"

    .line 45
    .line 46
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {v1, v0}, Lcom/transsion/core/log/ObjectLogUtils;->i(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    :goto_0
    return-void
.end method

.method public static getInstance()Lcom/transsion/push/PushManager;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/push/PushManager$c;->a()Lcom/transsion/push/PushManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method


# virtual methods
.method public addCustomNotification(Lcom/transsion/push/bean/PushNotification;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/transsion/push/PushManager;->a()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-static {p1}, Lcom/transsion/push/utils/j;->a(Lcom/transsion/push/bean/PushNotification;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public getClientId(Lcom/transsion/push/IClientIdListener;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/transsion/push/PushManager;->a()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-static {}, Lcom/transsion/push/config/PushRepository;->getInstance()Lcom/transsion/push/config/PushRepository;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0, p1}, Lcom/transsion/push/config/PushRepository;->getClientId(Lcom/transsion/push/IClientIdListener;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public getDebug()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/transsion/push/PushManager;->a()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    return v0

    .line 9
    :cond_0
    invoke-static {}, Lcom/transsion/push/utils/PushUtils;->o()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public getIsSdkInitFinished()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/transsion/push/PushManager;->d:Z

    .line 2
    .line 3
    return v0
.end method

.method public getNotificationSwitch()Z
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/transsion/push/PushManager;->a()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    :try_start_0
    const-string v0, "sp_push"

    .line 10
    .line 11
    invoke-static {v0}, Lcom/transsion/core/utils/f;->e(Ljava/lang/String;)Lcom/transsion/core/utils/f;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v2, "sp_key_push_switch"

    .line 16
    .line 17
    const/4 v3, 0x1

    .line 18
    invoke-virtual {v0, v2, v3}, Lcom/transsion/core/utils/f;->c(Ljava/lang/String;Z)Z

    .line 19
    .line 20
    .line 21
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    return v0

    .line 23
    :catch_0
    return v1
.end method

.method public getPushListener()Lcom/transsion/push/TPushListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/push/PushManager;->b:Lcom/transsion/push/TPushListener;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTestEnv()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/transsion/push/PushManager;->a()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    return v0

    .line 9
    :cond_0
    invoke-static {}, Lcom/transsion/push/utils/PushUtils;->s()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public getToken(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/transsion/push/PushManager;->a()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return-object p1

    .line 9
    :cond_0
    invoke-static {}, Lcom/transsion/push/config/PushRepository;->getInstance()Lcom/transsion/push/config/PushRepository;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const-string v0, "push_token"

    .line 14
    .line 15
    const-string v1, ""

    .line 16
    .line 17
    invoke-virtual {p1, v0, v1}, Lcom/transsion/push/config/PushRepository;->getSpValue(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    check-cast p1, Ljava/lang/String;

    .line 22
    .line 23
    return-object p1
.end method

.method public init(Landroid/content/Context;)V
    .locals 5

    .line 15
    invoke-direct {p0}, Lcom/transsion/push/PushManager;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 16
    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 17
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lyj/a;->b(Landroid/content/Context;)V

    .line 18
    sget-object v2, Lcom/transsion/push/PushManager;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    .line 19
    :cond_1
    const-string v2, "https://api.twibida.com/tcm/v2/instance/"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 20
    new-instance v3, Lcom/transsion/push/PushManager$b;

    invoke-direct {v3, p0, p1}, Lcom/transsion/push/PushManager$b;-><init>(Lcom/transsion/push/PushManager;Landroid/content/Context;)V

    invoke-static {p1, v2, v3}, Lcom/transsion/gslb/GslbSdk;->init(Landroid/content/Context;[Ljava/lang/String;Lcom/transsion/gslb/GslbSdk$InitListener;)V

    .line 21
    sget-object v2, Lcom/transsion/push/PushManager;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 22
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/crypto/TCrypterSdk;->b(Landroid/content/Context;)V

    .line 23
    new-instance p1, Lcom/transsion/push/PushManager$4;

    invoke-direct {p1, p0}, Lcom/transsion/push/PushManager$4;-><init>(Lcom/transsion/push/PushManager;)V

    invoke-static {p1}, Lcom/transsion/push/utils/ThreadManager;->executeInBackground(Ljava/lang/Runnable;)V

    .line 24
    invoke-direct {p0}, Lcom/transsion/push/PushManager;->b()V

    .line 25
    sput-boolean v3, Lcom/transsion/push/PushManager;->d:Z

    .line 26
    sget-object p1, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sdk init time: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/core/log/ObjectLogUtils;->i(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 27
    sget-object v0, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init fail, e:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/transsion/core/log/ObjectLogUtils;->i(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 28
    sput-boolean p1, Lcom/transsion/push/PushManager;->d:Z

    :goto_0
    return-void
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/transsion/push/PushManager;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lyj/a;->b(Landroid/content/Context;)V

    .line 3
    sget-object v0, Lcom/transsion/push/PushManager;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 4
    :cond_1
    const-string v0, "https://api.twibida.com/tcm/v2/instance/"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 5
    new-instance v1, Lcom/transsion/push/PushManager$a;

    invoke-direct {v1, p0, p1}, Lcom/transsion/push/PushManager$a;-><init>(Lcom/transsion/push/PushManager;Landroid/content/Context;)V

    invoke-static {p1, v0, v1}, Lcom/transsion/gslb/GslbSdk;->init(Landroid/content/Context;[Ljava/lang/String;Lcom/transsion/gslb/GslbSdk$InitListener;)V

    .line 6
    sget-object v0, Lcom/transsion/push/PushManager;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/crypto/TCrypterSdk;->b(Landroid/content/Context;)V

    .line 9
    new-instance p1, Lcom/transsion/push/PushManager$2;

    invoke-direct {p1, p0, p2, p3, p4}, Lcom/transsion/push/PushManager$2;-><init>(Lcom/transsion/push/PushManager;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {p1}, Lcom/transsion/push/utils/ThreadManager;->executeInBackground(Ljava/lang/Runnable;)V

    .line 10
    invoke-direct {p0}, Lcom/transsion/push/PushManager;->b()V

    .line 11
    sput-boolean v1, Lcom/transsion/push/PushManager;->d:Z

    .line 12
    sget-object p1, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "sdk init time: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    sub-long/2addr p3, v2

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/transsion/core/log/ObjectLogUtils;->i(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 13
    sget-object p2, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "init fail, e:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/transsion/core/log/ObjectLogUtils;->i(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 14
    sput-boolean p1, Lcom/transsion/push/PushManager;->d:Z

    :goto_0
    return-void
.end method

.method public registerPushListener(Lcom/transsion/push/TPushListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/push/PushManager;->b:Lcom/transsion/push/TPushListener;

    .line 2
    .line 3
    return-void
.end method

.method public registerReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/transsion/push/PushManager;->a()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    :try_start_0
    sget-object v0, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    .line 9
    .line 10
    const-string v1, "registerReceiver --> "

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/transsion/core/log/ObjectLogUtils;->g(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    new-instance v0, Landroid/content/IntentFilter;

    .line 16
    .line 17
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v1, "tpush.intent.action.TPUSH_RECEIVER"

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const-string v1, "tpush.intent.action.INIT_COMPLETE"

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    .line 36
    .line 37
    :catch_0
    return-void
.end method

.method public setAppInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/transsion/push/PushManager;->a()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-static {}, Lcom/transsion/push/utils/PushUtils;->e()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {}, Lcom/transsion/push/utils/PushUtils;->f()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-nez v0, :cond_2

    .line 34
    .line 35
    invoke-static {}, Lcom/transsion/push/config/PushRepository;->getInstance()Lcom/transsion/push/config/PushRepository;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    const-string v1, "push_app_id"

    .line 40
    .line 41
    invoke-virtual {v0, v1, p1}, Lcom/transsion/push/config/PushRepository;->putSpValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    :cond_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    if-nez p1, :cond_3

    .line 49
    .line 50
    invoke-static {}, Lcom/transsion/push/config/PushRepository;->getInstance()Lcom/transsion/push/config/PushRepository;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    const-string v0, "push_app_key"

    .line 55
    .line 56
    invoke-virtual {p1, v0, p2}, Lcom/transsion/push/config/PushRepository;->putSpValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    :cond_3
    new-instance p1, Lcom/transsion/push/PushManager$6;

    .line 60
    .line 61
    invoke-direct {p1, p0}, Lcom/transsion/push/PushManager$6;-><init>(Lcom/transsion/push/PushManager;)V

    .line 62
    .line 63
    .line 64
    invoke-static {p1}, Lcom/transsion/push/utils/ThreadManager;->executeInBackground(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .line 66
    .line 67
    :catch_0
    return-void
.end method

.method public setNotificationSwitch(Z)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/transsion/push/PushManager;->a()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    :try_start_0
    const-string v0, "sp_push"

    .line 9
    .line 10
    invoke-static {v0}, Lcom/transsion/core/utils/f;->e(Ljava/lang/String;)Lcom/transsion/core/utils/f;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string v1, "sp_key_push_switch"

    .line 15
    .line 16
    invoke-virtual {v0, v1, p1}, Lcom/transsion/core/utils/f;->l(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    .line 19
    :catch_0
    return-void
.end method

.method public setPushConfig(Lcom/transsion/push/bean/PushConfig;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/transsion/push/PushManager;->a()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v0, Lcom/transsion/push/PushManager$5;

    .line 9
    .line 10
    invoke-direct {v0, p0, p1}, Lcom/transsion/push/PushManager$5;-><init>(Lcom/transsion/push/PushManager;Lcom/transsion/push/bean/PushConfig;)V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lcom/transsion/push/utils/ThreadManager;->executeInBackground(Ljava/lang/Runnable;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public subscribeToTopic(Ljava/lang/String;Lcom/transsion/push/ITopicListener;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/transsion/push/PushManager;->a()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-static {}, Lcom/transsion/push/config/PushRepository;->getInstance()Lcom/transsion/push/config/PushRepository;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0, p1, p2}, Lcom/transsion/push/config/PushRepository;->subscribeToTopic(Ljava/lang/String;Lcom/transsion/push/ITopicListener;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public trackArrive(J)V
    .locals 8

    .line 1
    invoke-direct {p0}, Lcom/transsion/push/PushManager;->a()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/transsion/push/tracker/Tracker;->getInstance()Lcom/transsion/push/tracker/Tracker;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const-string v5, ""

    .line 13
    .line 14
    const-string v6, ""

    .line 15
    .line 16
    const-string v7, "success"

    .line 17
    .line 18
    const/4 v4, 0x2

    .line 19
    move-wide v2, p1

    .line 20
    invoke-virtual/range {v1 .. v7}, Lcom/transsion/push/tracker/Tracker;->trackTarget(JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .line 22
    .line 23
    :catch_0
    return-void
.end method

.method public trackClick(J)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/transsion/push/PushManager;->a()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-static {}, Lcom/transsion/push/tracker/Tracker;->getInstance()Lcom/transsion/push/tracker/Tracker;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0, p1, p2}, Lcom/transsion/push/tracker/Tracker;->trackClick(J)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public trackConversion(J)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/transsion/push/PushManager;->a()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/transsion/push/tracker/Tracker;->getInstance()Lcom/transsion/push/tracker/Tracker;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0, p1, p2}, Lcom/transsion/push/tracker/Tracker;->trackConversion(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    :catch_0
    return-void
.end method

.method public trackShow(JI)V
    .locals 8

    .line 1
    invoke-direct {p0}, Lcom/transsion/push/PushManager;->a()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/transsion/push/tracker/Tracker;->getInstance()Lcom/transsion/push/tracker/Tracker;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 13
    .line 14
    .line 15
    move-result-wide v2

    .line 16
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v5

    .line 20
    invoke-static {}, Lyj/a;->a()Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-static {v0}, Lcom/transsion/push/utils/NotificationAssistUtils;->isOpenNotification(Landroid/content/Context;)Z

    .line 25
    .line 26
    .line 27
    move-result v6

    .line 28
    const/4 v4, 0x2

    .line 29
    move-wide v2, p1

    .line 30
    move v7, p3

    .line 31
    invoke-virtual/range {v1 .. v7}, Lcom/transsion/push/tracker/Tracker;->trackShow(JILjava/lang/String;ZI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .line 33
    .line 34
    :catch_0
    return-void
.end method

.method public unregisterReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/transsion/push/PushManager;->a()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p1, p2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    :catch_0
    return-void
.end method

.method public unsubscribeFromTopic(Ljava/lang/String;Lcom/transsion/push/ITopicListener;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/transsion/push/PushManager;->a()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-static {}, Lcom/transsion/push/config/PushRepository;->getInstance()Lcom/transsion/push/config/PushRepository;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0, p1, p2}, Lcom/transsion/push/config/PushRepository;->unsubscribeFromTopic(Ljava/lang/String;Lcom/transsion/push/ITopicListener;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public updateToken(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/transsion/push/PushManager;->a()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-static {p1}, Lcom/transsion/push/utils/PushUtils;->B(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

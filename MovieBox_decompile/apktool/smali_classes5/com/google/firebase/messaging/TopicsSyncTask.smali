.class Lcom/google/firebase/messaging/TopicsSyncTask;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/messaging/TopicsSyncTask$a;
    }
.end annotation


# static fields
.field private static final TOPIC_SYNC_TASK_LOCK:Ljava/lang/Object;

.field private static hasAccessNetworkStatePermission:Ljava/lang/Boolean;

.field private static hasWakeLockPermission:Ljava/lang/Boolean;


# instance fields
.field private final context:Landroid/content/Context;

.field private final metadata:Lcom/google/firebase/messaging/j0;

.field private final nextDelaySeconds:J

.field private final syncWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final topicsSubscriber:Lcom/google/firebase/messaging/c1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/firebase/messaging/TopicsSyncTask;->TOPIC_SYNC_TASK_LOCK:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method

.method constructor <init>(Lcom/google/firebase/messaging/c1;Landroid/content/Context;Lcom/google/firebase/messaging/j0;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/firebase/messaging/TopicsSyncTask;->topicsSubscriber:Lcom/google/firebase/messaging/c1;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/firebase/messaging/TopicsSyncTask;->context:Landroid/content/Context;

    .line 7
    .line 8
    iput-wide p4, p0, Lcom/google/firebase/messaging/TopicsSyncTask;->nextDelaySeconds:J

    .line 9
    .line 10
    iput-object p3, p0, Lcom/google/firebase/messaging/TopicsSyncTask;->metadata:Lcom/google/firebase/messaging/j0;

    .line 11
    .line 12
    const-string p1, "power"

    .line 13
    .line 14
    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Landroid/os/PowerManager;

    .line 19
    .line 20
    const/4 p2, 0x1

    .line 21
    const-string p3, "wake:com.google.firebase.messaging"

    .line 22
    .line 23
    invoke-virtual {p1, p2, p3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iput-object p1, p0, Lcom/google/firebase/messaging/TopicsSyncTask;->syncWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 28
    .line 29
    return-void
.end method

.method static synthetic access$000(Lcom/google/firebase/messaging/TopicsSyncTask;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/messaging/TopicsSyncTask;->isDeviceConnected()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic access$100()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/firebase/messaging/TopicsSyncTask;->isLoggable()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method static synthetic access$200(Lcom/google/firebase/messaging/TopicsSyncTask;)Lcom/google/firebase/messaging/c1;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/firebase/messaging/TopicsSyncTask;->topicsSubscriber:Lcom/google/firebase/messaging/c1;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$300(Lcom/google/firebase/messaging/TopicsSyncTask;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/firebase/messaging/TopicsSyncTask;->context:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method private static createPermissionMissingLog(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "Missing Permission: "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string p0, ". This permission should normally be included by the manifest merger, but may needed to be manually added to your manifest"

    .line 15
    .line 16
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method

.method private static hasAccessNetworkStatePermission(Landroid/content/Context;)Z
    .locals 3

    .line 1
    sget-object v0, Lcom/google/firebase/messaging/TopicsSyncTask;->TOPIC_SYNC_TASK_LOCK:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/google/firebase/messaging/TopicsSyncTask;->hasAccessNetworkStatePermission:Ljava/lang/Boolean;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    const-string v2, "android.permission.ACCESS_NETWORK_STATE"

    .line 9
    .line 10
    invoke-static {p0, v2, v1}, Lcom/google/firebase/messaging/TopicsSyncTask;->hasPermission(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    goto :goto_0

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    goto :goto_1

    .line 17
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    sput-object p0, Lcom/google/firebase/messaging/TopicsSyncTask;->hasAccessNetworkStatePermission:Ljava/lang/Boolean;

    .line 26
    .line 27
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    monitor-exit v0

    .line 32
    return p0

    .line 33
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    throw p0
.end method

.method private static hasPermission(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)Z
    .locals 1

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0

    .line 8
    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    if-nez p0, :cond_1

    .line 13
    .line 14
    const/4 p0, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_1
    const/4 p0, 0x0

    .line 17
    :goto_0
    if-nez p0, :cond_2

    .line 18
    .line 19
    const-string p2, "FirebaseMessaging"

    .line 20
    .line 21
    const/4 v0, 0x3

    .line 22
    invoke-static {p2, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 23
    .line 24
    .line 25
    move-result p2

    .line 26
    if-eqz p2, :cond_2

    .line 27
    .line 28
    invoke-static {p1}, Lcom/google/firebase/messaging/TopicsSyncTask;->createPermissionMissingLog(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    :cond_2
    return p0
.end method

.method private static hasWakeLockPermission(Landroid/content/Context;)Z
    .locals 3

    .line 1
    sget-object v0, Lcom/google/firebase/messaging/TopicsSyncTask;->TOPIC_SYNC_TASK_LOCK:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/google/firebase/messaging/TopicsSyncTask;->hasWakeLockPermission:Ljava/lang/Boolean;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    const-string v2, "android.permission.WAKE_LOCK"

    .line 9
    .line 10
    invoke-static {p0, v2, v1}, Lcom/google/firebase/messaging/TopicsSyncTask;->hasPermission(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    goto :goto_0

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    goto :goto_1

    .line 17
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    sput-object p0, Lcom/google/firebase/messaging/TopicsSyncTask;->hasWakeLockPermission:Ljava/lang/Boolean;

    .line 26
    .line 27
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    monitor-exit v0

    .line 32
    return p0

    .line 33
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    throw p0
.end method

.method private declared-synchronized isDeviceConnected()Z
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/messaging/TopicsSyncTask;->context:Landroid/content/Context;

    .line 3
    .line 4
    const-string v1, "connectivity"

    .line 5
    .line 6
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception v0

    .line 20
    goto :goto_2

    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    :goto_0
    if-eqz v0, :cond_1

    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    .line 25
    .line 26
    .line 27
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    const/4 v0, 0x1

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    const/4 v0, 0x0

    .line 33
    :goto_1
    monitor-exit p0

    .line 34
    return v0

    .line 35
    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    throw v0
.end method

.method private static isLoggable()Z
    .locals 4

    .line 1
    const-string v0, "FirebaseMessaging"

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    .line 6
    .line 7
    move-result v2

    .line 8
    if-nez v2, :cond_1

    .line 9
    .line 10
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 11
    .line 12
    const/16 v3, 0x17

    .line 13
    .line 14
    if-ne v2, v3, :cond_0

    .line 15
    .line 16
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 26
    :goto_1
    return v0
.end method


# virtual methods
.method public run()V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Wakelock"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/messaging/TopicsSyncTask;->context:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/firebase/messaging/TopicsSyncTask;->hasWakeLockPermission(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/firebase/messaging/TopicsSyncTask;->syncWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 10
    .line 11
    sget-wide v1, Lcom/google/firebase/messaging/e;->a:J

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 14
    .line 15
    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    :try_start_0
    iget-object v1, p0, Lcom/google/firebase/messaging/TopicsSyncTask;->topicsSubscriber:Lcom/google/firebase/messaging/c1;

    .line 18
    .line 19
    const/4 v2, 0x1

    .line 20
    invoke-virtual {v1, v2}, Lcom/google/firebase/messaging/c1;->o(Z)V

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, Lcom/google/firebase/messaging/TopicsSyncTask;->metadata:Lcom/google/firebase/messaging/j0;

    .line 24
    .line 25
    invoke-virtual {v1}, Lcom/google/firebase/messaging/j0;->g()Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-nez v1, :cond_2

    .line 30
    .line 31
    iget-object v1, p0, Lcom/google/firebase/messaging/TopicsSyncTask;->topicsSubscriber:Lcom/google/firebase/messaging/c1;

    .line 32
    .line 33
    invoke-virtual {v1, v0}, Lcom/google/firebase/messaging/c1;->o(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/google/firebase/messaging/TopicsSyncTask;->context:Landroid/content/Context;

    .line 37
    .line 38
    invoke-static {v0}, Lcom/google/firebase/messaging/TopicsSyncTask;->hasWakeLockPermission(Landroid/content/Context;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_1

    .line 43
    .line 44
    :try_start_1
    iget-object v0, p0, Lcom/google/firebase/messaging/TopicsSyncTask;->syncWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 45
    .line 46
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 47
    .line 48
    .line 49
    :catch_0
    :cond_1
    return-void

    .line 50
    :catchall_0
    move-exception v0

    .line 51
    goto/16 :goto_4

    .line 52
    .line 53
    :catch_1
    move-exception v1

    .line 54
    goto :goto_2

    .line 55
    :cond_2
    :try_start_2
    iget-object v1, p0, Lcom/google/firebase/messaging/TopicsSyncTask;->context:Landroid/content/Context;

    .line 56
    .line 57
    invoke-static {v1}, Lcom/google/firebase/messaging/TopicsSyncTask;->hasAccessNetworkStatePermission(Landroid/content/Context;)Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-eqz v1, :cond_4

    .line 62
    .line 63
    invoke-direct {p0}, Lcom/google/firebase/messaging/TopicsSyncTask;->isDeviceConnected()Z

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    if-nez v1, :cond_4

    .line 68
    .line 69
    new-instance v1, Lcom/google/firebase/messaging/TopicsSyncTask$a;

    .line 70
    .line 71
    invoke-direct {v1, p0, p0}, Lcom/google/firebase/messaging/TopicsSyncTask$a;-><init>(Lcom/google/firebase/messaging/TopicsSyncTask;Lcom/google/firebase/messaging/TopicsSyncTask;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1}, Lcom/google/firebase/messaging/TopicsSyncTask$a;->a()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 75
    .line 76
    .line 77
    iget-object v0, p0, Lcom/google/firebase/messaging/TopicsSyncTask;->context:Landroid/content/Context;

    .line 78
    .line 79
    invoke-static {v0}, Lcom/google/firebase/messaging/TopicsSyncTask;->hasWakeLockPermission(Landroid/content/Context;)Z

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    if-eqz v0, :cond_3

    .line 84
    .line 85
    :try_start_3
    iget-object v0, p0, Lcom/google/firebase/messaging/TopicsSyncTask;->syncWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 86
    .line 87
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2

    .line 88
    .line 89
    .line 90
    :catch_2
    :cond_3
    return-void

    .line 91
    :cond_4
    :try_start_4
    iget-object v1, p0, Lcom/google/firebase/messaging/TopicsSyncTask;->topicsSubscriber:Lcom/google/firebase/messaging/c1;

    .line 92
    .line 93
    invoke-virtual {v1}, Lcom/google/firebase/messaging/c1;->s()Z

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    if-eqz v1, :cond_5

    .line 98
    .line 99
    iget-object v1, p0, Lcom/google/firebase/messaging/TopicsSyncTask;->topicsSubscriber:Lcom/google/firebase/messaging/c1;

    .line 100
    .line 101
    invoke-virtual {v1, v0}, Lcom/google/firebase/messaging/c1;->o(Z)V

    .line 102
    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_5
    iget-object v1, p0, Lcom/google/firebase/messaging/TopicsSyncTask;->topicsSubscriber:Lcom/google/firebase/messaging/c1;

    .line 106
    .line 107
    iget-wide v2, p0, Lcom/google/firebase/messaging/TopicsSyncTask;->nextDelaySeconds:J

    .line 108
    .line 109
    invoke-virtual {v1, v2, v3}, Lcom/google/firebase/messaging/c1;->t(J)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 110
    .line 111
    .line 112
    :goto_0
    iget-object v0, p0, Lcom/google/firebase/messaging/TopicsSyncTask;->context:Landroid/content/Context;

    .line 113
    .line 114
    invoke-static {v0}, Lcom/google/firebase/messaging/TopicsSyncTask;->hasWakeLockPermission(Landroid/content/Context;)Z

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    if-eqz v0, :cond_6

    .line 119
    .line 120
    :goto_1
    :try_start_5
    iget-object v0, p0, Lcom/google/firebase/messaging/TopicsSyncTask;->syncWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 121
    .line 122
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_3

    .line 123
    .line 124
    .line 125
    goto :goto_3

    .line 126
    :goto_2
    :try_start_6
    const-string v2, "FirebaseMessaging"

    .line 127
    .line 128
    new-instance v3, Ljava/lang/StringBuilder;

    .line 129
    .line 130
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 131
    .line 132
    .line 133
    const-string v4, "Failed to sync topics. Won\'t retry sync. "

    .line 134
    .line 135
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    .line 151
    .line 152
    iget-object v1, p0, Lcom/google/firebase/messaging/TopicsSyncTask;->topicsSubscriber:Lcom/google/firebase/messaging/c1;

    .line 153
    .line 154
    invoke-virtual {v1, v0}, Lcom/google/firebase/messaging/c1;->o(Z)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 155
    .line 156
    .line 157
    iget-object v0, p0, Lcom/google/firebase/messaging/TopicsSyncTask;->context:Landroid/content/Context;

    .line 158
    .line 159
    invoke-static {v0}, Lcom/google/firebase/messaging/TopicsSyncTask;->hasWakeLockPermission(Landroid/content/Context;)Z

    .line 160
    .line 161
    .line 162
    move-result v0

    .line 163
    if-eqz v0, :cond_6

    .line 164
    .line 165
    goto :goto_1

    .line 166
    :catch_3
    :cond_6
    :goto_3
    return-void

    .line 167
    :goto_4
    iget-object v1, p0, Lcom/google/firebase/messaging/TopicsSyncTask;->context:Landroid/content/Context;

    .line 168
    .line 169
    invoke-static {v1}, Lcom/google/firebase/messaging/TopicsSyncTask;->hasWakeLockPermission(Landroid/content/Context;)Z

    .line 170
    .line 171
    .line 172
    move-result v1

    .line 173
    if-eqz v1, :cond_7

    .line 174
    .line 175
    :try_start_7
    iget-object v1, p0, Lcom/google/firebase/messaging/TopicsSyncTask;->syncWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 176
    .line 177
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_4

    .line 178
    .line 179
    .line 180
    :catch_4
    :cond_7
    throw v0
.end method

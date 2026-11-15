.class public final Lcom/hisavana/mintegral/check/MBridgeSDKManager;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hisavana/mintegral/check/MBridgeSDKManager$MBridgeSDKInitializeState;,
        Lcom/hisavana/mintegral/check/MBridgeSDKManager$ClassHolder;,
        Lcom/hisavana/mintegral/check/MBridgeSDKManager$MBridgeSDKInitializeListener;,
        Lcom/hisavana/mintegral/check/MBridgeSDKManager$DefaultSDKInitStatusListener;
    }
.end annotation


# static fields
.field private static e:Lcom/hisavana/mintegral/check/MBridgeSDKManager$MBridgeSDKInitializeState;


# instance fields
.field private volatile a:Ljava/lang/String;

.field private volatile b:Ljava/lang/String;

.field private volatile c:Lcom/hisavana/mintegral/check/MBridgeSDKManager$MBridgeSDKInitializeListener;

.field private d:Lcom/mbridge/msdk/MBridgeSDK;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    sget-object v0, Lcom/hisavana/mintegral/check/MBridgeSDKManager$MBridgeSDKInitializeState;->SDK_STATE_UN_INITIALIZE:Lcom/hisavana/mintegral/check/MBridgeSDKManager$MBridgeSDKInitializeState;

    sput-object v0, Lcom/hisavana/mintegral/check/MBridgeSDKManager;->e:Lcom/hisavana/mintegral/check/MBridgeSDKManager$MBridgeSDKInitializeState;

    return-void
.end method

.method synthetic constructor <init>(Lcom/hisavana/mintegral/check/MBridgeSDKManager$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/hisavana/mintegral/check/MBridgeSDKManager;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/hisavana/mintegral/check/MBridgeSDKManager$MBridgeSDKInitializeState;)Lcom/hisavana/mintegral/check/MBridgeSDKManager$MBridgeSDKInitializeState;
    .locals 0

    .line 1
    sput-object p0, Lcom/hisavana/mintegral/check/MBridgeSDKManager;->e:Lcom/hisavana/mintegral/check/MBridgeSDKManager$MBridgeSDKInitializeState;

    .line 2
    .line 3
    return-object p0
.end method

.method private b(Landroid/content/Context;ZLjava/util/Map;Lcom/hisavana/mintegral/check/MBridgeSDKManager$MBridgeSDKInitializeListener;)V
    .locals 4

    .line 1
    :try_start_0
    sput-boolean p2, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    .line 2
    .line 3
    invoke-static {}, Lcom/mbridge/msdk/out/MBridgeSDKFactory;->getMBridgeSDK()Lcom/mbridge/msdk/system/MBridgeSDKImpl;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    iput-object p2, p0, Lcom/hisavana/mintegral/check/MBridgeSDKManager;->d:Lcom/mbridge/msdk/MBridgeSDK;

    .line 8
    .line 9
    iget-object v0, p0, Lcom/hisavana/mintegral/check/MBridgeSDKManager;->b:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/hisavana/mintegral/check/MBridgeSDKManager;->a:Ljava/lang/String;

    .line 12
    .line 13
    const-string v2, ""

    .line 14
    .line 15
    invoke-interface {p2, v0, v1, v2}, Lcom/mbridge/msdk/MBridgeSDK;->getMBConfigurationMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    if-eqz p3, :cond_0

    .line 20
    .line 21
    invoke-interface {p3}, Ljava/util/Map;->isEmpty()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_0

    .line 26
    .line 27
    invoke-interface {p2, p3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catch_0
    move-exception p1

    .line 32
    goto :goto_1

    .line 33
    :cond_0
    :goto_0
    iget-object p3, p0, Lcom/hisavana/mintegral/check/MBridgeSDKManager;->d:Lcom/mbridge/msdk/MBridgeSDK;

    .line 34
    .line 35
    sget-boolean v0, Lcom/hisavana/common/bean/AppStartInfo;->userConsent:Z

    .line 36
    .line 37
    invoke-interface {p3, p1, v0}, Lcom/mbridge/msdk/MBridgeSDK;->setConsentStatus(Landroid/content/Context;I)V

    .line 38
    .line 39
    .line 40
    iget-object p3, p0, Lcom/hisavana/mintegral/check/MBridgeSDKManager;->d:Lcom/mbridge/msdk/MBridgeSDK;

    .line 41
    .line 42
    new-instance v0, Lcom/hisavana/mintegral/check/MBridgeSDKManager$DefaultSDKInitStatusListener;

    .line 43
    .line 44
    iget-object v1, p0, Lcom/hisavana/mintegral/check/MBridgeSDKManager;->a:Ljava/lang/String;

    .line 45
    .line 46
    iget-object v2, p0, Lcom/hisavana/mintegral/check/MBridgeSDKManager;->b:Ljava/lang/String;

    .line 47
    .line 48
    iget-object v3, p0, Lcom/hisavana/mintegral/check/MBridgeSDKManager;->c:Lcom/hisavana/mintegral/check/MBridgeSDKManager$MBridgeSDKInitializeListener;

    .line 49
    .line 50
    invoke-direct {v0, v1, v2, v3}, Lcom/hisavana/mintegral/check/MBridgeSDKManager$DefaultSDKInitStatusListener;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/hisavana/mintegral/check/MBridgeSDKManager$MBridgeSDKInitializeListener;)V

    .line 51
    .line 52
    .line 53
    invoke-interface {p3, p2, p1, v0}, Lcom/mbridge/msdk/MBridgeSDK;->init(Ljava/util/Map;Landroid/content/Context;Lcom/mbridge/msdk/out/SDKInitStatusListener;)V

    .line 54
    .line 55
    .line 56
    iget-object p2, p0, Lcom/hisavana/mintegral/check/MBridgeSDKManager;->d:Lcom/mbridge/msdk/MBridgeSDK;

    .line 57
    .line 58
    sget-boolean p3, Lcom/hisavana/common/bean/AppStartInfo;->ageRestrictedUser:Z

    .line 59
    .line 60
    invoke-interface {p2, p1, p3}, Lcom/mbridge/msdk/MBridgeSDK;->setCoppaStatus(Landroid/content/Context;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    .line 62
    .line 63
    goto :goto_2

    .line 64
    :goto_1
    sget-object p2, Lcom/hisavana/mintegral/check/MBridgeSDKManager$MBridgeSDKInitializeState;->SDK_STATE_INITIALIZE_FAILURE:Lcom/hisavana/mintegral/check/MBridgeSDKManager$MBridgeSDKInitializeState;

    .line 65
    .line 66
    sput-object p2, Lcom/hisavana/mintegral/check/MBridgeSDKManager;->e:Lcom/hisavana/mintegral/check/MBridgeSDKManager$MBridgeSDKInitializeState;

    .line 67
    .line 68
    iget-object p2, p0, Lcom/hisavana/mintegral/check/MBridgeSDKManager;->c:Lcom/hisavana/mintegral/check/MBridgeSDKManager$MBridgeSDKInitializeListener;

    .line 69
    .line 70
    if-eqz p2, :cond_1

    .line 71
    .line 72
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-interface {p4, p1}, Lcom/hisavana/mintegral/check/MBridgeSDKManager$MBridgeSDKInitializeListener;->onInitializeFailure(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    :cond_1
    :goto_2
    return-void
.end method

.method private c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    const-string p1, "context must not null"

    .line 5
    .line 6
    move-object v1, p1

    .line 7
    move p1, v0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p1, 0x1

    .line 10
    const-string v1, ""

    .line 11
    .line 12
    :goto_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 13
    .line 14
    .line 15
    move-result p2

    .line 16
    if-nez p2, :cond_2

    .line 17
    .line 18
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 19
    .line 20
    .line 21
    move-result p2

    .line 22
    if-eqz p2, :cond_1

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_1
    move v0, p1

    .line 26
    goto :goto_2

    .line 27
    :cond_2
    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-eqz p1, :cond_3

    .line 32
    .line 33
    const-string v1, "appKey or appID must not null"

    .line 34
    .line 35
    goto :goto_2

    .line 36
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string p2, " & appKey or appID must not null"

    .line 45
    .line 46
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    :goto_2
    if-nez v0, :cond_4

    .line 54
    .line 55
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    if-nez p1, :cond_4

    .line 60
    .line 61
    iget-object p1, p0, Lcom/hisavana/mintegral/check/MBridgeSDKManager;->c:Lcom/hisavana/mintegral/check/MBridgeSDKManager$MBridgeSDKInitializeListener;

    .line 62
    .line 63
    if-eqz p1, :cond_4

    .line 64
    .line 65
    sget-object p1, Lcom/hisavana/mintegral/check/MBridgeSDKManager$MBridgeSDKInitializeState;->SDK_STATE_INITIALIZE_FAILURE:Lcom/hisavana/mintegral/check/MBridgeSDKManager$MBridgeSDKInitializeState;

    .line 66
    .line 67
    sput-object p1, Lcom/hisavana/mintegral/check/MBridgeSDKManager;->e:Lcom/hisavana/mintegral/check/MBridgeSDKManager$MBridgeSDKInitializeState;

    .line 68
    .line 69
    iget-object p1, p0, Lcom/hisavana/mintegral/check/MBridgeSDKManager;->c:Lcom/hisavana/mintegral/check/MBridgeSDKManager$MBridgeSDKInitializeListener;

    .line 70
    .line 71
    invoke-interface {p1, v1}, Lcom/hisavana/mintegral/check/MBridgeSDKManager$MBridgeSDKInitializeListener;->onInitializeFailure(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    :cond_4
    return v0
.end method

.method public static getInstance()Lcom/hisavana/mintegral/check/MBridgeSDKManager;
    .locals 1

    .line 1
    invoke-static {}, Lcom/hisavana/mintegral/check/MBridgeSDKManager$ClassHolder;->a()Lcom/hisavana/mintegral/check/MBridgeSDKManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method


# virtual methods
.method public getAppID()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hisavana/mintegral/check/MBridgeSDKManager;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAppKey()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hisavana/mintegral/check/MBridgeSDKManager;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCurrentState()Lcom/hisavana/mintegral/check/MBridgeSDKManager$MBridgeSDKInitializeState;
    .locals 1

    .line 1
    sget-object v0, Lcom/hisavana/mintegral/check/MBridgeSDKManager;->e:Lcom/hisavana/mintegral/check/MBridgeSDKManager$MBridgeSDKInitializeState;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMBridgeSDK()Lcom/mbridge/msdk/MBridgeSDK;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hisavana/mintegral/check/MBridgeSDKManager;->d:Lcom/mbridge/msdk/MBridgeSDK;

    .line 2
    .line 3
    return-object v0
.end method

.method public declared-synchronized initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    monitor-enter p0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 14
    :try_start_0
    invoke-virtual/range {v0 .. v6}, Lcom/hisavana/mintegral/check/MBridgeSDKManager;->initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;Lcom/hisavana/mintegral/check/MBridgeSDKManager$MBridgeSDKInitializeListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/hisavana/mintegral/check/MBridgeSDKManager$MBridgeSDKInitializeListener;)V
    .locals 7

    monitor-enter p0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p4

    .line 17
    :try_start_0
    invoke-virtual/range {v0 .. v6}, Lcom/hisavana/mintegral/check/MBridgeSDKManager;->initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;Lcom/hisavana/mintegral/check/MBridgeSDKManager$MBridgeSDKInitializeListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7

    monitor-enter p0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 15
    :try_start_0
    invoke-virtual/range {v0 .. v6}, Lcom/hisavana/mintegral/check/MBridgeSDKManager;->initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;Lcom/hisavana/mintegral/check/MBridgeSDKManager$MBridgeSDKInitializeListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/hisavana/mintegral/check/MBridgeSDKManager$MBridgeSDKInitializeListener;)V
    .locals 7

    monitor-enter p0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v6, p5

    .line 16
    :try_start_0
    invoke-virtual/range {v0 .. v6}, Lcom/hisavana/mintegral/check/MBridgeSDKManager;->initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;Lcom/hisavana/mintegral/check/MBridgeSDKManager$MBridgeSDKInitializeListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    .line 13
    :try_start_0
    invoke-virtual/range {v0 .. v6}, Lcom/hisavana/mintegral/check/MBridgeSDKManager;->initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;Lcom/hisavana/mintegral/check/MBridgeSDKManager$MBridgeSDKInitializeListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;Lcom/hisavana/mintegral/check/MBridgeSDKManager$MBridgeSDKInitializeListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/hisavana/mintegral/check/MBridgeSDKManager$MBridgeSDKInitializeListener;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    sget-object v0, Lcom/hisavana/mintegral/check/MBridgeSDKManager;->e:Lcom/hisavana/mintegral/check/MBridgeSDKManager$MBridgeSDKInitializeState;

    sget-object v1, Lcom/hisavana/mintegral/check/MBridgeSDKManager$MBridgeSDKInitializeState;->SDK_STATE_INITIALIZING:Lcom/hisavana/mintegral/check/MBridgeSDKManager$MBridgeSDKInitializeState;

    if-ne v0, v1, :cond_1

    if-eqz p6, :cond_0

    .line 2
    const-string p1, "sdk is initializing"

    invoke-interface {p6, p1}, Lcom/hisavana/mintegral/check/MBridgeSDKManager$MBridgeSDKInitializeListener;->onInitializeFailure(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 3
    :cond_1
    :try_start_1
    iput-object p6, p0, Lcom/hisavana/mintegral/check/MBridgeSDKManager;->c:Lcom/hisavana/mintegral/check/MBridgeSDKManager$MBridgeSDKInitializeListener;

    .line 4
    invoke-direct {p0, p1, p2, p3}, Lcom/hisavana/mintegral/check/MBridgeSDKManager;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p6

    if-eqz p6, :cond_4

    .line 5
    sget-object p6, Lcom/hisavana/mintegral/check/MBridgeSDKManager;->e:Lcom/hisavana/mintegral/check/MBridgeSDKManager$MBridgeSDKInitializeState;

    sget-object v0, Lcom/hisavana/mintegral/check/MBridgeSDKManager$MBridgeSDKInitializeState;->SDK_STATE_INITIALIZE_SUCCESS:Lcom/hisavana/mintegral/check/MBridgeSDKManager$MBridgeSDKInitializeState;

    if-ne p6, v0, :cond_3

    iget-object p6, p0, Lcom/hisavana/mintegral/check/MBridgeSDKManager;->b:Ljava/lang/String;

    .line 6
    invoke-static {p6, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p6

    if-eqz p6, :cond_3

    iget-object p6, p0, Lcom/hisavana/mintegral/check/MBridgeSDKManager;->a:Ljava/lang/String;

    invoke-static {p6, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p6

    if-eqz p6, :cond_3

    .line 7
    iget-object p1, p0, Lcom/hisavana/mintegral/check/MBridgeSDKManager;->c:Lcom/hisavana/mintegral/check/MBridgeSDKManager$MBridgeSDKInitializeListener;

    if-eqz p1, :cond_2

    .line 8
    iget-object p1, p0, Lcom/hisavana/mintegral/check/MBridgeSDKManager;->c:Lcom/hisavana/mintegral/check/MBridgeSDKManager$MBridgeSDKInitializeListener;

    iget-object p2, p0, Lcom/hisavana/mintegral/check/MBridgeSDKManager;->a:Ljava/lang/String;

    iget-object p3, p0, Lcom/hisavana/mintegral/check/MBridgeSDKManager;->b:Ljava/lang/String;

    invoke-interface {p1, p2, p3}, Lcom/hisavana/mintegral/check/MBridgeSDKManager$MBridgeSDKInitializeListener;->onInitializeSuccess(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    .line 9
    :cond_3
    :try_start_2
    sput-object v1, Lcom/hisavana/mintegral/check/MBridgeSDKManager;->e:Lcom/hisavana/mintegral/check/MBridgeSDKManager$MBridgeSDKInitializeState;

    .line 10
    iput-object p2, p0, Lcom/hisavana/mintegral/check/MBridgeSDKManager;->a:Ljava/lang/String;

    .line 11
    iput-object p3, p0, Lcom/hisavana/mintegral/check/MBridgeSDKManager;->b:Ljava/lang/String;

    .line 12
    iget-object p2, p0, Lcom/hisavana/mintegral/check/MBridgeSDKManager;->c:Lcom/hisavana/mintegral/check/MBridgeSDKManager$MBridgeSDKInitializeListener;

    invoke-direct {p0, p1, p4, p5, p2}, Lcom/hisavana/mintegral/check/MBridgeSDKManager;->b(Landroid/content/Context;ZLjava/util/Map;Lcom/hisavana/mintegral/check/MBridgeSDKManager$MBridgeSDKInitializeListener;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_4
    monitor-exit p0

    return-void

    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method
